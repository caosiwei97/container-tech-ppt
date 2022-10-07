
# 当发生错误时中止脚本
set -e

# 构建
pnpm build

# cd 到构建输出的目录下 
cd dist

git init
git add -A
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:caosiwei97/container-tech-ppt.git main:gh-pages

cd -