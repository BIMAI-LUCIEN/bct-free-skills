# Installation automatique des Skills BCT (Windows PowerShell)
$ErrorActionPreference = "Stop"
$Targets = @(
  "$env:USERPROFILE\.claude\skills",
  "$env:USERPROFILE\.agents\skills",
  "$env:USERPROFILE\.gemini\config\skills"
)
foreach ($Target in $Targets) {
  New-Item -ItemType Directory -Force -Path $Target | Out-Null
  Copy-Item -Path "$PSScriptRoot\skills\*" -Destination $Target -Recurse -Force
  Write-Host "Skills BCT installés dans $Target" -ForegroundColor Green
}
