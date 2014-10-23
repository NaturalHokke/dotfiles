# クリーンインストールから
## sshの設定
> Githubからdotfiles取ってくるので

ssh-keygen  
生成した公開鍵をGithubに登録

## AppStore
AppStoreからしかインストール出来ない奴をインストール  
「購入済み」を確認して一通り入れれば良い。Xcodeは必須。  
CommandLineToolsをインストール `xcode-select --install` して  
`Agreeing to the Xcode/iOS license.` Xcodeを起動しておく。

# dotfilesの適用
## bootstrap.sh
`curl https://raw.githubusercontent.com/NaturalHokke/dotfiles/master/bootstrap.sh | sh`

## editor
```bash
$ curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
$ apm star --install
```

## iTerm2
Preferences -> General -> Preferences check -> `~` select
