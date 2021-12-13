chocolatey:
  pkg.installed

choco:
  chocolatey.installed:
    - name: openssh

C:\ProgramData\ssh\sshd_config:
  file.managed:
    - user: Administrator
    - group: Administrators
    - source: salt://winsshd/sshd_config
 
sshd:
  service.running:
    - enable: True
    - watch:
      - C:\ProgramData\ssh\sshd_config

C:\Users\IEUser\.ssh\authorized_keys:
  file.managed:
    - makedirs: True
    - source: salt://sshd/id_rsa.pub

