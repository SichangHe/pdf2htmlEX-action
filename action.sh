set -e

# shellcheck disable=SC2086
# Needed to expand $ARGS
docker run -ti --rm \
    -v "$(pwd)":/pdf -w /pdf \
    pdf2htmlex/pdf2htmlex:0.18.8.rc2-master-20200820-alpine-3.12.0-x86_64 \
    $ARGS
