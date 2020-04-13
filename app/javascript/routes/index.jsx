import React from "react";
import {BrowserRouter as Router, Route, Switch} from "react-router-dom";
import Home from "../components/home";
import Recipes from '../components/recipes'
import Recipe from '../components/recipie'
// To add more pages, declare a route in this file and match it to the component you want to render for that page.

export default (
    <Router>
        <Switch>
            <Route path="/" exact component={Home}/>
            <Route path="/recipes" exact component={Recipes} />
            <Route path="/recipe/:id" exact component={Recipe} />
        </Switch>
    </Router>
);