# Save this as "ssh_tunnel.ps1"
$homeDirectory = $env:USERPROFILE
$localPort = "1521"  # Replace with your desired local port
$remoteHost = "localhost"  # Replace with the remote host
$remotePort = "1521"  # Replace with the remote port
$username = "tunneluser"  # Replace with your SSH username
$sshServer = "demo.pwn.com.br"  # Replace with your SSH server 134.65.249.173

ssh -i ${homeDirectory}\.ssh\id_rsa -f -N -L ${localPort}:${remoteHost}:${remotePort} ${username}@${sshServer} > "C:\temp\ssh_log.txt" 2>&1