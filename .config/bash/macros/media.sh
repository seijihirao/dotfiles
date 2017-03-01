#
# Songs
#

# Adds Cover art for all music files
add-cover(){

    RESET="\e[0m"
    BOLD="\e[1m"

    GREEN="\e[32m"

    for img in ./cover.*; do

        # Adds to flac files
        flac_files=`ls -1 *.flac 2>/dev/null | wc -l`
        if [ $flac_files != 0 ]; then
            metaflac --import-picture-from=${img} *.flac
        fi
    
        # Adds to mp3 files
        mp3_files=`ls -1 *.mp3 2>/dev/null | wc -l`
        if [ $mp3_files != 0 ]; then
            for song in ./*.mp3; do
                lame --ti ${img} ${song}
                mv -f ${song}.mp3 ${song}
            done
        fi
        
        total_files=$(($flac_files + $mp3_files))
        echo -e "${GREEN}Cover successfullt added to ${total_files} files${RESET}\n"
        
    done
}

# Splits audio with cue file
split-audio(){
    for cue in ./*.cue; do
        file=$(cat ${cue} | grep FILE)
        file=${file%\"*}
        file=${file#*\"}
        shnsplit -f "${cue}" "${file}"
    done
}
