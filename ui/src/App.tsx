import React from "react";
import "./App.scss";
import CssBaseline from "@material-ui/core/CssBaseline";
import { ThemeProvider } from "@material-ui/core";
import theme from "./shared/theme";
import Main from "./main/Main";

const App: React.FC = () => {
  return (
    <div className="App">
      <CssBaseline />
      <ThemeProvider theme={theme}>
        <Main />
      </ThemeProvider>
    </div>
  );
};

export default App;
