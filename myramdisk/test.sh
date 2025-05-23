  #!/bin/sh

  set_prompt_color() {
    USERNAME=$1
    COLOR=$2

    if [ -d "$USERNAME" ]; then
      echo "export PS1='\\[\\e[${COLOR}m\\]\\u:\\w\\$\\[\\e[0m\\] '" > "$USERNAME/.bashrc"
      echo "if [ -f ~/.bashrc ]; then" > "$USERNAME/.profile"
      echo "    . ~/.bashrc" >> "$USERNAME/.profile"
      echo "fi" >> "$USERNAME/.profile"
    fi
  }

  # Assign colors
  set_prompt_color home/Budiman "32"        # green
  set_prompt_color home/guest "34"          # blu
  set_prompt_color home/praktikan1 "33"     # kuning
  set_prompt_color home/praktikan2 "36"     # cyan
  set_prompt_color root "35"     # purple


  echo "Connected Successfully ;D"