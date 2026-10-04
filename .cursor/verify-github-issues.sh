#!/usr/bin/env bash
set -euo pipefail

repo="${GITHUB_REPOSITORY:-tfandkusu/osamaranai}"

if [[ -z "${GH_TOKEN:-}" && -z "${GITHUB_TOKEN:-}" ]]; then
  echo "GitHub Issue API: GH_TOKEN 未設定（組み込みトークンのみ）"
  echo "  Issue の作成・参照には環境シークレット GH_TOKEN が必要です。"
  echo "  設定: https://cursor.com/dashboard/cloud-agents/environments/e/57e1abcb-a940-11f1-b532-320a589b8025"
  exit 0
fi

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub Issue API: gh CLI が見つかりません"
  exit 0
fi

if gh issue list --repo "${repo}" --limit 1 >/dev/null 2>&1; then
  echo "GitHub Issue API: GH_TOKEN により Issue 操作が可能です"
else
  echo "GitHub Issue API: GH_TOKEN は設定されていますが Issue 操作に失敗しました"
  echo "  トークンに Issues: Read and write 権限があるか確認してください。"
fi
