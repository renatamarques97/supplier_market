import React, { Component } from "react";
import { Link, Redirect } from "react-router-dom";

class SignUpProvider extends Component {
  constructor(props){
    super(props);
  }

  handleSignup = (e) => {
    e.preventDefault();
    let currentComponent = this
    axios.post('/providers', {
      user: {
        email: document.getElementById("email").value,
        password: document.getElementById("password").value,
        password_confirmation: document.getElementById("password_confirmation").value
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
        <h2>Signup Provider</h2>
        <form>
          <input id="email" placeholder="email"/>
          <input id="password" placeholder="password"/>
          <input id="password_confirmation" placeholder="retype password"/>
          <button onClick={ this.handleSignup }>Submit</button>
        </form>

        <Link to={ "/" }>
          Back
        </Link>
      </div>
    );
  };
};

export default SignUpProvider;
