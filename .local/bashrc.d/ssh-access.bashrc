# if [ -f $HOME/.ssh/config ]
# then
#     while read -r line
#     do
#         alias $line="ssh $line"
#         # wordlist="$line $wordlist"
#     done < <( awk '/^Host ([^\*\n]+)$/ {print $2}' $HOME/.ssh/config)
#     # complete -W "$wordlist" show-hostname
#     # unset wordlist
#     show-hostname() {
#       ssh -G "$1" | grep -i -E '^hostname'
#     }
# fi
