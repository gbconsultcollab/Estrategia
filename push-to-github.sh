#!/bin/bash
# ─────────────────────────────────────────────────────────────
# SCRIPT: push-to-github.sh
# Execute uma vez na sua máquina (Mac/Linux) ou WSL (Windows)
# Pré-requisito: ter gh (GitHub CLI) instalado e autenticado
#   brew install gh && gh auth login
# ─────────────────────────────────────────────────────────────

set -e

REPO_NAME="IArobot"
REMOTE_DIR="$(pwd)"

echo "→ Criando repositório privado $REPO_NAME no GitHub..."
gh repo create "$REPO_NAME" --private --source="$REMOTE_DIR" --remote=origin --push

echo ""
echo "✓ Repositório criado e push feito!"
echo "→ URL: https://github.com/$(gh api user -q .login)/$REPO_NAME"
echo ""
echo "→ Agora cadastre a Deploy Key pública no repositório:"
echo "  https://github.com/$(gh api user -q .login)/$REPO_NAME/settings/keys/new"
