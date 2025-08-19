local op_sock="$HOME/.1password/agent.sock"
if [ -S "$op_sock" ]; then
  export SSH_AUTH_SOCK="$op_sock"
fi
