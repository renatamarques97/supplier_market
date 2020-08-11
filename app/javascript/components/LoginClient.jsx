import React, { Component } from "react";
import { Link, Redirect } from "react-router-dom";
import axios from "axios"

class LoginClient extends Component {
  constructor(props){
    super(props);
  }

  handleLogin = (e) => {
    e.preventDefault();

    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    axios.post('/clients/sign_in', {
      authenticity_token: csrfToken,
      client: {
        email: document.getElementById("email").value,
        password: document.getElementById("password").value
      }
    })
    .then(function(response){
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
