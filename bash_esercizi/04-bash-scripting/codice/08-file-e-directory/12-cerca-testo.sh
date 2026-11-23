#!/usr/bin/env bash
# Cerca "Bash" in un file dimostrativo
file="testo-laboratorio.txt"
cat > "$file" <<'EOF'
Bash è una shell
Linux è un sistema operativo
Impariamo Bash
Gli script automatizzano attività
EOF
grep -n -- "Bash" "$file"
