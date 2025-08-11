pack:
	(for i in \
			Makefile \
			*.md \
			pages/*.org \
			resources/*.md \
			demos/*.md \
			katas/*/*.md \
			archive/*.org \
			logseq/pages/*.org \
	 ; do echo $$i; cat $$i; echo ---- ; done ;\
	) > ~/act-pack.txt
