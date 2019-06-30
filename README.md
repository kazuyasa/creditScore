# 

## 信用スコア情報操作方法

- Docker起動
```bash
docker-compose up
```
- ブロックチェーン保存の信用スコア情報操作
  - Create
  ```bash
  curl -H "Content-Type: application/json" --request POST -d'{"userId":"0","name":"sample","score":1000}' http://localhost:5000/blockchain/create
  ```

  - Get
  ```bash
  curl -H "Content-Type: application/json" --request POST -d'{"userId":"0"}' http://localhost:5000/blockchain/get
  ```