def cat(files)
  files.each do |file|
    f = File.open(file,"r")
    puts f.read
  end
end

cat(ARGV)
