require_relative '../lib/caesar_cipher.rb'

describe "the caesar_cipher method" do
  it "should decode an encrypted message" do
    expect(decode_message("ceci est un essai", 3)).to eq("fhfl hvw xq hvvdl")
    expect(decode_message("ceci est un essai", 30)).to eq("Error, shift must be in [0, 26]")
  end
end
