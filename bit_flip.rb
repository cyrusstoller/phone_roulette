module BitFlip
  def flip_even_odd
    bool_file = File.join("/tmp", "even_odd")
    if File.exists?(bool_file)
      File.delete(bool_file)
      return true
    else
      File.open(bool_file, "w") do |w|
        w.puts 1
      end
      return false
    end
  end
end