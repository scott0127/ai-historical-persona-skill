param(
  [ValidateSet("codex", "claude", "both")]
  [string]$Target = "both"
)

$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillSource = Join-Path $Root "skills\pastself"

if ($Target -eq "codex" -or $Target -eq "both") {
  $CodexDest = Join-Path $env:USERPROFILE ".codex\skills\pastself"
  New-Item -ItemType Directory -Force -Path (Split-Path -Parent $CodexDest) | Out-Null
  Copy-Item -Recurse -Force $SkillSource $CodexDest
  Write-Host "Installed PastSelf for Codex: $CodexDest"
}

if ($Target -eq "claude" -or $Target -eq "both") {
  $ClaudeDest = Join-Path $env:USERPROFILE ".claude\skills\pastself"
  New-Item -ItemType Directory -Force -Path (Split-Path -Parent $ClaudeDest) | Out-Null
  Copy-Item -Recurse -Force $SkillSource $ClaudeDest
  Write-Host "Installed PastSelf for Claude Code: $ClaudeDest"
}
