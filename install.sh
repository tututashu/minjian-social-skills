#!/usr/bin/env bash
# minjian-social-skills 一键安装
# 用法: curl -fsSL https://raw.githubusercontent.com/tututashu/minjian-social-skills/main/install.sh | bash
# 可选环境变量: TARGET_DIR=~/.claude/skills bash install.sh
set -euo pipefail

REPO="https://github.com/tututashu/minjian-social-skills"
SKILLS=(minjian-social minjian-person-strategies minjian-conversation-skills minjian-social-etiquette minjian-letter-formulas minjian-ceremony-speeches)

# 目标目录：优先用户指定，其次自动探测已存在的 skills 目录
if [ -n "${TARGET_DIR:-}" ]; then
  DEST="$TARGET_DIR"
elif [ -d "$HOME/.claude/skills" ]; then
  DEST="$HOME/.claude/skills"
elif [ -d "$HOME/.workbuddy/skills" ]; then
  DEST="$HOME/.workbuddy/skills"
else
  DEST="$HOME/.claude/skills"
fi

mkdir -p "$DEST"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "==> 下载 $REPO"
git clone --depth 1 -q "$REPO" "$TMP/repo"

echo "==> 安装到 $DEST"
for s in "${SKILLS[@]}"; do
  if [ -d "$DEST/$s" ]; then
    echo "    覆盖已有 $s"
    rm -rf "$DEST/$s"
  fi
  cp -R "$TMP/repo/$s" "$DEST/$s"
  echo "    ✓ $s"
done

echo ""
echo "完成！重启 Agent 会话后生效。"
echo "试试：「用民间社交应对：给长辈写信怎么开头」"
