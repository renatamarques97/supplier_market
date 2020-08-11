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

  async componentDidMount(){
    let currentComponent = this

    await axios.get('/check_logged', {})
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
          <Header currentUser={this.state.currentUser}/>
        </p>
      </Fragment>
    );
  }
}

export default Home;
