#
# Songs
#

# Adds Cover art for all music files
add-cover(){

    GREEN='\033[0;32m'
    RESET="$(tput sgr0)"

    for img in ./cover.*; do

        # Adds to flac files
        flac_files=`ls -1 *.flac 2>/dev/null | wc -l`
        if [ $flac_files != 0 ]; then
            metaflac --import-picture-from=${img} *.flac
        fi
    
        # Adds to mp3 files
        mp3_files=`ls -1 *.mp3 2>/dev/null | wc -l`
        if [ $mp3_files != 0 ]; then
            lame --ti ${img} *.mp3
        fi
        
        total_files=$(($flac_files + $mp3_files))
        printf "${GREEN}Cover successfullt added to ${total_files} files${RESET}\n"
        
    done
}
