def caesar_cipher(str, int)
  i = 0
  num = str.length
  after_cipher = ""
  begin
    find_char = str[i].ord
    unicode_add = (find_char + int)
    unicode_subtr = (find_char - 26 + int)
    if ((find_char >= 65) && (find_char + int <= 90))
      after_cipher += unicode_add.chr
    elsif ((find_char <= 90) && (unicode_subtr >= 65))
      after_cipher += unicode_subtr.chr
    elsif ((find_char >= 97) && (find_char + int <= 122))
      after_cipher += unicode_add.chr
    elsif ((find_char <= 122) && (unicode_subtr >= 97))
      after_cipher += unicode_subtr.chr
    else
      after_cipher += find_char.chr
    end
    i += 1
  end until i >= num
  puts after_cipher
end

caesar_cipher("What a string!", 5)
