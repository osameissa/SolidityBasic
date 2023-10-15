const ethers = require("ethers")
// const solc = require("solc")
const fs = require("fs-extra")
require("dotenv").config()

async function main() {
    // First, compile this!
    // And make sure to have your ganache network up!
    // The old way can be seen below:
    // let provider = new ethers.providers.JsonRpcProvider(process.env.RPC_URL)
    // On ether 6 and above, you should use like this
    let provider = new ethers.JsonRpcProvider(process.env.RPC_URL)
    // let provider = new ethers.providers.JsonRpcProvider(process.env.RPC_URL)
    let wallet = new ethers.Wallet(process.env.PRIVATE_KEY, provider)
    // const encryptedJson = fs.readFileSync("./.encryptedKey.json", "utf8");
    // let wallet = new ethers.Wallet.fromEncryptedJsonSync(
    //   encryptedJson,
    //   process.env.PRIVATE_KEY_PASSWORD
    // );
    // wallet = wallet.connect(provider);
    const abi = fs.readFileSync("./SimpleStorage_sol_SimpleStorage.abi", "utf8")
