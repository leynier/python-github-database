install: install_hatch

install_hatch: install_pipx
	pipx install hatch

install_pipx:
	pip install --user pipx && \
	pipx ensurepath
