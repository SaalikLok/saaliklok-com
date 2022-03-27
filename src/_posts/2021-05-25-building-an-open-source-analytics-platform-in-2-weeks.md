---
category: tech
layout: post
title: Building an open source analytics platform in 2 weeks
published: 2021-05-25 04:00:00 +0000
description: Smidgeon Analytics is a small, dead-simple, and open source analytics
  tool that tracks page views on your website or blog.

---
Smidgeon Analytics is a small, dead-simple, and open source analytics tool that tracks page views on your website or blog.

As a culmination of my time at Launch Academy, this project was built as a full stack application with Ruby on Rails and React. It's currently an MVP that has a v1 release. I'm actively developing and adding new features to it.

If you just want to check out the code + demo, go for it, it's open source!

[SaalikLok/smidgeon-analytics](https://github.com/SaalikLok/smidgeon-analytics)

### The Idea

The idea for Smidgeon arose in my desire to track page views on my personal blog / website. Google Analytics is always an option for this, but I found the tool full of feature bloat. That got me curious about how I could create a very simple analytics platform powered by a JavaScript snippet.

I know the power of JavaScript snippets firsthand after having worked at Drift, and I wanted to take a technical deep dive into the vast networking of it. For readers who aren't technically inclined, a JavaScript snippet can be included on a website to fire off some code after a certain event occurs. In this case, it fires off some code whenever a page finishes loading.

To keep the project appropriately scoped (I only had 2 weeks to complete an MVP), I ensured that Smidgeon Analytics tracked page visits to a site and all pages that the JavaScript snippet is installed on, not much more or less.

### How I built it:

The project has a couple different pieces, that all have different jobs:

* Ruby on Rails: this technology powers the backend server. It's in charge of getting data to the right place, at the right time.
* React: a popular frontend library, React powers the visual aspects of the application.
* PostgreSQL: The technology responsible for managing my SQL database.
* A JavaScript Snippet: Written in pure JavaScript and minified, when this code is included on a website and that website is registered in Smidgeon, it will send visit data to Smidgeon's servers whenever anyone lands on that website.

### Notable Features:

* Each website's page includes a data visualization for page views on a monthly basis.
* Smidgeon tracks referring page urls, as well as what paths were visited on the site.

### Technical Challenges

The hardest part of this project was creating the snippet was dealing with CORS. This is cross-origin resource sharing. It's a mechanism that browsers use to ensure that requests that are sent from different clients to different servers are protected (so that no one can bring an application down as easily).

Since my JavaScript snippet uses someone else's client to talk to my server, CORS was not happy with me at first. Understanding this mechanism was the biggest learning from this project.

I'm working on tightening up security and validations over the coming weeks.

I also want to learn more Regex (Regular Expressions). I'm using Regex to validate forms and other pieces of data input, but I'm still not totally sure what I'm doing in that realm. If webdev Twitter is anything to go by, it seems like lots of people don't understand regex. 😅

### Future Plannning

The two primary areas of focus going forward are focused around data validation and data visualization.

As I mentioned in the section above on technical challenges, I want to tighten up validations and security for data input in the app, particularly around CORS protocols.

From a data visualization standpoint, the app currently shows a line graph that displays page views by month. I want users to have more granular control over their data. This would include:

* Date range filters
* Including a downloadable CSV of user data

This project has been a blast to create, and it's useful, to boot. As I dabble in other projects, Smidgeon will live on — I want to add new features incrementally, evolving the project over time.