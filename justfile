# update requirements.txt file
@pip:
    pip-compile --generate-hashes --upgrade --quiet --rebuild

# runs the pre-commit check command
@check:
    pre-commit run --all-files

# make the html locally
@html:
    make html

# pulls from branch
@sync branch:
    git switch {{branch}}
    git pull origin {{branch}}

# cleans up the output die
@clean:
	make clean

# regenerates the html files
@regenerate:
    make regenerate

# IDK
@serve:
	make serve

# IDK
@serve-global:
	make serve-global

# IDK
@devserver:
	make devserver

# IDK
@devserver-global:
	make devserver-global

# IDK
@publish:
	make publish