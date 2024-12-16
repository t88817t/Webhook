# ベースイメージを指定
FROM node:18

# アプリケーションディレクトリの作成
WORKDIR /app

# package.json と package-lock.json をコンテナにコピー
COPY package*.json ./

# 依存関係のインストール
RUN npm install

# アプリケーションのソースコードをコピー
COPY . .

# アプリケーションの実行
CMD ["npm", "start"]
