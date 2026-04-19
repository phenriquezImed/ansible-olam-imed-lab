#!/bin/bash

OUT="/home/ansible_usr/ansible-olam-imed/inventories/imed/hosts.ini"
BASE="/home/ansible_usr"

> "$OUT"

echo "# ===== PRO =====" >> "$OUT"
for f in $BASE/PRO/*/inventory; do
  echo "" >> "$OUT"
  echo "# --- $f ---" >> "$OUT"
  cat "$f" >> "$OUT"
done

echo "" >> "$OUT"
echo "# ===== QA =====" >> "$OUT"
cat $BASE/QA/inventory >> "$OUT"

echo "" >> "$OUT"
echo "# ===== DEV =====" >> "$OUT"
cat $BASE/DEV/inventory >> "$OUT"

echo "Inventario consolidado generado en $OUT"
