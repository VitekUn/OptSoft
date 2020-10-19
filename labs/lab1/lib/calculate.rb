class Calculate
  def self.scale_conversion(number, old_scale, new_scale)
    return number if old_scale == new_scale

    case old_scale
    when 'C'
      result = conversion_of_c(number, new_scale)
    when 'K'
      result = conversion_of_k(number, new_scale)
    when 'F'
      result = conversion_of_f(number, new_scale)
    end

    result
  end

  def self.conversion_of_c(number, new_scale)
    case new_scale
    when 'K'
      number + 273.15
    when 'F'
      number * 1.8 + 32
    end
  end

  def self.conversion_of_k(number, new_scale)
    case new_scale
    when 'C'
      number - 273.15
    when 'F'
      number * 1.8 - 459.67
    end
  end

  def self.conversion_of_f(number, new_scale)
    case new_scale
    when 'C'
      (number - 32) / 1.8
    when 'K'
      (number + 459.67) / 1.8
    end
  end
end
