srpm:
	dnf install -y git koji rpmdevtools rpm-build
	git submodule update --init --recursive
	cd kernel && export sourcedir="$$(pwd)" && bash ./kernel.sh
	cd kernel && rpmbuild -bs --define "_sourcedir $$(pwd)" --define "_srcrpmdir $(outdir)" kernel.spec