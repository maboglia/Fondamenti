#!/usr/bin/env bash
saluta() {
    local nome="${1:-studente}"
    printf 'Ciao, %s!\n' "$nome"
}
saluta "${1:-Mauro}"
