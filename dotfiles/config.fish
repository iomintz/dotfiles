set -x PATH ~/.local/bin $PATH
set -x PATH ~/.cargo/bin $PATH

set -x DISPLAY :0
set -x EDITOR nano

# set tab width
tabs -4
set -x PAGER less -x 4

set -x PIJUL_CONFIG_DIR ~/.config/pijul

set -x FFSEND_HOST https://send.lambda.dance
set -x FFSEND_FORCE

source ~/.config/fish/keys.fish

set -x fish_prompt_git_status_deleted 𝙭
set -x fish_prompt_pwd_dir_length 0  # don't abbreviate cwd in prompt

# why it uses ~/.local/pipx by default is beyond me
set -x PIPX_HOME ~/.local/share/pipx

for f in ~/.config/fish/functions.local/*.fish
	source $f
end

source ~/.config/fish/config.local.fish
