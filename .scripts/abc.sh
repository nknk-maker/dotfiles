#!/bin/bash

# 引数のチェック
if [ $# -ne 1 ]; then
  echo "Usage: $0 <contest_number>"
  exit 1
fi

# 引数の contest_number を取得
contest_number=$1

# ディレクトリの作成
mkdir -p ~/work/abc/abc${contest_number}

# 作成したディレクトリに移動
cd ~/work/abc/abc${contest_number}

# oj-prepare の実行
oj-prepare https://atcoder.jp/contests/abc${contest_number}

