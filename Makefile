pack:
	(for i in \
			Makefile \
			pages/*.org \
			resources/*.md \
			*.org \
			*.md \
			logseq/pages/*.org \
	 ; do echo $$i; cat $$i; echo ---- ; done ;\
	) > ~/act-pack.txt
