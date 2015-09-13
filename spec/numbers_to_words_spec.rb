require('rspec')
require('numbers_to_words')

describe("Fixnum#numbers_to_words") do
  it("translates single digit into its written word form") do
    expect((3).numbers_to_words()).to(eq("three"))
  end

  it("translates double digit teen number into its written word form") do
    expect((13).numbers_to_words()).to(eq("thirteen"))
  end

  it("translates double digit teen number into its written word form ") do
    expect((20).numbers_to_words()).to(eq("twenty"))
  end
end
