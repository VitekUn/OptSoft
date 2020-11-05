class Calculate
  def self.search_max(arr)
    arr.inject { |elem1, elem2| elem1.split(',')[1].to_i > elem2.split(',')[1].to_i ? elem1 : elem2 }
  end

  def self.search_min(arr)
    arr.inject { |elem1, elem2| elem1.split(',')[1].to_i < elem2.split(',')[1].to_i ? elem1 : elem2 }
  end

  def self.calculate_average(arr)
    arr.map! { |line| line.split(',')[1].to_i }
    arr.inject { |sum, elem| sum + elem } / arr.length
  end

  def self.calculate_correct_sample_variance(arr)
    sample_mean = calculate_average(arr)
    sum = average_sum_of_difference(arr, sample_mean)
    average = sum / arr.length
    (arr.length.to_f / (arr.length - 1.to_f)) * average
  end

  def self.average_sum_of_difference(arr, sample_mean)
    arr.inject(0) { |sum, elem| sum + (elem.to_f - sample_mean)**2 }
  end
end
