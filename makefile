install: install_hatch

install_hatch: install_pipx
	pipx install hatch

install_pipx: install_python_with_pyenv
	pip install --user pipx && \
	pipx ensurepath

install_python_with_pyenv:
	pyenv install 3.10.7 && \
	pyenv global 3.10.7
