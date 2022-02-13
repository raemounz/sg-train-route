import React from "react";
import { CssBaseline, ThemeProvider } from "@mui/material";

import "./App.css";
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
