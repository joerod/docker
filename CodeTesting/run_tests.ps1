$ErrorActionPreference = "Stop"
Import-Module PSScriptAnalyzer,Pester
$pester_script = "pester.ps1"
Invoke-ScriptAnalyzer -Path . -Recurse -ReportSummary
if((Test-Path ./tests/) -and (Get-ChildItem ./tests/)){
  Invoke-Pester -Script ./tests/*
}
else{
  Write-Output "$pester_script file is not present.  Skipping Test"
  Write-Output "Please write some tests for your code :-)"
}