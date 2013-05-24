# okayama-js 勉強会用カスタマイズ Bootstrap

<a href="http://getbootstrap.com">
  <img src="http://twitter.github.com/bootstrap/assets/img/bootstrap-docs-readme.png" width="100px">
</a>

[okayama-js](http://okayama-js.net/)での勉強会用のカスタマイズした[Bootstrap](http://twitter.github.io/bootstrap/)です。

## 利用法

### 必要な環境

- [Node.js](http://nodejs.org/)
- [LESS](http://lesscss.org/)

    npm install -g less

### 手順

#### 1.ダウンロード

    git clone https://github.com/maepon/okajs-bootstrap.git

または [zipを展開](https://github.com/maepon/okajs-bootstrap/archive/master.zip)

#### 2.nodeモジュールのインストール

    cd okajs-bootstrap
    npm install

※必要な場合はsudoをつける

#### 3.カスタマイズ

- LESSファイル一式は `less` ディレクトリ以下
- JavaScriptファイル一式は `javascript` ディレクトリ以下
- 画像ファイルは `img` ディレクトリ以下
- モックアップ用テンプレートは `hogan/templates` (カスタマイズ、詳細はセッションで)

#### 4.ビルド

##### Mac

    make

※ カスタマイズ済み。他のmakeの機能は未確認。

##### Windows

    make.bat

※ 今回のために作成、makeの機能のみ

`mackup` ディレクトリにビルドされた一式が作成されます。
