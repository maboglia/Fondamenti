#!/usr/bin/env bash
# Crea dati dimostrativi, poi usa una pipeline
cat > eventi.txt <<'EOF'
INFO avvio servizio
WARNING spazio ridotto
ERROR connessione fallita
INFO servizio pronto
ERROR timeout
EOF
grep 'ERROR' eventi.txt | wc -l > conteggio-errori.txt
printf 'Numero di eventi ERROR: '
cat conteggio-errori.txt
