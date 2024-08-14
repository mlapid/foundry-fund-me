-include .env

build:; forge build

test:; forge test

deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --account sepoliaKey --sender 0x2063085196032277Fd5c4ab019ea89f53cC8b90A --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv