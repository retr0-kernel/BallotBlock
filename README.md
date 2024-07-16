# Decentralized Election Voting System

This project is a decentralized application (DApp) for an election voting system built on the Ethereum blockchain. The system allows users to vote in a secure and transparent manner, ensuring that votes are immutable and publicly verifiable.

## Table of Contents
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)

## Features
- **Secure Voting**: Ensures that each voter can vote only once.
- **Transparency**: All votes are publicly verifiable on the Ethereum blockchain.
- **Decentralization**: No single point of failure; voting is handled by smart contracts.
- **Immutability**: Votes cannot be changed once cast.

## Prerequisites
Before you begin, ensure you have met the following requirements:
- Node.js and npm installed
- Truffle framework installed globally (`npm install -g truffle`)
- Ganache installed for local Ethereum blockchain (`npm install -g ganache-cli`)
- MetaMask extension installed in your browser

## Installation
1. Clone the repository:
    ```sh
    git clone https://github.com/retr0-kernel/Voting-System.git
    cd Voting-System
    ```

2. Install dependencies:
    ```sh
    npm install
    ```

3. Compile the smart contracts:
    ```sh
    truffle compile
    ```

4. Migrate the smart contracts to the local blockchain:
    ```sh
    truffle migrate
    ```

5. Run the development server:
    ```sh
    npm start
    ```

## Usage
1. Start Ganache to run a local Ethereum blockchain:
    ```sh
    ganache-cli
    ```

2. Open your browser and connect MetaMask to the local blockchain (usually `http://127.0.0.1:8545`).

3. Import one of the Ganache accounts into MetaMask.

4. Open the application in your browser (usually `http://localhost:3000`).

5. Use the application to register candidates and cast votes.

