#
# General
#

ssh-gen(){
    ssh "$1@$2"
}

sshfs-gen(){
    dir="/media/$1/"
    if [ ! -d "${dir}" ]; then
        mkdir "${dir}"
    fi
    chown "${USER}" "${dir}"
    sshfs "$2" "${dir}"
}

#
# Rep MFAB
#

ssh-mfab(){
    ssh-gen mfab 192.168.1.113
}

sshfs-mfab(){
    sshfs-gen mfab root@192.168.1.113:/media
}

#
# Bacchan
#

ssh-ba(){
    ssh-gen ${USER} 192.168.1.10
}

sshfs-ba(){
    sshfs-gen ba 192.168.1.10:/media 
}
