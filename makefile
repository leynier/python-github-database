install: install_gh_cli install_hatch

install_hatch: install_pipx
	pipx install hatch

install_pipx: install_python_with_pyenv
	pip install --user pipx && \
	pipx ensurepath

install_python_with_pyenv:
	pyenv install 3.10.7 && \
	pyenv global 3.10.7

install_gh_cli:
	wget https://github.com/cli/cli/releases/download/v2.16.1/gh_2.16.1_linux_amd64.deb && \
	sudo dpkg -i gh_2.16.1_linux_amd64.deb && \
	rm gh_2.16.1_linux_amd64.deb

config: config_gh_cli

config_gh_cli:
	gh auth login
