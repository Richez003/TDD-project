require_relative '../solver'

describe 'Solver' do
  before(:each) do
    @solver = Solver.new
  end
  context 'The method factorial(n) should return the factorial of n' do
    it 'throws error when n is less than 0' do
      expect { @solver.factorial(-1) }.to raise_error('ArgumentError')
    end

    it 'return 1 for n = 0' do
      result = @solver.factorial(0)
      expected_result = 1
      expect(result).to eql(expected_result)
    end

    it 'return the right factorial value for n=3' do
      result = @solver.factorial(3)
      expected_result = 6
      expect(result).to eql(expected_result)
    end
  end

  context 'The method reverse(string) should return a reverse for a given string' do
    it "return the reverse of 'hello' string" do
      result = @solver.reverse('hello')
      expected_result = 'olleh'
      expect(result).to eql(expected_result)
    end
  end

  context 'The method fizzbuzz(n) should return a string based on some rules' do
    it "returns 'fizz' when n divisible by 3" do
      result = @solver.fizzbuzz(9)
      expected_result = 'fizz'
      expect(result).to eql(expected_result)
    end

    it "returns 'fizz' when n is divisible by 5" do
      result = @solver.fizzbuzz(5)
      expected_result = 'buzz'
      expect(result).to eql(expected_result)
    end

    it "returns 'fizzbuzz' when n is divisible by 3 and 5" do
      result = @solver.fizzbuzz(30)
      expected_result = 'fizzbuzz'
      expect(result).to eql(expected_result)
    end

    it 'returns the number when n is not divisible by 3 or 5' do
      result = @solver.fizzbuzz(7)
      expected_result = '7'
      expect(result).to eql(expected_result)
    end
  end
end
