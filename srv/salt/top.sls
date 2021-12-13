base:
  '*':
{% if grains['os'] == 'Windows' %}
    - winsshd
{% elif grains['kernel'] == 'Linux' %}
    - sshd
{% endif  %}
