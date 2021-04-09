import React, { useEffect, useState } from "react";
import Autocomplete from "@material-ui/lab/Autocomplete";
import { IconButton, TextField } from "@material-ui/core";
import { Paper } from "@material-ui/core";
import SwapVertIcon from "@material-ui/icons/SwapVert";
import { searchStyles } from "./search.style";
import { mainService } from "../../../shared/service/main.service";

interface Props {
  data: any;
}

const Search: React.FC<Props> = (props: Props) => {
  const classes = searchStyles();
  const [stations, setStations] = useState<any>([]);
  const [search, setSearch] = useState<any>({ from: undefined, to: undefined });

  useEffect(() => {
    console.log("search change", search);
    if (search.from && search.to) {
      mainService
        .getRoutes({ from: search.from.id, to: search.to.id })
        .then((response: any) => {})
        .catch((error: any) => console.log("error", error));
    }
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
    </Paper>
  );
};

export default Search;
