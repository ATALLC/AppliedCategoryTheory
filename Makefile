pack:
	(for i in \
			Makefile \
			*.md \
			pages/*.md \
			sessions/*.org \
			resources/*.md \
			demos/*.md \
			katas/*/*.md \
			archive/*.md \
			logseq/pages/*.org \
		  copilot/*.md copilot/*/*.md \
	 ; do echo $$i; cat $$i; echo ---- ; done ;\
	) > ~/act-pack.txt
