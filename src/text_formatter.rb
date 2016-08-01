module TextFormatter
  def self.soft_return(text, width)
    text.gsub(/(.{1,#{width}})(\s+|\Z)/, "\\1\n")
  end
end