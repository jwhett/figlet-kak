# Fail if figlet is unavailable
evaluate-commands %sh{
    [ -z $(command -v figlet) ] && echo "fail Missing dependency: figlet"
}

define-command -override -params .. -docstring "figlet [<arguments>]: wrap selection using the figlet command line utility" figlet %{
    evaluate-commands %sh{
        echo "execute-keys |figlet<space>$(echo $@ | sed 's/ /\<space\>/g')<ret>"
    }
}
