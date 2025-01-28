#!/bin/sh

gitroot=$(git rev-parse --show-toplevel)
changes="$gitroot/pkg/suse/changelogs/temp.changes"

echo "Generate changelog entry for Salt package"
if ! osc vc "$changes";
then
    exit 1;
fi

git add "$changes"
