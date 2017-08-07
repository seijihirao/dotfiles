#
# Songs
#

# Adds Cover art for all music files
add-cover(){

    local RESET="\e[0m"
    local BOLD="\e[1m"

    local GREEN="\e[32m"

    for img in ./cover.*; do
        
        # Adds to flac files
        local flac_files=`ls -1 *.flac 2>/dev/null | wc -l`
        if [ $flac_files != 0 ]; then
            echo "Found $flac_files .flac files."
            let flac_file_count=0
            for song in ./*.flac; do
                echo "Reading file $((++flac_file_count)) of $flac_files."
                metaflac --import-picture-from=${img} "${song}"
            done
        fi
    
        # Adds to mp3 files
        local mp3_files=`ls -1 *.mp3 2>/dev/null | wc -l`
        if [ $mp3_files != 0 ]; then
            echo "Found $mp3_files .mp3 files."
            for song in ./*.mp3; do
                lame --ti ${img} ${song}
                mv -f ${song}.mp3 ${song}
            done
        fi
        
        # Adds to m4a files
        local m4a_files=`ls -1 *.m4a 2>/dev/null | wc -l`
        if [ $m4a_files != 0 ]; then
            echo "Found $m4a_files .m4a files."
            for song in ./*.m4a; do
                AtomicParsley "${song}" --artwork ${img} --overWrite 
            done
        fi
        
        local total_files=$(($flac_files + $mp3_files + $m4a_files))
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
