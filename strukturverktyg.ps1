# Inlämningsuppgift 1 i kursen Scripting och Automatisering

# Funktion för skapandet av mappstrukturen

function Skapa-Struktur {
    param (
        [string]$namn
    )
    
    try {
        # Skapa en ny mapp med namnet som användaren angav
        New-Item -ItemType Directory -Name $namn -ErrorAction Stop
        Write-Host "Mappen $namn har skapats."
    }
    catch {
        # Felhantering om mappen redan finns
        Write-Host "Fel: Mappen $namn finns redan."
        return
    }
    # Skapa undermappar i mappen enligt följande

    New-Item -ItemType Directory -Path "$namn/logs"
    New-Item -ItemType Directory -Path "$namn/scripts"
    New-Item -ItemType Directory -Path "$namn/temp"

    # Hämta dagens datum för att kunna inkludera det i filen

    $datum = Get-Date -Format "yyyy-MM-dd"

    # Skapa en fil i mappen /logs

    New-Item -ItemType File -Path "$namn/logs/log-$datum.txt"

    # Skapa en text-sträng till loggfilen

    $loggtext = "Struktur skapad: $(Get-Date)"

    Add-Content -Path "$namn/logs/log-$datum.txt" -Value $loggtext

}

# Fråga användaren efter ett namn

$namn = Read-Host "Hej, vänligen ange ett namn på din nya mapp:"

Skapa-Struktur -namn $namn