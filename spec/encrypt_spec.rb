require_relative '../encrypt'

# RSPEC

# describe -> tells the name of the method
# it -> describes what the test is doing
# expect -> calls the methos and compares it with the expected result

describe "#encrypt" do
  it "returns an empty string when passed an empty string" do
    expect(encrypt("")).to eq("")
  end

  it "should return an encrypted string when given a sentence" do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  it "should return an encrypted string when given a sentence" do
    actual = encrypt("THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  # other tests examples:

  # it 'should give us the letter A when given D' do
  #   expect(encrypt('D')).to eq('A')
  # end

  # it 'should return a string' do
  #   actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
  #   expected = String
  #   expect(actual).to be_a(expected)
  # end

end
