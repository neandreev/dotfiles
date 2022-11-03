flock ~ -c '
    if [ -z "$(wsl.exe -d wsl-vpnkit --cd /app ps | grep wsl-vm)" ]; then
        wsl.exe -d wsl-vpnkit --cd /app service wsl-vpnkit start
    fi
  '
