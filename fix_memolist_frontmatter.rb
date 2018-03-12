files = Dir.glob("#{ENV['HOME']}/Google\ Drive/memo/*.md")
files.each_with_index do |file, index|
  filename = File.basename(file)
  filepath = File.expand_path(file)
  flag = true

  lines = File.readlines(file)
  lines[0..5].each_with_index do |line, i|
    case
    when line =~ /^title:(.+)/
      lines[i] = "---\n#{line}"
    when line == "==========\n"
      lines[i] = nil
    when line =~/^(?:date|tags|categories|tags):/
      # do nothing
    when line == "- - -\n"
      lines[i] = line.gsub(' ', '')
    else
      flag = false
      next
    end
  end

  if flag
    p filename
    File.write(filepath, lines.compact.join(""))
  end
end
