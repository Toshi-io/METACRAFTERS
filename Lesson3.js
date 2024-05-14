const hre = require("hardhat");

async function main() {
  const EventTest = await hre.ethers.getContractFactory("MathContract");
  const eventTest = await EventTest.deploy();

  await eventTest.deployed();

  eventTest.on("AddEvent", (result, message) => {
    console.log(`New Add event: ${message}the result is ${result}`);
  });

  eventTest.on("SubtractEvent", (result, message) => {
    console.log(`New Subtract event: ${message}the result is ${result}`);
  });

  eventTest.on("MultiplyEvent", (result, message) => {
    console.log(`New Multiply event: ${message}the result is ${result}`);
  });

  console.log(`Contract deployed to ${eventTest.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
