# Sometimes typing sudo isn't enough when I'm constantly forgetting to type it in the first place

function fuck
  if test "$argv" = !!
    eval sudo $history[1]
  else
    sudo $argv
  end
end
