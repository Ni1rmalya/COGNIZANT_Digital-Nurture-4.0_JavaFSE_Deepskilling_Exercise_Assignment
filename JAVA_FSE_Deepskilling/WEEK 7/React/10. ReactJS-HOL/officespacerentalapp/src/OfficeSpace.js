import React from 'react';

function OfficeSpace() {
  const element = "Office Space";

  const sr = "https://hubble.imgix.net/listings/uploads/spaces/4854/landmark_chancerylane-095-Edit.jpg?auto=format%2Ccompress&ar=4%3A3&fit=crop&q=30&w=1680";
  const jsxatt = <img src={sr} width="25%" height="25%" alt="Office Space" />;

  const ItemName = { Name: "DBS", Rent: 50000, Address: "Chennai" };

  let colors = [];
  if (ItemName.Rent <= 60000) {
    colors.push('textRed');
  } else {
    colors.push('textGreen');
  }

  return (
    <div className="App">
      <h1 className="heading">{element}, at Affordable Range</h1>

      <div className="container">
        {jsxatt}

        <h2 className="bold">Name: {ItemName.Name}</h2>
        <h3 className={colors[0]}>Rent: Rs. {ItemName.Rent}</h3>
        <h3 className="address">Address: {ItemName.Address}</h3>
      </div>
    </div>
  );
}

export default OfficeSpace;
