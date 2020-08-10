import React, { Component } from "react";
import { Link, Redirect } from "react-router-dom";

class LoginProvider extends Component {
  constructor(props){
    super(props);
  }

  handleLogin = (e) =>  {
    e.preventDefault();
    let currentComponent = this
    axios.post('/providers', {
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
        <h2>Login Provider</h2>
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

export default LoginProvider;
