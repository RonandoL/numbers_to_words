require('rspec')
require('numbers_to_words')

describe("Fixnum#numbers_to_words") do
  it("translates single digit into its written word form") do
    expect((13).numbers_to_words()).to(eq("thirteen"))
  end

  it("translates double digit number into its written word form") do
    expect((27).numbers_to_words()).to(eq("twenty seven"))
  end

  it("translates triple digit number into its written word form") do
    expect((173).numbers_to_words()).to(eq("one hundred and seventy three"))
  end

  it("translates four digit number into its written word form") do
    expect((9743).numbers_to_words()).to(eq("nine thousand seven hundred and forty three"))
  end
end
