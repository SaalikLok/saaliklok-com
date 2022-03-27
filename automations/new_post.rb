args = ARGV
title = args.last
date = Date.today
frontmatter_template = %{---
  layout: post
  title:  "#{title}"
  date:   #{Time.now}
  categories: 
  ---}

File.open("src/_posts/#{Time.now.strftime("%Y-%m-%d")}-#{title}.md", "w") do |f|
  f.write(frontmatter_template)
end 

puts "Created a new post 🎉 #{title}"
