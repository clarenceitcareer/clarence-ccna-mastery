\
param(
  [Parameter(Mandatory=$true)][string]$Path
)

New-Item -ItemType Directory -Force -Path $Path | Out-Null
New-Item -ItemType Directory -Force -Path "$Path\topology" | Out-Null
New-Item -ItemType Directory -Force -Path "$Path\configs" | Out-Null
New-Item -ItemType Directory -Force -Path "$Path\verification" | Out-Null

"# $(Split-Path -Leaf $Path)" | Out-File -Encoding utf8 "$Path\README.md"
"# Failure Notes`n`n(TODO)`n" | Out-File -Encoding utf8 "$Path\failure-notes.md"
