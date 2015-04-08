class Fixnum

  def basic_trans
    {
      1 => 'I',
      2 => 'II',
      3 => 'III',
      4 => 'IV',
      5 => 'V',
      6 => 'VI',
      7 => 'VII',
      8 => 'VIII',
      9 => 'IX',
      10 => 'X',
      50 => 'L',
      100 => 'C',
      500 => 'D',
      1000 => 'M'
    }
  end

  
  def to_roman(roman_nums='')

    if basic_trans.keys.include?(self)
      roman_nums +=  self.basic_trans[self]

    elsif (self / 1000) > 0 
      roman_nums += (self % 1000).to_roman 'M'*(self / 1000)

    elsif (self / 500) > 0 && (1000 - self <= 100)
      roman_nums += (self % 100).to_roman 'CM'
    elsif (self / 500) > 0 && (1000 - self <= 500)
      roman_nums += (self % 500).to_roman 'D'
    elsif (self / 500) > 0 
      roman_nums += (self % 500).to_roman 'CM'
    
    elsif (self / 100) > 0 && (500 - self <= 100)
      roman_nums += (self % 100).to_roman 'CD'
    elsif (self / 100) > 0 
      roman_nums += (self % 100).to_roman 'C'*(self / 100)

    elsif (self / 50) > 0  && (100 - self <= 10)
      roman_nums += (self%10).to_roman 'XC'
    elsif (self / 50) > 0 
      roman_nums += (self % 50).to_roman 'L'

    elsif (self / 10) > 0 && (50 - self <= 10)        
      roman_nums += (self % 10).to_roman 'XL'
    elsif (self / 10) > 0
      roman_nums += (self % 10).to_roman 'X'*(self / 10)

    end

    return roman_nums
  end

end