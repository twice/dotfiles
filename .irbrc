def less(x)
  IO.popen( 'less -', 'w') do |io|
    io.puts x.to_yaml
  end
end
