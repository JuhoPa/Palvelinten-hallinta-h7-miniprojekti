{% if grains['os'] == 'Windows' %}
base:
  - winsshd
{% else %}
base:
  - sshd
{% endif  %}
