# Run all config files on subfolders
for file in ~/.config/bash/**/*.sh; do
    . $file
done

# Run all config files
for file in ~/.config/bash/*.sh; do
    . $file
done
