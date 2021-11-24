import React from "react";
import { BrowserRouter as Router, Route, Switch} from "react-router-dom";
import {Navigation, Footer, Main_Page, Schedule_Detail, Schedule_Planner} from "./components";
function App(){
  return (
    <div className="App">
      <Router>
        <Navigation />
        <Switch>
          <Route path="/" exact component = {() => <Main_Page />} />
          <Route path="Schedule Planner" exact component = {() => <Schedule_Planner />} />
          <Route path="Schedule Detail" exact component = {() => <Schedule_Detail />} />
        </Switch>
        <Footer />
      </Router>
    </div>
  );
}

export default App;
