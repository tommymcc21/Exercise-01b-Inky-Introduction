/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> neighborhood_start

== neighborhood_start ==
You are about to go trick or treating. {not bag_pickup:The bag for your candy is on the floor.} The neighborhood extends from east to west.
+ [Take the east route] -> east_route
+ [Take the west route] -> west_route
* [Pick up the bag] -> bag_pickup


== east_route ==
You are in the east route, find a house and grab candy.
+ {bag_pickup} [Grab Reeses] -> first_house 
+ {bag_pickup} [Grab KitKat] -> first_house
+ {bag_pickup} [Grab Nerds] -> first_house
+[Go back] -> neighborhood_start
-> END

== west_route ==
You are in the east route, its very crowded.
+ {bag_pickup} [Grab Chips] -> second_house
+ {bag_pickup} [Grab StarBursts] -> second_house
+[Go back] -> neighborhood_start
-> END

=== bag_pickup ===
You now have a bag.
* [Go back] -> neighborhood_start
-> END

== first_house ==
You got your candy!
-> END

== second_house ==
You finally found some candy on the west route!
-> END








