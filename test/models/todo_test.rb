require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  def setup
    @subject = FactoryGirl.create :todo
  end
  test "bootstrap_label_class should return" do

    assert_equal "", @subject.bootstrap_label_class

    Todo::LABEL_ENUM.values.reject{|l| l.blank? }.each do |val|
      @subject.label = val
      assert_equal "label-#{val}", @subject.bootstrap_label_class
    end

    @subject.label = ""
    assert_equal "", @subject.bootstrap_label_class
  end
end
