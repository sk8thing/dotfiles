#!/usr/bin/env bash

DIFF=$(git diff --cached)

if [ -z "$DIFF" ]; then
    echo "No changes to commit"
    exit 0;
fi

PROMPT=$(cat << EOF
/no_think
Given the following git diff, please write a clear and concise git commit message.
Use present tense, imperative mood.
Make the first line the title (100 characters max) and the rest the body:

$DIFF
EOF
)

generateCommitMsg() {
    RESPONSE=$(ollama run qwen3:4b "$PROMPT")
    COMMIT_MESSAGE=$(echo "$RESPONSE" | tail -n +5)
}

while true; do
    generateCommitMsg
    echo -e "\nProposed commit message:"
    echo "----------------------------------------"
    echo "$COMMIT_MESSAGE"
    echo "----------------------------------------"
    read -rp "How would you like to proceed? (C)ommit/(E)dit/(R)egenerate: " choice

    case "$choice" in
        c|C)
            git commit -m "$COMMIT_MESSAGE"
            break
            ;;
        e|E)
            TMPFILE=$(mktemp)
            echo "$COMMIT_MESSAGE" > "$TMPFILE"
            nvim "$TMPFILE"
            COMMIT_MESSAGE=$(cat "$TMPFILE")
            rm "$TMPFILE"
            git commit -m "$COMMIT_MESSAGE"
            break
            ;;
        r|R)
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
done
