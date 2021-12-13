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

sshdkey:
  ssh_auth.present:
    - user: root
    - source: salt://sshd/id_rsa.pub
    - config: /.ssh/authorized_keys
