require 'csv'
require 'pry'

class Gossip
	attr_accessor :author, :content

	def initialize(author, content)
		@author = author
		@content = content
	end

	def save
  		CSV.open("./db/gossip.csv", "ab") do |csv|
    	csv << ["#{@author}", "#{@content}"]
    end

    def self.all
    	all_gossips = []
    	CSV.read("./db/gossip.csv").each do |csv_line|
    		all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips

    def self.find(id)
      gossips_find = []
      id = id.to_i
          CSV.read("./db/gossip.csv").select.with_index do |csv_line,i|
          gossips_find << Gossip.new(csv_line[0],csv_line[1]) if id == i 
            end
            return gossips_find


    end
    return all_gossips
end
end
end


