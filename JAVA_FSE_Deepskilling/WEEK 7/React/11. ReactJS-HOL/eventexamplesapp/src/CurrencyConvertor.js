import React, { Component } from 'react';

class CurrencyConvertor extends Component {
  constructor(props) {
    super(props);
    this.state = {
      amount: '',
    };
  }

  handleChange = (event) => {
    this.setState({ amount: event.target.value });
  };

  handleSubmit = () => {
    const inr = parseFloat(this.state.amount);
    const euroRate = 80; // Conversion rate: 1 Euro = ₹80 (as per screenshot)
    const result = inr * euroRate;

    alert(`Converting to Euro Amount is ${result}`);
  };

  render() {
    return (
      <div>
        <h2 style={{ color: 'green' }}>Currency Convertor!!!</h2>

        <label>
          Amount:
          <input
            type="text"
            value={this.state.amount}
            onChange={this.handleChange}
          />
        </label>
        <br /><br />

        <label>
          Currency:
          <input type="text" value="Euro" readOnly />
        </label>
        <br /><br />

        <button onClick={this.handleSubmit}>Submit</button>
      </div>
    );
  }
}

export default CurrencyConvertor;
