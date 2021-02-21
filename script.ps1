echo "`n`t`t`t`t`t`t`tKARKA'S WINDOWS SETUP`n"

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Get-Job | Wait-Job

# Install NeoVim
choco install neovim git nodejs python -y

Get-Job | Wait-Job

# NeoVim's config
$nvimPath = Join-Path $HOME "\AppData\Local"
Move-Item nvim $nvimPath

Get-Job | Wait-Job

# Download Vim-Plug
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

Get-Job | Wait-Job

# Install Vim-Plug Plugins
nvim --headless +PlugInstall +qa

Get-Job | Wait-Job

echo "`n`n`t`t`t`t`tSCRIPT FINISHED EXECUTING. GOOD LUCK!!!`n`n"