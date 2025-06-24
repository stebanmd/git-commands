# Alias for Github commands

How to:

Copy the `.bash_profile` file to your local %PATH%

> Note: if you only download the file, it might had its extension changed to `.txt`

All commands should be available via git_bash.

# PowerShell shortcuts


1. Open the PowerShell as Administrator
2. Change the execution policy to Unrestricted: `Set-ExecutionPolicy Unrestricted`
3. Create a profile file if not exists:

```
if (!(Test-Path -Path $PROFILE)) {
  New-Item -ItemType File -Path $PROFILE -Force
}
```
4. Open the file in notepad: `notepad $PROFILE`
5. Add the functions. e.g.:

```
function projects {
  cd C:\Projects\
}
```

Note: Check if the profile file has a `.ps1` extension.
