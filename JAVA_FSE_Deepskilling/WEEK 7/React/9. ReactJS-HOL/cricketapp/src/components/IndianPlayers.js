import React from 'react';

const IndianPlayers = () => {
  // Create odd players with label and base name (number will be added dynamically)
  const oddPlayersBase = [
    { label: 'First', name: 'Sachin' },
    { label: 'Third', name: 'Virat' },
    { label: 'Fifth', name: 'Yuvaraj' },
  ];

  const evenPlayersBase = [
    { label: 'Second', name: 'Dhoni' },
    { label: 'Fourth', name: 'Rohit' },
    { label: 'Sixth', name: 'Raina' },
  ];

  // Dynamically add the number to name
  const oddPlayers = oddPlayersBase.map((player, index) => ({
    label: player.label,
    name: `${player.name}${2 * index + 1}`, // 1, 3, 5
  }));

  const evenPlayers = evenPlayersBase.map((player, index) => ({
    label: player.label,
    name: `${player.name}${2 * (index + 1)}`, // 2, 4, 6
  }));

  // Destructuring (as required by your assignment)
  const [odds, evens] = [oddPlayers, evenPlayers];

  // Merged player list using spread operator
  const mergedPlayers = [
    'Mr. First Player',
    'Mr. Second Player',
    'Mr. Third Player',
    'Mr. Fourth Player',
    'Mr. Fifth Player',
    'Mr. Sixth Player',
  ];

  return (
    <div>
      <h2>Odd Players</h2>
      <ul>
        {odds.map((player, index) => (
          <li key={index}>{player.label} : {player.name}</li>
        ))}
      </ul>
<hr></hr>
      <h2>Even Players</h2>
      <ul>
        {evens.map((player, index) => (
          <li key={index}>{player.label} : {player.name}</li>
        ))}
      </ul>
<hr></hr>
      <h2>List of Indian Players Merged:</h2>
      <ul>
        {mergedPlayers.map((player, index) => (
          <li key={index}>{player}</li>
        ))}
      </ul>
    </div>
  );
};

export default IndianPlayers;
