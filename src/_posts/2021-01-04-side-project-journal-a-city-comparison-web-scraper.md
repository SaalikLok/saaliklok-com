---
category: Update
layout: post
title: 'Side Project Journal: A City Comparison Web Scraper'
published: 2021-01-04 05:00:00 +0000
description: How I built a scrappy side-project, scraping city comparison data

---
It was a bright morning. Jackie and I were daydreaming about cities that we could live in together, just for the fun of it. What ensued was a flurry of Google searches and data comparison.

I've been learning the basics of the Ruby programming language. It's a versatile and flexible weapon, a beautiful development experience, complete with power. While web frameworks (like Rails) is what Ruby is famously known for, I was on the lookout for a useful but fun project to test my skills with pure Ruby.

With that backdrop, I had a lightbulb moment. 💡

What if I could scrape the city data website I was looking at in order to compare data across multiple different cities, and only extract the data that I cared about?

That's where the idea for City Compr came from. Yes, the name is super lame, and it's dumb that I left out vowels in the word "Compare," but I made a split second decision and I'm rolling with it.

As a program that prints out data to the terminal, I was able to leverage Ruby to scrape websites dynamically, and collect data on any city or town in the US.

In a couple days, I cranked on this. I learned to:

* Download HTML documents into Ruby
* Parse HTML tags with [Nokogiri](https://github.com/sparklemotion/nokogiri)
* Practice string manipulation in Ruby by searching for indexes, and substringing
* Present data in the terminal (with the help of [terminal-table](https://github.com/tj/terminal-table))
* Find a problem, and hack a solution that rapidly gets to a point of usefulness.
  * Map out the problem on paper, and getting very clear with the outcome
  * Use low fidelity sketch mockups to guide the outcome
  * Prioritize the tasks to have the biggest impact, while not compromising quality
* Test early and often.

Want to check out the project? It's open source on Github.

[SaalikLok/City_Compr](https://github.com/SaalikLok/City_Compr)