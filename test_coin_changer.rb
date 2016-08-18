require_relative 'coin_changer.rb'
require 'minitest/autorun'

class TestCoinChanger < Minitest::Test 
	def test_zero_cents_returns_empty_hash
		assert_equal({}, generate_change(0))
	end

	def test_one_cent_returns_hash_with_one_penny
		assert_equal({:penny => 1}, generate_change(1))
	end

	def test_two_cents_returns_hash_with_two_penny
		assert_equal({:penny => 2}, generate_change(2))
	end

	def test_five_cents_returns_hash_with_one_nickel
		assert_equal({:nickel => 1}, generate_change(5))
	end

	def test_six_cents_returns_hash_with_1_nickel_1_penny
		assert_equal({:nickel => 1, :penny => 1}, generate_change(6))
	end

	def test_seven_cents_returns_hash_with_1_nickel_2_penny
		assert_equal({:nickel => 1, :penny => 2}, generate_change(7))
	end

	def test_ten_cents_returns_hash_with_one_dime
		assert_equal({:dime => 1}, generate_change(10))
	end

	def test_eleven_cents_returns_hash_with_1_dime_1_penny
		assert_equal({:dime => 1, :penny => 1}, generate_change(11))
	end

	def test_fifteen_cents_returns_hash_with_1_dime_1_nickel
		assert_equal({:dime => 1, :nickel => 1}, generate_change(15))
	end

	def test_sixteen_cents_returns_hash_with_1_dime_1_nickel_1_penny
		assert_equal({:dime => 1, :nickel => 1, :penny => 1}, generate_change(16))
	end
end