lines = []
until ARGF.eof?
  lines << ARGF.gets
end
lines.sort!
lines.shift
STDOUT.puts lines.join("")

