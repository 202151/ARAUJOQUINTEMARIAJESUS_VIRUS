# Script para abrir archivos múltiples veces

$wordPath = "c:\Users\MARIA JESUS\Downloads\VIRUS_AL_REPOSITORIO\Word\virus_word.doc.txt"
$excelPath = "c:\Users\MARIA JESUS\Downloads\VIRUS_AL_REPOSITORIO\Excel\virus_excel.xls.txt"

# Verificar que los archivos existen
if (-not (Test-Path $wordPath) -or -not (Test-Path $excelPath)) {
    Write-Host "Error: Uno o ambos archivos no existen."
    exit 1
}

# Abrir cada archivo 5 veces
for ($i = 1; $i -le 5; $i++) {
    Start-Process notepad.exe -ArgumentList $wordPath
    Start-Process notepad.exe -ArgumentList $excelPath
    Start-Sleep -Milliseconds 500  # Pequeña pausa entre aperturas
}

Write-Host "Se han abierto los archivos 5 veces."