<# Simulated device compliance script for Zero Trust.

Usage example:
  .\device-compliance.ps1 -DomainJoined -FirewallEnabled -AntivirusEnabled
#>

param(
    [switch]$DomainJoined,
    [switch]$FirewallEnabled,
    [switch]$AntivirusEnabled
)

$score = 0
if ($DomainJoined)     { $score += 40 }
if ($FirewallEnabled)  { $score += 30 }
if ($AntivirusEnabled) { $score += 30 }

if ($score -ge 80) { $trust = "Managed" }
elseif ($score -ge 60) { $trust = "BYOD" }
elseif ($score -ge 40) { $trust = "Guest" }
else { $trust = "Untrusted" }

Write-Output "Compliance score: $score"
Write-Output "Trust level: $trust"

