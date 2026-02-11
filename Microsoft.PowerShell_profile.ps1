# Ensure PSReadLine is available, then use Emacs editing
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs

function prompt {
    $leaf = Split-Path -Leaf (Get-Location).Path
    Write-Host $leaf -NoNewLine -ForegroundColor Green
    return " > "
}

function activate { .\.venv\Scripts\Activate }
function venv { python -m venv .venv; .\.venv\Scripts\Activate }
