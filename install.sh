#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/DariuszCiesielski/polish-agent-skills.git"
SKILLS_DIR="${HOME}/.claude/skills"
TEMP_DIR=$(mktemp -d)

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

cleanup() { rm -rf "$TEMP_DIR"; }
trap cleanup EXIT

echo ""
echo -e "${BLUE}╔═══════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║  Polish Agent Skills — instalacja             ║${NC}"
echo -e "${BLUE}║  15 skilli marketingowych, SEO i sprzedażowych ║${NC}"
echo -e "${BLUE}╚═══════════════════════════════════════════════╝${NC}"
echo ""

# Prereqs
command -v git &>/dev/null || { echo -e "${RED}✗ Git wymagany. Zainstaluj: https://git-scm.com${NC}"; exit 1; }
echo -e "${GREEN}✓ Git znaleziony${NC}"

# Clone
echo -e "${BLUE}→ Pobieranie skilli...${NC}"
git clone --depth 1 "$REPO_URL" "$TEMP_DIR/repo" 2>/dev/null || {
    echo -e "${RED}✗ Błąd pobierania. Sprawdź połączenie z internetem.${NC}"; exit 1
}

# Install skills
mkdir -p "$SKILLS_DIR"
COUNT=0

for category_dir in "$TEMP_DIR/repo/skills/"*/; do
    [ -d "$category_dir" ] || continue
    for skill_dir in "$category_dir"*/; do
        [ -d "$skill_dir" ] || continue
        [ -f "$skill_dir/SKILL.md" ] || continue
        skill_name=$(basename "$skill_dir")
        target_dir="$SKILLS_DIR/$skill_name"
        mkdir -p "$target_dir"
        cp -r "$skill_dir"* "$target_dir/"
        COUNT=$((COUNT + 1))
        echo -e "${GREEN}  ✓ ${skill_name}${NC}"
    done
done

echo ""
echo -e "${GREEN}╔═══════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║  Zainstalowano $COUNT skilli!                     ║${NC}"
echo -e "${GREEN}╚═══════════════════════════════════════════════╝${NC}"
echo ""
echo -e "  ${BLUE}Lokalizacja:${NC} $SKILLS_DIR"
echo ""
echo -e "  ${BLUE}Przykłady użycia w Claude Code:${NC}"
echo "    • \"napisz copy na landing page\" → aktywuje copywriting"
echo "    • \"zrób audyt SEO strony\" → aktywuje seo"
echo "    • \"napisz sekwencję email onboarding\" → aktywuje email-sequence"
echo "    • \"przygotuj cold email do prospekta\" → aktywuje cold-email"
echo "    • \"zaplanuj content na kwartał\" → aktywuje content-strategy"
echo ""
echo -e "  ${BLUE}Dokumentacja:${NC} https://github.com/DariuszCiesielski/polish-agent-skills"
echo -e "  ${BLUE}Więcej narzędzi:${NC} https://aiwbiznesie.online"
echo ""
