function omg
  if test "$argv" = !!
    eval sudo $history[1]
  else
    sudo $argv
  end
end
