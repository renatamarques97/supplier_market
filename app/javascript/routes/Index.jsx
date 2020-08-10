import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Home from "../components/Home";
import LoginClient from "../components/LoginClient";
import LoginProvider from "../components/LoginProvider";
import SignUpClient from "../components/SignUpClient";
import SignUpProvider from "../components/SignUpProvider";

export default (
  <Router>
    <Switch>
      <Route path="/"                  exact component={ Home } />
      <Route path="/clients/login"     exact component={ LoginClient } />
      <Route path="/providers/login"   exact component={ LoginProvider } />
      <Route path="/clients/sign_up"   exact component={ SignUpClient } />
      <Route path="/providers/sign_up" exact component={ SignUpProvider } />
    </Switch>
  </Router>
);
