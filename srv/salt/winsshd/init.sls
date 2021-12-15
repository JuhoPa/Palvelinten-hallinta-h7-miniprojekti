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

add-new-user:
  user.present:
    - name: juhoadmin
    - password: '*kplst*09453*JP'
    - win_profile: C:\Users\juhoadmin
    - home: C:\Users\juhoadmin
    - groups:
      - Users

C:\Users\juhoadmin\.ssh\authorized_keys:
  file.managed:
    - makedirs: True
    - source: salt://sshd/id_rsa.pub

C:\Users\IEUser\.ssh\authorized_keys:
  file.managed:
    - makedirs: True
    - source: salt://sshd/id_rsa.pub
