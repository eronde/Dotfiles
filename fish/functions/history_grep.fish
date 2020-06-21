function history_grep --description "Search keyword in history"
  if test (count $argv) -gt (test "$argv[1]" = "--" && echo 2 || echo 1) 
        printf "%s\n" (_ "Too many args for history_grep command")
        return 1
    end
   history |grep $argv
end
