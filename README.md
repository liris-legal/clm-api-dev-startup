# clm-api-dev-startup
clm-api-hogeの実行に必要なデータ、起動スクリプト

## Requirements
- pip
- alembic
- psql
- docker
- docker-compose

## How to setup
1. `clone git@github.com:liris-legal/clm-api-dev-startup.git`
2. `cd clm-api-dev-startup`
3. `. setup.sh`
4. `. start.sh`
5. `. init-db.sh`  # 初回のみ実行

しばらくしてから `http://localhost:8080/docs` をブラウザで実行するとSwagger UIが見れると成功です。

次回から`start.sh`のみ実行してください。

コンテナの停止には`stop.sh`が使えます。

適宜`clm-api-*`内の.envファイルを確認してローカルで使用しているポートがあれば変更してください。