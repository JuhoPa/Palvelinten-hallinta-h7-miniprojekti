openssh-server:
  pkg.installed
    

C:\ProgramData\ssh\sshd_config:
  file.managed:
    - source: salt://sshd/sshd_config

sshd:
  service.running:
    - enable: True
    - watch:
      - file: C:\ProgramData\ssh\sshd_config

C:\ProgramData\ssh\administrators_authorized_key:
  ssh_auth.present:
    - user: root
    - source: salt://sshd/id_rsa.pub
    - config: C:\ProgramData\ssh\administrators_authorized_keys
