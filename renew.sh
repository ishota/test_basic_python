#! /bin/bash

# git cloneしたリポジトリ名を取得
CURRENT=$(cd "$(dirname "$0")" || exit;pwd)
DIR_NAME=$(echo "$CURRENT" | sed -e 's/.*\/\([^\/]*\)$/\1/')

# .gitディレクトリが存在する場合は削除する
if [ -d "$CURRENT"/.git ]; then
    rm -rf "$CURRENT"/.git
fi

# compose.ymlとREADME.mdを書き換え
sed -i ".bak" -e "s/test_basic_python/$DIR_NAME/g" .devcontainer/compose.yml
sed -i ".bak" -e "s/test_basic_python/$DIR_NAME/g" README.md

# バックアップファイルができてしまうので削除
rm .devcontainer/compose.yml.bak
rm README.md.bak

# 新規リポジトリとしてinitialize
git init
