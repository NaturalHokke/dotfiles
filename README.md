# Mac環境構築手順

## bootstrap.sh
https://github.com/NaturalHokke/dotfiles/master/bootstrap.sh  
だけ直接落としてきて、あとは全部やっちゃう

## homebrew のインストール
[ここ](http://brew.sh/index_ja.html)に載ってるインストールコマンドを実行  
記述時点(2014-09-16)では以下のコマンドでインストール出来る

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## git のインストール
各種設定ファイル等をgitで取ってくるので先にインストール

```bash
$ brew install git
```

## dotfiles の取得
用意してある各種設定ファイル(dotfiles)を取得

```bash
git clone git@github.com:NaturalHokke/dotfiles /Users/hokke/dotfiles
```
