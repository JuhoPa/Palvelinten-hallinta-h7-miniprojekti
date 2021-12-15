openssh-server:
  pkg.installed
    
/etc/ssh/sshd_config:
  file.managed:
    - source: salt://sshd/sshd_config

sshd:
  service.running:
    - enable: True
    - watch:
      - file: /etc/ssh/sshd_config

adduser:
  user.present:
    - name: juhoadmin
    - password: '*Valv0ja13*!'
    - shell: /bin/bash
    - home: /home/juhoadmin
    - uid: 10000

sshdkey:
  ssh_auth.present:
    - user: juhoadmin
    - source: salt://sshd/id_rsa.pub
    - config: /home/juhoadmin/.ssh/authorized_keys
