File Creation with Default Event String:
  file.touch:
    - name: /var/tmp/defaultstringfile
    - fire_event: True

File Creation with Custom Event String:
  file.touch:
    - name: /var/tmp/customstringfile
    - fire_event: Custom File Created/filecreated/Success
