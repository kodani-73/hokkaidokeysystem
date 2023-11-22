# ベースとなるイメージの指定
FROM node:16

# 作業ディレクトリを設定
WORKDIR /usr/src/app

# package.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# 必要なパッケージをインストール
RUN npm install

# ソースコードをコピー
COPY . .

# ポート3000を開放
EXPOSE 3000

# Next.jsのアプリを起動
CMD ["npm", "run", "dev"]
