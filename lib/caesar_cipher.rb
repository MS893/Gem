
def decode_message(message, shift)
  # décale les lettre du message de la valeur shift vers la droite
  if shift in (0..26) then
    array_of_ascii = message.chars.map { |c| c.ord }
    array_shifted = array_of_ascii.map { |a| a == 32 ? 32 : ((a + shift) < 123 ? (a + shift) : (a + shift) - 26) }
    array_of_letters = array_shifted.map { |a| a.chr.force_encoding('UTF-8') }
    return array_of_letters.join("")
  else
    return "Error, shift must be in [0, 26]"
  end
end
