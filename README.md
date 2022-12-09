# test_basic_python

## 環境構築手順

(あとで整理する)

はじめに以下を実行
```bash
# 保存したいリポジトリ名でクローン
git clone リポジトリ名 sample

# リポジトリ名に合わせて情報を書き換え
$ ./renew.sh
```

リポジトリ名を合わせた空のリモートリポジトリを作成し以下を実行
```bash
# initial commitを生成
$ git add -A
$ git commit -m "initial commit"

# gitにリモートリポジトリ加えてpush
$ git remote add git@github.com:ユーザ名/リポジトリ名
$ git push -u origin main

```