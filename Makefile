pack:
	(for i in \
			Makefile \
			pages/*.org \
			*.org \
			logseq/pages/*.org \
	 ; do echo $$i; cat $$i; echo ---- ; done ;\
	) > ~/act-pack.txt
