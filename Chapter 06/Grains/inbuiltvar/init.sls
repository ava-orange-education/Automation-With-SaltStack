test_file:
  file.managed:
    - name: /var/tmp/testfile
    - contents: "This file is getting variable from grains, running Operating System {{ grains['os'] }} with Total memory {{ grains['mem_total'] }}"

