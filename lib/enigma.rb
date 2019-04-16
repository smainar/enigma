class Enigma
  def encrypt(message, key, date)
    shifts = Shift.new(Key.new(key), Offset.new(date))
    {
      encryption: shifts.get_encryption(message),
      key: shifts.key.key,
      date: shifts.offset.date
    }
  end

  def decrypt(message, key, date)
    shifts = Shift.new(Key.new(key), Offset.new(date))
    {
      decryption: shifts.get_decryption(message),
      key: shifts.key.key,
      date: shifts.offset.date
    }
  end

end
