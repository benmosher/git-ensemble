complete -c git -f --condition '__fish_git_using_command ensemble'

complete -c git -n '__fish_git_using_command ensemble' -a 'with' -d 'Merge current commit with provided refs'

complete -c git -n '__fish_git_using_command ensemble; and __fish_seen_subcommand_from with' \
    -a '(git for-each-ref --format="%(refname:short)" refs/heads/)' -d 'Branch'