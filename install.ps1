<#
.SYNOPSIS
  Installs the professional-web-builder Claude Code skill.

.DESCRIPTION
  Copies skills/professional-web-builder into the Claude Code skills directory.
  By default installs globally to ~/.claude/skills. Pass -Project <path> to install
  into a specific project's .claude/skills instead.

.EXAMPLE
  ./install.ps1
  ./install.ps1 -Project "C:\code\my-app"
#>

param(
  [string]$Project
)

$ErrorActionPreference = "Stop"

$skillName = "professional-web-builder"
$source = Join-Path $PSScriptRoot "skills\$skillName"

if (-not (Test-Path $source)) {
  Write-Error "Skill source not found at $source. Run this from the repo root."
  exit 1
}

if ($Project) {
  $target = Join-Path $Project ".claude\skills"
} else {
  $target = Join-Path $HOME ".claude\skills"
}

New-Item -ItemType Directory -Force -Path $target | Out-Null
$dest = Join-Path $target $skillName

if (Test-Path $dest) {
  Write-Host "Replacing existing skill at $dest" -ForegroundColor Yellow
  Remove-Item -Recurse -Force $dest
}

Copy-Item -Recurse -Force $source $dest
Write-Host "Installed '$skillName' to $dest" -ForegroundColor Green
Write-Host "Start a new Claude Code session to load the skill." -ForegroundColor Cyan
