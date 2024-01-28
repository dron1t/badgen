#!/bin/bash

# Ścieżka do pliku z tekstem
TEXT_FILE="slowa.txt"

# Ścieżka do pliku CSV, który zostanie utworzony
CSV_FILE="output.csv"

# Tworzenie pustego pliku CSV, jeśli nie istnieje
> "$CSV_FILE"

# Pętla dla 1000 iteracji
for i in $(seq 1 1000)
do
    # Inicjalizacja zmiennej do przechowywania linii
    lines=""

    # Losowanie i dodawanie linii
    for j in $(seq 1 $i)
    do
        # Losowanie jednej linii i dodanie do zmiennej
        line=$(shuf -n 1 "$TEXT_FILE")
        lines+="$line "
    done

    # Zapisanie linii do pliku CSV
    echo "MT700, $lines" >> "$CSV_FILE"
done