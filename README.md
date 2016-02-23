Normal Mode


ESTIMATE:3 hours
REALITY: 6 hours before fully wrapping my head around


Your task tonight is to create a Ruby application which will query multiple API endpoints from Weather Underground, and will present a weather summary to the user. When the user runs the application, he or she will be asked for a zip code, and the summary will be for that location.

Your summary will be puts'ed to the screen, and must include the following (information):
'weather.rb'

Current conditions at that location.
10 day forecast for that location.
Sunrise and sunset times.
Any current weather alerts.
A list of all active hurricanes (anywhere).
Make sure that the summary you display is easy to read for users. A pile of numbers with no descriptors won't do anyone any good.

Your code must be written in classes and be spread across multiple files. It is suggested that you build one class for each API endpoint which you access, and then you create instances of each class when you have parameters to make a call to that endpoint. If you can think of a better way that still involves classes, though, go for it.

Testing is going to be tricky on this one. You should mock the API responses so that you don't need to hit the API every time you run your tests. You should also be able to explain WHY this is good.

No database is needed for Normal Mode.
