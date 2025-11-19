eval "$(/Users/thejus/.local/bin/mise activate zsh)"

# pnpm
export PNPM_HOME="/Users/thejus/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# initialize starship
eval "$(starship init zsh)"

# zOxide (smarter cd)
eval "$(zoxide init zsh)"
