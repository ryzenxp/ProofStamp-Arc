async function main() {
  const Contract = await ethers.getContractFactory("ProofStamp");
  const contract = await Contract.deploy();
  await contract.waitForDeployment();
  console.log("Contract:", await contract.getAddress());
}
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
