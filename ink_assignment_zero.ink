Welcome to Bork.
West of Dog House. 

You are in an open field west of a big white dog house with a boarded front door. 
You can smell a bone near. 

-> Initial_Directions
== Initial_Directions ==
* [Go North] -> Go_North
* [Go East] -> Go_East
* [Go West] -> Go_West
+ [Go South] -> Go_South
* [Dogs don't know directions??] -> No_Direction

-> Second_Directions
== Second_Directions ==
* [Tree] -> Go_North
* [House] -> Go_East
* [Flower Field] -> Go_West
* [I SEE A SQUIRREL] -> Chase_Squirrel

-> Dirt_One
== Dirt_One ==
You dig up the surrounding dirt. You find nothing. -> Initial_Directions

-> Dirt_Two
== Dirt_Two ==
You dig up the surrounding dirt. You find nothing. 
* [Go North] -> Go_North

-> Dirt_Three
== Dirt_Three ==
You dig up the surrounding dirt. You find an old key. 
* [Go North] -> Go_North


//SOUTH STORY 
-> Chase_Squirrel
== Chase_Squirrel ==
You chase the squirrel vigourously to no avail. You are tired. 
* [Sleep]

-> Go_Sleep 
== Go_Sleep ==
You wake up well rested. You must not forget your goal. Find. The. Bone. 
* [Dig nearby pile of dirt] -> Dirt_One
* [Go North] -> Go_North
* [Go East] -> Go_East
* [Go West] -> Go_West

== Go_South ==
there is something here 
-> Initial_Directions
-> DONE


//NORTH STORY 

== Go_North ==
there is something here 
-> END

//EAST STORY 
== Go_East ==
there is something here 
-> END

//WEST SIDE STORY 
== Go_West ==
there is something here 
-> END

== No_Direction ==
Then look around.
-> Second_Directions
