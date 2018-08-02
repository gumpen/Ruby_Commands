require './common'

def cat(files,options)
  if options.include?("-n")
    files.each do |file|
      f = File.open(file,"r")
      f.each_line do |line|
        puts "#{f.lineno}: #{line}"
      end
    end
  else
    files.each do |file|
      f = File.open(file,"r")
      puts f.read
    end
  end
end


args = ARGV
options = extract_option_from_argument(args)
files = args - options
cat(files,options)
