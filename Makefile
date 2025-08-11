pack:
	(for i in \
			Makefile \
			pages/*.org \
			resources/*.md \
			demos/*.md \
			katas/*/*.md \
			archive/*/*.org \
			*.org \
			*.md \
			logseq/pages/*.org \
	 ; do echo $$i; cat $$i; echo ---- ; done ;\
	) > ~/act-pack.txt
