# TRP: Copied from Rails 3RC1 on 8/17/2010 (not available in Rails2)
module Kernel
  # Returns the object's singleton class.
  def singleton_class
    class << self
      self
    end
  end unless respond_to?(:singleton_class) # exists in 1.9.2

  # class_eval on an object acts like singleton_class.class_eval.
  def class_eval(*args, &block)
    singleton_class.class_eval(*args, &block)
  end
end