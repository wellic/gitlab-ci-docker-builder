#!/usr/bin/env bash

#set -x
set -u

generate=${1:-0}
part=${2:-patch}
VERSION_GIT_TAG=${3:-18.06}

NEW_VERSION=$(bumpversion --allow-dirty --list --dry-run --no-tag --no-commit $part | grep 'new_version' | sed -re "s/^new_version=(.*)/\1/")

[ -z "$NEW_VERSION" ] && exit 1

ts=$(date +"%Y-%m-%d")

CHANGELOG_NAME='CHANGELOG'
CHANGELOG_EXT='md'
CHANGELOG_FN="${CHANGELOG_NAME}.${CHANGELOG_EXT}"
CHANGELOG_NEW="${CHANGELOG_FN}.${NEW_VERSION}"


./build_doc.sh
if [ "$generate" = '1' ]; then
    git ci -am "Update CHANGELOG.md (v$NEW_VERSION)"
    cmd="bumpversion --allow-dirty --tag --commit $part"
    echo "$cmd"
    eval "$cmd"
    ./build_git_tags.sh "$VERSION_GIT_TAG"
else
    cat > "${CHANGELOG_NEW}" <<GENERATE_TEMPLATE_CHANGELOG_NEW
# ${CHANGELOG_NAME}

## v${NEW_VERSION} ($ts)

### New

### Change

### Delete

---

GENERATE_TEMPLATE_CHANGELOG_NEW

    cat "$CHANGELOG_FN" >> "$CHANGELOG_NEW"
    [ -s "$CHANGELOG_NEW" ] && mv "$CHANGELOG_NEW" "$CHANGELOG_FN"

fi

