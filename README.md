# orbit
A IOS RealityKit application to improve Student Engagement at UTDallas
[Check out our featured news article on the Mercury!](https://utdmercury.com/student-app-helps-keep-track-of-utd-events/)

## Inspiration
After the Founder’s Computer Lab closed last night at 7:45pm, we were forced to work in a hallway of the Founder’s building. In the hallway, we saw a large bulletin board filled to the brim with flyers and pamphlets. We then brainstormed for ideas that would encourage student engagement by consolidating the functionality of the bulletin board in an app.

## What it does
Across UTD, there is a plethora of bulletin boards that are walked past by thousands of students each day. Regardless of all this traffic, however, it is very rare for students to stop and scan flyers and notices of events during the hectic rush between classes. The process of finding a flyer interesting, reading through the details of the event, and adding the event to your calendar takes too long for a student trying to rush to their next class. With Orbit, a simple scan of a flyer can allow users to view details of an event on the go, and even add it to the calendar on their phone! Using extended reality technology, we hope to promote student engagement at UT Dallas and encourage a positive campus culture.

## How I built it
We built the application by integrating RealityKit technology with Swift, as well as by utilizing Apple’s in-build API “EventKit” to manage the calendar of the user’s phone. Lastly, we used the collaborative UI/UX design tool Figma to create each page of the app as well as the cards for each flyer.

## Challenges I ran into
One of the biggest challenges was the integration of RealityKit with Swift. Many photos taken of the flyers were too large for the SDK to process and hold as a marker, and it was very difficult to get a quality picture without causing errors in the production process. We initially made the mistake of trying to develop an overly-ambitious app which required us to pivot halfway through the hackathon. Although this gave us less time to work on the hack, we learned through this experience about how to effectively approach an idea by setting realistic goals and being ready to abandon it if those goals aren’t met.

## Accomplishments that I'm proud of
Despite coming across many difficulties, at the end of the day, we finally had a functional prototype and even met a few of our stretch goals. We were very proud of our ability to work through our drastic pivot and still build a very solid interface on top of our proof of concept.

## What I learned
We learned the obstacles and general difficulties of creating an application in just under 24 hours. Although many of the ideas we brainstormed were solid app ideas, we had to ensure to not get overly ambitious considering our constraints of time and resources. We also learned about the physical toll of working continuously for such long hours, and learned how to prioritize our time and partition our work to stay healthy and productive.

## What's next for Orbit
In the future, Orbit will use geolocation to track the amount of time spent at an event (which determines how many “stars” the user earns for attending the event), as well as which events on campus are trending. Additionally, access control will be implemented to differentiate regular users from, say, club officers, who will be able to organize events for users to sign up for through the app.

### Built With:
- eventkit
- figma
- realitykit
- swift


