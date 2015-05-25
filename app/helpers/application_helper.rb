module ApplicationHelper

	def get_season()

		time = Time.new

		if(time.month >= 3) && (time.month <= 5)
			"Yeah, it is spring!"
		elsif(time.month > 5) && (time.month <= 8)
			"Everyone loves summer"
		elsif(time.month > 8) && (time.month <= 10)
			"The Fall begins!"
		else
			"Winter"
		end
	end

	def get_random_number(max_value = 10)
		rand(max_value)
	end

	def get_random_welcome()
		opening = ["What a beautiful day!",
					"Welcome to our site!",
					"Thank you for stopping by."]

		middle = ["We hope you'll find what you need.",
					"We have a wide selecrion.",
					"Check out our sale items."]

		ending = ["Contact us if you nees help.",
					"We are here to serve you",
					"Call us if you'll need to: (412-555-1212)."]

		"#{opening[rand(3)]} #{middle[rand(3)]} #{ending[rand(3)]}"

	end

	def count_to_10()
		x = 2
		number_list = "1"

		loop do
			number_list = number_list + ", " + x.to_s
			x +=1
			break if x > 10
		end

		"#{number_list}"
	end

end
