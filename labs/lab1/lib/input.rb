class Input
  def self.input_number
    inpt = 0
    loop do
      print 'Enter a floating point number: '
      inpt = $stdin.gets.strip
      break if inpt.to_f.to_s == inpt
    end
    inpt.to_f
  end

  def self.input_scale
    inpt = ''
    loop do
      print 'Enter the name of the scale C, K, or F: '
      inpt = $stdin.gets.strip
      break if %w[C K F].include? inpt
    end
    inpt
  end
end
