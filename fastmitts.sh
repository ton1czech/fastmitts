#!/bin/sh

NL=$'\n'

CHOOSE=$(gum choose \
    "🎁NEW:" \
    "👌IMPROVE:" \
    "🐛BUG FIX:" \
    "❌REMOVED:" \
    "🚀STABLE RELEASE:")
TEXT=$(gum input --placeholder "text")      

gum confirm "$CHOOSE $TEXT $NL$NL commit?" && echo "git commit -m $CHOOSE $TEXT"
