class Johntodo < ActiveRecord::Base
	validates :text, :done, presence: true 
	validates :text, format: { :with => /\A["a-z""A-Z"]+\z/}
	validates :done, numericality: true
end
