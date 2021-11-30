import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import reportWebVitals from './reportWebVitals';
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import {
  Navigation,
  Footer,
  Main_Page,
  Schedule_Detail,
  Schedule_Planner,
} from "./components";

ReactDOM.render(
  <Router>
    <Navigation />
    <Switch>
      <Route path="/Schedule Planner"><Schedule_Planner /></Route>
      <Route path="/Schedule Detail"><Schedule_Detail /></Route>
      <Route path="/"><Main_Page /></Route>
    </Switch>

    <Footer />
    
  </Router>,
  document.getElementById("root")
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
