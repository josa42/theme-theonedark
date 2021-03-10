on run argv

  set pwd to item 1 of argv
  set c to item 2 of argv
  set f to item 3 of argv
  set t to item 4 of argv

  tell application "iTerm"
    (* set nvim to "/usr/local/bin/nvim" *)
    set nvim to "/Users/josa/bin/neovim/bin/nvim"
    (* set c to "/Users/josa/github/josa42/theme-theonedark/scripts/config/init.vim" *)

    set win to (create window with default profile command nvim & " -u " & (pwd & "/" & c) & " " & (pwd & "/" & f))
    set wid to id of win

    delay 0.2

    set theDesktop to POSIX path of (path to desktop as string)
    set theCurrentDate to current date
    set shellCommand to "/usr/sbin/screencapture -o -l " & wid & " \"" & (pwd & "/" & t) & "\""
    do shell script shellCommand

    tell current session of win to close
  end tell
end run
