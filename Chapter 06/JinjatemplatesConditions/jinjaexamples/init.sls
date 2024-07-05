# jinjaexamples/init.sls

{% set host = salt['grains.get']('host') %}
{% set os = salt['grains.get']('os') %}
{% set company = 'thinknyx' %}

custom_file:
  file.managed:
    - name: /var/tmp/fileone
    - contents: "My server {{ host }} with {{ os }} belongs to {{ company }}"

vim_editor:
  pkg.installed:
    {% if grains['os'] == 'Ubuntu' %}
    - name: ntp
    {% endif %}

