require 'erb'

x = 42
y = 2
animals = ["cat","aligator","whale"]
me = {:name => "Roberto", :eyes => "brown", :shirt =>"grey"} 
numbers = [1, 2, 3, 4]

erb_string = "

<h1><%= me[:name] + "'s " + "Blog"%></h1>

<ul>
	<% animals.each do |animal| %>
		<li><%= animal.upcase.reverse %></li>
	<% end %>
</ul>
 
<p><%= 'My name is ' + me[:name] + ', my eyes are ' + me[:eyes] + '.' %></p>

<p><%= 'Let\\'s do some numbers! '  + numbers.last.to_s + '! is ' + numbers.inject(:*).to_s %></p>
"



template = ERB.new(erb_string)
puts template.result(binding)

