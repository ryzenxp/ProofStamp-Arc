# ProofStamp

A decentralized document proof and verification dApp built with Solidity, Hardhat, Ethers.js, and a lightweight frontend.

## Description

ProofStamp allows users to register document hashes on-chain and later verify their authenticity. Instead of storing files directly on the blockchain, only cryptographic hashes are stored, making the application secure, privacy-friendly, and cost-efficient.

## Features

* Connect MetaMask wallet
* Register document hashes
* Verify document hashes
* View document owner
* View registration timestamp
* Permanent on-chain records
* Lightweight smart contract
* Simple frontend interface
* No DAO
* No Vault

---

## Project Structure

```text
proofstamp/
│
├── contracts/
│   └── ProofStamp.sol
│
├── scripts/
│   └── deploy.js
│
├── frontend/
│   ├── index.html
│   ├── app.js
│   ├── style.css
│   └── abi.js
│
├── hardhat/
│   ├── hardhat.config.js
│   ├── package.json
│   └── .env
│
└── README.md
```

---

## Smart Contract Functions

### registerDocument(bytes32 hash)

Registers a document hash on the blockchain.

#### Parameters

| Parameter | Type    |
| --------- | ------- |
| hash      | bytes32 |

#### Requirements

* Hash must not already exist.

---

### verifyDocument(bytes32 hash)

Verifies a document hash.

#### Returns

| Name      | Type    |
| --------- | ------- |
| exists    | bool    |
| owner     | address |
| timestamp | uint256 |

---

## Installation

Install dependencies:

```bash
npm install
```

---

## Compile Contract

```bash
npx hardhat compile
```

---

## Deploy Contract

```bash
npx hardhat run scripts/deploy.js --network sepolia
```

---

## Environment Setup

Create a `.env` file:

```env
RPC_URL=YOUR_RPC_URL
PRIVATE_KEY=YOUR_PRIVATE_KEY
```

---

## Frontend Setup

After deployment:

1. Copy the deployed contract address.
2. Open `frontend/abi.js`.
3. Replace:

```javascript
const CONTRACT_ADDRESS =
"PASTE_DEPLOYED_CONTRACT_ADDRESS";
```

with:

```javascript
const CONTRACT_ADDRESS =
"0xYourContractAddress";
```

---

## Running the Frontend

Open:

```text
frontend/index.html
```

in your browser.

Or serve locally:

```bash
npx serve frontend
```

---

## Usage

### Register a Document

1. Generate a SHA-256 hash of a document.
2. Connect your wallet.
3. Paste the hash.
4. Click **Register**.
5. Confirm the transaction.

### Verify a Document

1. Paste a document hash.
2. Click **Verify**.
3. View:

   * Registration status
   * Owner address
   * Timestamp

---

## Example Output

```json
{
  "exists": true,
  "owner": "0x1234567890abcdef",
  "timestamp": "1712345678"
}
```

---

## Security

* Files are never stored on-chain.
* Only hashes are recorded.
* Records cannot be modified after registration.
* Duplicate registrations are prevented.
* Ownership is tied to wallet addresses.

---

## Technology Stack

### Blockchain

* Solidity 0.8.20

### Development

* Hardhat
* Node.js

### Frontend

* HTML
* CSS
* JavaScript

### Web3

* Ethers.js v6

---

## Future Enhancements

* File upload with automatic hashing
* PDF proof certificates
* IPFS integration
* Multi-chain support
* Batch document registration

---

## License

MIT License

Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files to deal in the Software without restriction.
