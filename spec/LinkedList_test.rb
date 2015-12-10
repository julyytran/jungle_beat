require 'minitest/pride'
require 'minitest/autorun'
require_relative '../lib/Node'
require_relative '../lib/LinkedList.rb'

class LinkedListTest < Minitest::Test

  def test_head_if_initialized_single_value
    list = LinkedList.new("deep")
    assert_equal "deep", list.head.data
    assert_equal Node, list.head.class
    assert_equal LinkedList, list.class
  end

  def test_head_if_initialized_two_values
    list = LinkedList.new("deep dep")
    assert_equal "deep", list.head.data
  end

  def test_tail_if_initialized_two_values
    list = LinkedList.new("deep dep")
    assert_equal "dep", list.tail.data
  end

  def test_tail_if_initialized_three_values
    list = LinkedList.new("deep dep bop")
    assert_equal "bop", list.tail.data
  end

  def test_three_valeus_are_linked
    list = LinkedList.new("deep dep bop")
    assert_equal "dep", list.head.link.data
    assert_equal "bop", list.head.link.link.data
  end

  def test_all_single_value
    list = LinkedList.new("deep")
    assert_equal "deep", list.all
  end

  def test_all_two_values
    list = LinkedList.new("deep dep")
    assert_equal "deep dep", list.all
  end

  def test_all_three_values
    list = LinkedList.new("deep dep bop")
    assert_equal "deep dep bop", list.all
  end

  def test_count
    list = LinkedList.new("deep dep bop")
    assert_equal 3, list.count
  end

  def test_append_one_value
    list = LinkedList.new("deep")
    list.append("dep")
    assert_equal "deep dep", list.all
  end

  def test_append_two_values
    list = LinkedList.new("deep")
    list.append("dep bop")
    assert_equal "deep dep bop", list.all
  end

  def test_pop_one_value
    skip
    list = LinkedList.new("deep dep")
    list.pop("dep")
    assert_equal "deep", list.all
  end

  def test_prepend_one_value
    list = LinkedList.new("deep")
    list.prepend("dep")
    assert_equal "dep deep", list.all
  end

  def test_prepend_two_values
    skip
    list = LinkedList.new("deep")
    list.prepend("dep bop")
    assert_equal "dep bop deep", list.all
  end

  def test_insert_one_value
    skip
    list = LinkedList.new("deep dep")
    list.insert("bop", 1)
    assert_equal "deep bop dep", list.all
  end

  def test_includes?
    list = LinkedList.new("deep dep bop")
    assert_equal true, list.includes?("dep")
  end

  def test_find_one_value
    skip
    list = LinkedList.new("deep dep bop")
    assert_equal "dep", list.find(1, 1)
  end

  def test_find_two_values
    list = LinkedList.new("deep dep bop")
    assert_equal "dep bop", list.find(1, 2)
  end

end
