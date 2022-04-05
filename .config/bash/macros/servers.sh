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
# IC
#

ssh-ic(){
    ssh-gen ra186837 ic.unicamp
}

sshfs-ic(){
    sshfs-gen ic.unicamp ic.unicamp:/home/ec2016/ra186837/
}
