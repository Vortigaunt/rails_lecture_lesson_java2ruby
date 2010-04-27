class BinaryTree
	
	def initialize(value)
		@content = value
	end
	
	def insert(value)
		if value < @content
			
			if !@left
				@left = BinaryTree.new(value)
			else
				@left.insert(value)
			end
		
		else
			
			if !@right
				@right = BinaryTree.new(value)
			else
				@right.insert(value)
				
			end
		end
	end
	
	def traverse
		
		ret = ""
		
		if @left
			ret << @left.traverse()
		
		end
		
		ret << "#{@content} "
		
		if @right
			ret << @right.traverse()
		
		end

		return ret 
	end
end

root = BinaryTree.new(5)

root.insert(9)
root.insert(4)
	
puts root.traverse()