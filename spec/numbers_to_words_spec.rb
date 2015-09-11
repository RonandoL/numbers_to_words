require('rspec')
require('numbers_to_words')

describe("Fixnum#numbers_to_words") do
  it("translates single digit into its written word form") do
    expect((1).numbers_to_words()).to(eq("one"))
  end
end
