OH_MY_BASH_DIR = ~/.oh-my-bash
OH_MY_BASH_THEME = powerline

.PHONY: all config

all: config
	@ /bin/bash make.sh

config: $(OH_MY_BASH_DIR)
	@sed -i '/OSH_THEME=.*/c\OSH_THEME="$(OH_MY_BASH_THEME)"' ~/.bashrc
	@echo Run 'source ~/.bashrc' to apply changes

$(OH_MY_BASH_DIR):
	@echo "Installing oh-my-bash"
	@bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
