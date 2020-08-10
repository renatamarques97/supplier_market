import React, { Component } from "react";
import { Link, Redirect } from "react-router-dom";

class LoginClient extends Component {
  constructor(props){
    super(props);
  }

  handleLogin = (e) => {
    e.preventDefault();
    let currentComponent = this
    axios.post('/clients', {
      user: {
        email: document.getElementById("email").value,
        password: document.getElementById("password").value
      }
    })
    .then(function(response){
      currentComponent.props.updateCurrentUser(null);
      return <Redirect to={ "/" } />
    })
    .catch(function(error){
      console.log(error)
    })
  }

  render() {
    return (
      <div>
        <h2>Login Client</h2>
        <form>
          <input id="email" placeholder="email"/>
          <input id="password" placeholder="password"/>
          <button onClick={ this.handleLogin }>Login</button>
        </form>

        <Link to={ "/" }>
          Back
        </Link>
      </div>
    );
  };
};

export default LoginClient;
