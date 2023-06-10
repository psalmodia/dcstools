_SERVICE_PDF=matins.pdf
_build () {
    local outputfile="$1"
    awk '{sub(" *#.*$", "")}1' |
        xargs echo |
        xargs -I{} echo --pages {} -- ${_SERVICE_PDF} ${outputfile} |
        xargs qpdf
}
