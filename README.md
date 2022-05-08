# Mainnet Mixnode docker

1. Execute `./init-mixnode <nym address>`
2. Execute `sudo ufw allow 1789,1790,8000,22,80,443/tcp`
2. Start by `docker-compose up -d`
3. Bond it with [nym-wallet](https://nymtech.net/download/)
4. Check your node [Nym explorer](https://explorer.nymtech.net/)

For more information [https://nymtech.net/docs/stable/run-nym-nodes/nodes/mixnodes](https://nymtech.net/docs/stable/run-nym-nodes/nodes/mixnodes)

# Delegating

Delegate with [nym-wallet](https://nymtech.net/download/)


You can delegate to the [Crystal-Network mixnode](https://crystal-network.ch)

# Sandbox Mixnode docker

1. Execute `./init-mixnode <nymt address>`
2. Execute `sudo ufw allow 1789,1790,8000,22,80,443/tcp`
2. Start by `docker-compose up -d`
3. Bond it with [nym-wallet](https://github.com/nymtech/nym/releases/tag/nym-wallet-v1.0.0)
4. Check your node [Nym testnet explorer](https://sandbox-explorer.nymtech.net/)

For more information [https://nymtech.net/docs/stable/run-nym-nodes/nodes/mixnodes](https://nymtech.net/docs/stable/run-nym-nodes/nodes/mixnodes)

# Sandbox Gateway docker

1. Execute `./init-gateway <nymt address>`
2. Execute `sudo ufw allow 1789,9000,22,80,443/tcp`
2. Start by `docker-compose up -d`
3. Bond it with [nym-wallet](https://github.com/nymtech/nym/releases/tag/nym-wallet-v1.0.0)
4. Check your node [Nym testnet explorer](https://sandbox-explorer.nymtech.net/)

For more information [https://nymtech.net/docs/stable/run-nym-nodes/nodes/gateways](https://nymtech.net/docs/stable/run-nym-nodes/nodes/mixnodes)
