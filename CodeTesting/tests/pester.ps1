Describe 'Script' {
  It 'Exists in Windows folder' {
      'c:\code\test_script.ps1' | Should -Exist
  }
}