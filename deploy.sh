#!/bin/bash
# 构建并发布到 coffeant.github.io (master 分支, GitHub Pages 自动更新)
set -e
cd "$(dirname "$0")"
npm install
npm run build
rm -rf /tmp/site-deploy
git clone --depth 1 -b master git@github.com:coffeant/coffeant.github.io.git /tmp/site-deploy
rsync -a --delete out/ /tmp/site-deploy/
cd /tmp/site-deploy
git add -A
git commit -m "deploy: $(date +%F' '%T)" --quiet || echo "无变化"
git push
