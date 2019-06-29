# Digital Hackathon

## Docker環境構築

- geth
    - Private net起動
        - Docker起動
        ```bash
        docker run --rm -it --entrypoint="sh" -p 8545:8545 -v /Users/asawakazuya/workspace/03.ethereum/DigitalHackathon/geth:/share ethereum/client-go
        ```
        - 初期化
        ```bash
        geth --datadir /share/geth/ init /share/geth/private_net/genesis.json
        ```
        - geth起動
        ```bash
        geth --networkid "10" --nodiscover --datadir /share/geth/private_net --rpc --rpcaddr "localhost" --rpcport "8545" --rpccorsdomain "*" --rpcapi "ethi,net,web3,personal" --targetgaslimit "20000000" console 2>>/share/geth/private_net/error.log --allow-insecure-unlock --unlock 0x59281691d27e1d422f73e575e7dba20c91ee856b --password /share/geth/private_net/password.txt
        ```
        - Account作成
        ```
        personal.newAccount("password")
        ```
        - password
        ```
        personal.unlockAccount(eth.accounts[0],"password",0)
        ```
        - mining
        ```
        miner.start(1)
        ```
    - 他コンテナからの通信(truffle)
        - コンテナ用意
        - truffleに最低限の環境構築
        - docker-compose
        - truffle migrate

    - （コンテナ通信不可の場合、）LocalPC(Remix)との通信疎通確認
    
- truffle
- Python

## Truffle
- Solidity開発
    - Time型の定義
- Deploy
    - 
    - 戻り値

## Python
- REST

-