RED="\033[31m"
GREEN="\033[32m"
BLUE="\033[34m"
ENDCOLOR="\033[0m"

# Define warn, success, and fail functions
console_info() {
    echo -e "${BLUE}[INFO]${ENDCOLOR} $1"
}

console_success() {
    echo -e "${GREEN}[SUCCESS]${ENDCOLOR} $1"
}

console_error() {
    echo -e "${RED}[ERROR]${ENDCOLOR} $1"
}

add_line_to_bash_profile() {
    # Check if the line is in the file
    if ! grep -Fxq "$1" ~/.bash_profile; then
        # If the line is not in the file, add it
        echo -e "$1" >> ~/.bash_profile
        console_info "Added: '$1' to ~/.bash_profile."
    else
        console_info "Skipped: '$1' already exists in ~/.bash_profile."
    fi
}