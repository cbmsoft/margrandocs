# Save this as "ssh_tunnel.ps1"
$homeDirectory = $env:USERPROFILE
$username = "tunneluser"  # Replace with your SSH username
$sshServer = "demo.pwn.com.br"  # Replace with your SSH server 134.65.249.173
$localPort1 = "1521"  # First local port
$remoteHost1 = "localhost"  # Remote host for the first port
$remotePort1 = "1521"  # Remote port for the first mapping
$localPort2 = "10050"  # Second local port
$remoteHost2 = "localhost"  # Remote host for the second port
$remotePort2 = "10050"  # Remote port for the second mapping

ssh -i ${homeDirectory}\.ssh\id_rsa -f -N -L ${localPort1}:${remoteHost1}:${remotePort1} -L ${localPort2}:${remoteHost2}:${remotePort2} ${username}@${sshServer} > "C:\temp\ssh_log.txt" 2>&1