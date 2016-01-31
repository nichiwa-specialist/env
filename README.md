# スペシャリスト研修 開発環境セットアップ用プロジェクト

スペシャリスト研修で使用する開発環境のセットアップを行います。

## セットアップ手順

1. 次のどちらかの方法でこのリポジトリの内容を取得し、
    * 右上にあるダウンロードボタンから[このリポジトリをダウンロード](https://github.com/nichiwa-specialist/env/archive/master.zip)して解凍
    * gitクライアントを使用して[このリポジトリ](https://github.com/nichiwa-specialist/env.git)をチェックアウト
0. install.batを右クリックして「管理者として実行」する。

## install.batでインストールするもの

chocolatey
: windows上の環境設定を自動化するためのプログラム。  
  プログラムのリストを定義しておくと、インストールされていないものだけインストールする。

GitHub Desktop
: Gitクライアントの一つ。  
  BitBucketとの連携は無く機能も限定されているが、Github Flowで進める分にはとても扱いやすい

Atom
: GitHub社の出しているエディタ。  
  Markdown記法のプレビューができ、goの開発環境としても使用可能。

JDK8
: Java開発用のコマンド群

gradle
: Javaをビルドするツールのひとつ

intellij IDEA Community
: AndroidやGAE/goなど、さまざまな開発に利用できるJava製のIDE。
