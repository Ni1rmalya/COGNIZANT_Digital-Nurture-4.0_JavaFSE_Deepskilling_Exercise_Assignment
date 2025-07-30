import React, { Component } from 'react';

class EventExample extends Component {
  constructor(props) {
    super(props);
    this.state = {
      counter: 0
    };
  }

  increment = () => {
    this.setState({ counter: this.state.counter + 1 });
    alert("Hello! Member !");
  };

  decrement = () => {
    this.setState({ counter: this.state.counter - 1 });
  };

  sayWelcome = () => {
    alert("Welcome !");
  };

  clickOnMe = () => {
    alert("I was clicked !");
  };

  render() {
    return (
      <div>
        <h2>{this.state.counter}</h2> {}

        <div>
          <button onClick={this.increment}>Increment</button>
        </div>

        <div style={{ marginTop: '5px' }}>
          <button onClick={this.decrement}>Decrement</button>
        </div>

        <div style={{ marginTop: '10px' }}>
          <button onClick={this.sayWelcome}>Say Welcome</button>
        </div>

        <div style={{ marginTop: '5px' }}>
          <button onClick={this.clickOnMe}>Click on me</button>
        </div>
      </div>
    );
  }
}

export default EventExample;
