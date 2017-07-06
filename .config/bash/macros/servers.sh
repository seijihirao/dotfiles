#
# General
#

ssh-gen(){
    local user=${1}
    local host=${2}
    local port=${3}
    if [ -z "${port}" ]; then
        ssh "${user}@${host}"
    else
        ssh "${user}@${host}" -p "${port}"
    fi
}

sshfs-gen(){
    local dir="/media/${1}/"
    local host=${2}
    local port=${3}
    if [ ! -d "${dir}" ]; then
        mkdir "${dir}"
    fi
    chown "${USER}" "${dir}"
    if [ -z "${port}" ]; then
        sshfs "${host}" "${dir}"
    else
        sshfs "${host}" "${dir}" -o "Port=${port}"
    fi
}

#
# Rep MFAB
#

ssh-mfab(){
    ssh-gen mfab mfab
}

sshfs-mfab(){
    sshfs-gen mfab mfab@mfab:/media
}

#
# Bacchan
#

ssh-ba(){
    ssh-gen ${USER} ba 2222
}

sshfs-ba(){
    sshfs-gen ba ba:/media 2222
}
