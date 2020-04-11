import React from "react";
import {BrowserRouter as Router, Route, Switch} from "react-router-dom";
import Home from "../components/home";

// To add more pages, declare a route in this file and match it to the component you want to render for that page.

export default (
    <Router>
        <Switch>
            <Route path="/" exact component={Home}/>
        </Switch>
    </Router>
);