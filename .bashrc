if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Run all config files
for file in ~/.config/bash/*.sh; do
    . $file
done

# Run all config files
for file in ~/.config/bash/**/*.sh; do
    . $file
done
