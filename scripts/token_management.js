#!/usr/bin/env node

require('dotenv').config(); // This loads the .env file at the beginning
const { Command } = require('commander');

const { initializeApp } = require('firebase/app');
const { getFirestore } = require('firebase/firestore');

// Your web app's Firebase configuration
const firebaseConfig = {
    apiKey: process.env.FIREBASE_API_KEY,
    authDomain: process.env.FIREBASE_AUTH_DOMAIN,
    databaseURL: process.env.FIREBASE_DATABASE_URL,
    projectId: process.env.FIREBASE_PROJECT_ID,
    storageBucket: process.env.FIREBASE_STORAGE_BUCKET,
    messagingSenderId: process.env.FIREBASE_MESSAGING_SENDER_ID,
    appId: process.env.FIREBASE_APP_ID,
    measurementId: process.env.FIREBASE_MEASUREMENT_ID

  };
// Initialize Firebase
const app = initializeApp(firebaseConfig);

// Get a Firestore instance
const db = getFirestore(app);

const { doc, setDoc } = require('firebase/firestore');

const addTokenToDatabase = async (network, contract, symbol, image, name, precision) => {
    const id = `${network}-${contract}-${symbol}`;
    const tokenRef = doc(db, 'tokens', network, 'tokens', id);
      const tokenData = {
      network,
      contract,
      symbol,
      image,
      name,
      precision,
      id
    };
  

    try {
        await setDoc(tokenRef, tokenData);
        console.log(`Token ${id} added successfully to Firestore!`);
      } catch (error) {
        console.error(`Failed to add token to Firestore: ${error.message}`);
      }
            
  };
  
  const program = new Command();

  program
    .command('add_token')
    .description('Add a new token to the database')
    .requiredOption('-n, --network <network>', 'Network the token is on')
    .requiredOption('-c, --contract <contract>', 'Contract address of the token')
    .requiredOption('-s, --symbol <symbol>', 'Symbol of the token')
    .option('-i, --image <image>', 'Image URL of the token', '')
    .requiredOption('-na, --name <name>', 'Name of the token')
    .requiredOption('-p, --precision <precision>', 'Precision of the token')
    .action(async (options) => {
        const network = options.network
        if (network != "telos" && network != "telosTestnet" && network != "eos" && network != "eosTestnet") {
            console.log("Invalid network")
            return
        }
      await addTokenToDatabase(network, options.contract, options.symbol, options.image, options.name, parseInt(options.precision))
      console.log("done.")
      return "done."

    });
  const fs = require('fs');
  const path = require('path');

  program
    .command('add_all_tokens')
    .description('Add all tokens from a JSON file to the database')
    .action(async () => {
      const filePath = path.join(__dirname, 'tokens.json');
      try {
        const data = fs.readFileSync(filePath, 'utf8');
        const tokens = JSON.parse(data);
        for (const token of tokens) {
          const { network, contract, symbol, image, name, precision } = token;
          if (network != "telos" && network != "telosTestnet" && network != "eos" && network != "eosTestnet") {
            console.log(`Skipping token with invalid network: ${network}`);
            continue;
          }
          await addTokenToDatabase(network, contract, symbol, image, name, parseInt(precision));
          console.log(`Token ${symbol} added successfully.`);
        }
        console.log("All tokens processed.");
      } catch (error) {
        console.error(`Failed to read or process tokens from file: ${error.message}`);
      }
    });

  program.parse(process.argv);
