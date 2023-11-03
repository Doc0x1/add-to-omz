#--------------------------------------------------------------------------
# add-to-omz plugin for OhMyZsh used for adding other plugins/themes from GitHub.
# Adds the add2omz function/command to the shell.
# Author: Doc0x1
# Version: 1.1
#--------------------------------------------------------------------------

add2omz() {
    print_usage() {
        printf "Usage: add2omz [--type type] [--url git-repo-url] [options]\n\n"
        printf "Options:\n"
        printf "  --version             Show program's version number and exit\n"
        printf "  -h, --help            Show this help message and exit\n"
        printf "  --type                Specify the type ('plugin' or 'theme')\n"
        printf "  --url                 Specify the Git repository URL\n"
        printf "  --name                Specify a custom name for the directory\n"
    }

    local type=""
    local git_repo=""
    local name=""

    while [ "$#" -gt 0 ]; do
        case "$1" in
            --type)
                shift
                type="$1"
                ;;
            --url)
                shift
                git_repo="$1"
                ;;
            --name)
                shift
                name="$1"
                ;;
            -h|--help)
                print_usage
                return
                ;;
            *)
                printf "Unknown option: %s\n" "$1"
                print_usage
                return
                ;;
        esac
        shift
    done

    if [[ -z "$type" || -z "$git_repo" ]]; then
        printf "Both --type and --url are required.\n"
        print_usage
        return
    fi

    if [[ "$type" != "plugin" && "$type" != "theme" ]]; then
        printf "Invalid type: %s. Use 'plugin' or 'theme'.\n" "$type"
        print_usage
        return
    fi

    if [[ "$git_repo" != "https://github.com/"* ]]; then
        printf "Invalid URL: %s. Must start with 'https://github.com/'.\n" "$git_repo"
        print_usage
        return
    fi

    if [[ -z "$name" ]]; then
        name=$(basename "$git_repo" .git)
    fi

    if [ -d "$ZSH/custom/${type}s/$name" ]; then
        printf "Specified plugin or theme appears to be installed already.\n"
    else
        git clone --depth=1 "$git_repo" "$ZSH/custom/${type}s/$name"
    fi
}