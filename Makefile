OH_MY_BASH_DIR = ~/.oh-my-bash

.PHONY: all config
	
all: config
	@ /bin/bash make.sh

config: $(OH_MY_BASH_DIR)
	@echo Run 'source ~/.bashrc' to apply changes

$(OH_MY_BASH_DIR):
	@echo "Installing oh-my-bash"
	@bash -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
