# Inlämningsuppgift 1 
i kursen _Scripting och automatisering_ vid Axel Weudelskolan i Kalmar

## Beskrivning
Det här powershell-scriptet skapar automatiskt en mappstruktur utifrån ett namn som användaren själv anger. Skriptet använder en egen funktion _(Skapa-Struktur)_ och i den används _try/catch_ för att hantera fel, exempelvis om mappen redan finns. 

**Strukturen som skapas:**
* en huvudmapp
* tre undermappar: logs, scripts och temp
* en loggfil med dagens datum
* en tidsstämpel i loggfilen när strukturen skapades

## Hur man kör scriptet
1. Starta Powershell
2. Navigera till mappen där scriptet ligger
3. Kör scriptet genom att skriva: .\strukturverktyg.ps1

## Reflektion
Det var roligt och intressant att lära sig om hur man automatiserar skapandet av en mappstruktur i powershell samt hur funktioner används i script. Det var även lärorikt att förstå hur man kan hantera fel med hjälp av try/catch och hur return kan användas för att stoppa funktionen när något går fel.
