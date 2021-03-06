# <div align="center">Assignment: Odin Flight Booker</div>
---

<div align="center"><b>Ruby Version:</b> 2.7.2</div>  
<div align="center"><b>Rails Verstion:</b> 6.1.1</div>  
<div align="center">
  <a href="https://odin-lucas-flight-booker.herokuapp.com/"><b>See It Live</b></a>
</div>

---
[Assignment page can be found here.](https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-advanced-forms)
We’ll be creating a one-way flight booker. You’ll get lots of practice populating and building dropdown menus, radio buttons, and nested submissions. Let the fun begin!

## Screen 1: Search
For the first screen, you’ll need a dropdown that lists a possible “From” airport and a possible “To” airport. Just assume all flights fly between SFO and NYC. You’ll need to set up a dropdown menu that contains all eligible flights.

This requires relatively vanilla forms that happen to be prepopulated with collections of data. Working with dates will cover a bit of new ground for you.

## Screen 2: Pick a Flight
Once search results are returned, the user just needs to choose from among the eligible flights.

## Screen 3: Passenger Information
Once the user has submitted their chosen flight, it’s time to take their booking information. You’ll need a form to submit the Booking and also create a Passenger object for each passenger who needs a ticket. Don’t worry about creating a separate “Ticket” object, we’ll assume the airline will issue those once the booking is verified.