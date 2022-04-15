---
  layout: post
  title:  Side Project Journal - Apartment Hunting Scraper
  date:   2022-04-15 11:22:16 -0500
  categories: tech
  description: A side project that helped us find a new place to live
---

It’s nearly been a year since we moved to Austin, and it’s time to move apartments. We secured our next apartment, and it’s thanks to a dash of helpful software...

When we were touring apartment complexes, the advice we got to find our perfect unit was to constantly refresh their websites, and check for the right floorplan at the right price, available at the right time. 

🥴 Constant refreshing? Sounds like something that a script could help with.

I grabbed my daily driver programming language, Ruby, and with a handful of gems, I built a scraper that presented data on the floorplans we were looking for.

10 minutes of checking apartment websites a day turned into one quick terminal command. 🪄

This post is by no means an exhaustive tutorial, but rather a journal entry to capture my process of building this useful little tool.

### Scraping

To scrape, I used `nokogiri` — a well known HTML / XML parser implemented in Ruby. [Nokogiri](https://nokogiri.org/) makes searching through HTML elements and extracting data a breeze, abstracting a lot of work that would be spent parsing out tags from plain text.

I was looking for 3 pieces of information:

- Unit Number
- Rent
- Date Available

With a good amount [Pry-ing](https://pry.github.io/) into the captured markup, it was relatively easy to pull that data out of a table.

Thankfully, the websites I was scraping have consistent and well-structured urls, and html, including handy tables that had all the information I needed. 

Ultimately, I ended up scraping only two complexes’ websites, but they were our top two, and the script definitely saved us time. For a couple of hours of work, it was faster and easier to check on the status of certain apartment units via my terminal than visiting multiple web pages, scrolling and repeating.

### Customizing and scaling

The awesome part about building a scraper (and potentially the whole reason to build one) is to separate signal from noise. It’s to clean up all the extraneous nonsense that we didn’t care about and highlight only the information that we did.

The other issue was one of scale. I could scrape a single page, and a single table with ease, but what about one command that would scrape multiple pages at once? 

Each apartment complex conveniently had a slug with the floorplan and the floorplan’s id `/floorplans/#{id}` . (Ah, how I love predictably CRUDdy applications 💙)

To that end, I created a “preferences” hash in a Ruby file that simply listed the apartment’s name (as it appears in the apartment's url) followed by an array containing all of the floorplans that we found interesting.

Here it is:

```ruby
# preferences.rb

PREFERENCES = {
  midtowncommons: [
    "b3",
    "b4",
    "b5",
    "b1x---phase-2",
    "b2x---phase-2",
    "b3x---phase-2",
    "b4x---phase-2"
  ],
  fivetwoapartments: [
    "a9", "a10", "a11", "a12"
  ]
}
```

The awesome part is that the floorplans are the names of the floorplan and the slug needed for the url. After modifying my script, I got it to loop through each of these and run the scraper!

### Presenting

After all the data was being scraped in one go, it was time to present it in an easily readable way.

The first thing to do was make the terminal experience better. So I reached for Terminal Table, a Ruby implementation of an ASCII table that prints itself to the terminal.

It organizes a plain Ruby array of arrays into a nice looking table. With a dash of color using the Colorize gem, the table looked great!

The final product: 🎊

![Apartment Hunting Scraper Screenshot](/images/2022-04-15-apartment-hunting-scraper.png)

### Final Thoughts

This project was not only fun, but it was also illustrative of the power of software. With a sharp enough mind, inconveniences and time-wasting problems can become trivial and frictionless. 

This project also had me reflecting on how my skills continue to grow, now that I develop software professionally. Something like this may have taken me considerably longer just a year ago, but now it’s become pretty easy. That makes me very excited about what things I’ll be conjuring up a year from now.

Finally, a question for future me, and you, reader. What’s something you’ve gotten better at this year? And what are some small problems that you can tackle?

Until next time!