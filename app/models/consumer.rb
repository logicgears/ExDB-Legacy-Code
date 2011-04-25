class Consumer < ActiveRecord::Base

  validates_presence_of :name 
  has_many :products

  def consumer_name
    consumer.name if consumer
  end

  def consumer_name=(name)
    self.consumer = Consumer.find_by_name(name) unless name.blank?
  end
end
