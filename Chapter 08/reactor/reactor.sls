filecreation:
  local.state.single:
    - tgt: '*'
    - args:
      - fun: file.touch
      - name: /var/tmp/reactortest
