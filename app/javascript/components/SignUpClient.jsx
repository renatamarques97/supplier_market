import React, { Component } from "react";
import { Link, Redirect } from "react-router-dom";
import axios from "axios"

class SignUpClient extends Component {
  constructor(props){
    super(props);
  }

  handleSignup = (e) => {
    e.preventDefault();

    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    axios.post('/clients', {
      authenticity_token: csrfToken,
      client: {
        name: document.getElementById("name").value,
        telephone: document.getElementById("telephone").value,
        cnpj: document.getElementById("cnpj").value,
        email: document.getElementById("email").value,
        password: document.getElementById("password").value,
        password_confirmation: document.getElementById("password_confirmation").value
      }
    })
    .then(function(response){
      return <Redirect to={ "/" } />
    })
    .catch(function(error){
      console.log(error);
    })
  }

  render() {
    return (
      <div>
        <h2>Signup Client</h2>
        <form>
          <input id="name" placeholder="name" />
          <input id="telephone" placeholder="telephone" />
          <input id="cnpj" placeholder="cnpj" />
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

export default SignUpClient;
