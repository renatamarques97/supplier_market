import React, { Component, Fragment } from "react";
import { Link } from "react-router-dom";
import Header from "./Header"
import axios from "axios"

class Home extends Component {
  constructor(props) {
    super(props);

    this.state = {
      currentUser: null
    };
  }

  componentDidMount(){
    let currentComponent = this

    axios.get('/users/check_for_user', {})
    .then(function(response){
      if(response.data){
        currentComponent.setState({
          currentUser: response.data
        })
      } else {
        currentComponent.setState({
          currentUser: null
        })
      }
    })
    .catch(function(error){
      console.log(error);
    })
  }

  updateCurrentUser = (user) => {
    this.setState({
      currentUser: user
    })
  }

  render(){
    return (
      <Fragment>
        <p className="navbar-text float-right">
          <Header />
        </p>
      </Fragment>
    );
  }
}

export default Home;
