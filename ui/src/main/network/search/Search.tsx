import React, { useEffect, useState } from "react";
import Autocomplete from "@material-ui/lab/Autocomplete";
import {
  Button,
  CircularProgress,
  IconButton,
  TextField,
} from "@material-ui/core";
import { Paper } from "@material-ui/core";
import SwapVertIcon from "@material-ui/icons/SwapVert";
import { searchStyles } from "./search.style";
import { mainService } from "../../../shared/service/main.service";
import moment from "moment";

interface Props {
  data: any;
  onSearchResults: (nodes: string[]) => void;
}

const Search: React.FC<Props> = (props: Props) => {
  const classes = searchStyles();
  const [stations, setStations] = useState<any>([]);
  const emptySearch = { from: undefined, to: undefined };
  const [search, setSearch] = useState<any>(emptySearch);
  const [inProgress, setInProgress] = useState(false);
  const [searchResult, setSearchResult] = useState<any>(undefined);

  useEffect(() => {
    if (search.from && search.to) {
      setInProgress(true);
      setSearchResult(undefined);
      mainService
        .getRoutes({ from: search.from.id, to: search.to.id })
        .then((response: any) => {
          setSearchResult(response.data);
          props.onSearchResults(response.data.nodes);
          setInProgress(false);
        })
        .catch((error: any) => console.log("error", error));
    } else {
      props.onSearchResults([]);
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [search]);

  useEffect(() => {
    setStations(
      props.data.nodes.sort((a: any, b: any) => a.label.localeCompare(b.label))
    );
  }, [props.data]);

  const swapSearch = () => {
    const _search = { ...search };
    const _temp = search.from;
    _search.from = search.to;
    _search.to = _temp;
    setSearch(_search);
  };

  const getTravelTime = (minutes: any) => {
    const duration = moment.duration(minutes, "minutes");
    const hours = duration.hours();
    const mins = duration.minutes();
    if (hours > 0) {
      return `${hours} hr ${mins} min`;
    }
    return `${mins} min`;
  };

  const Selection = ({ label, onChange, value }) => {
    return (
      <Autocomplete
        options={stations}
        value={value}
        getOptionLabel={(option: any) => option.label}
        className={classes.input}
        autoHighlight={true}
        onChange={onChange}
        renderInput={(params: any) => (
          <TextField
            {...params}
            label={label}
            variant="outlined"
            margin="dense"
          />
        )}
      />
    );
  };

  return (
    <Paper className={classes.container}>
      <div className={classes.title}>Singapore Train Route</div>
      <Selection
        label="From Station"
        value={search.from}
        onChange={(event: any, value: any) =>
          setSearch({ ...search, from: value })
        }
      />
      <IconButton
        style={{ margin: "auto" }}
        color="primary"
        size="small"
        onClick={swapSearch}
      >
        <SwapVertIcon />
      </IconButton>
      <Selection
        label="To Station"
        value={search.to}
        onChange={(event: any, value: any) =>
          setSearch({ ...search, to: value })
        }
      />
      <Button
        size="small"
        color="primary"
        disabled={!search.from && !search.to}
        className={classes.reset}
        onClick={() => {
          setSearch(emptySearch);
          setSearchResult(undefined);
        }}
      >
        Reset
      </Button>
      {inProgress && <CircularProgress style={{ margin: "auto" }} />}
      {searchResult && (
        <>
          <div className={classes.travelTimeTitle}>Travel Time</div>
          <div className={classes.travelTime}>
            {getTravelTime(searchResult.totalCost)}
          </div>
        </>
      )}
    </Paper>
  );
};

export default Search;
