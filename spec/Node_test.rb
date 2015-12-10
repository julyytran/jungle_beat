require 'minitest/pride'
require 'minitest/autorun'
require_relative '../lib/node'

class NodeTest < Minitest::Test

  def test_node_can_be_created_with_data_and_link
    node1 = Node.new("a")
    assert_equal node1, node1
  end

  def test_two_nodes_can_created_and_linked
    node2 = Node.new("b")
    node1 = Node.new("a", node2)
    assert_equal node2, node1.link
  end

  def test_three_nodes_can_be_created_and_linked
    node3 = Node.new("c")
    node2 = Node.new("b", node3)
    node1 = Node.new("a", node2)
    assert_equal node3, node2.link
    assert_equal node3, node1.link.link
  end

  def test_tail_points_to_nil
    node3 = Node.new("c")
    node2 = Node.new("b", node3)
    node1 = Node.new("a", node2)
    assert_equal node3.link, nil
    assert_equal node2.link.link, nil
    assert_equal node1.link.link.link, nil
  end

  def test_node_has_data
    node3 = Node.new("c")
    node2 = Node.new("b", node3)
    node1 = Node.new("a", node2)
    assert_equal node3.data, "c"
    assert_equal node2.data, "b"
    assert_equal node1.data, "a"
  end

  def test_node_has_link
    node3 = Node.new("c")
    node2 = Node.new("b", node3)
    node1 = Node.new("a", node2)
    assert_equal node1.link, node2
    assert_equal node2.link, node3
  end

end
