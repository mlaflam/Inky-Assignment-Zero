//Start of my story

Welcome to Bork.
West of Dog House. 

You are in an open field west of a big white dog house with a padlocked front door. 
You can smell a bone near. 

//INITIAL DIRECTIONS
-> Initial_Directions
== Initial_Directions ==
+ [Go North] -> Go_North
+ [Go East] -> Go_East
+ [Go West] -> Go_West
+ [Go South] -> Go_South
* [Dogs don't know directions??] -> No_Direction

== No_Direction ==
Then look around.
-> Alternate_Directions

-> Alternate_Directions
== Alternate_Directions ==
+ [Tree] -> Go_North
+ [Flower Field] -> Go_East
* [I SEE A SQUIRREL] -> Chase_Squirrel

//could fix conditional w. directions 
-> Dig
== Dig ==
{ Dig > 2:
    You dig up the surrounding dirt. You find a key. -> House_Direction
    }
{ Dig < 3:
    You dig up the surrounding dirt. You find nothing. -> Dig_Directions
}

-> Dig_Directions 
==Dig_Directions ==
    + [Go North] -> Go_North
    + [Go East] -> Go_East
    + [Go West] -> Go_West
    + [Go South] -> Go_South


//EXTRA DIRECTIONS
-> Sniff
== Sniff ==
You sniff the flowers. It is relaxing. But you must continue your mission. Or else...
+ [Dig near the missing flowers] -> Dig
+ [Go North] -> Go_East
+ [Go West] -> Go_West
+ [Go South] -> Go_South
+ [Sniff more flowers] -> Bee


//DEAD DIRECTIONS
-> Bee
== Bee ==
You sniff more flowers. You feel even better. You go to sniff another flower. There is a bee on it. 
IT STINGS YOU. YOU ARE ALLERGIC.
You start to feel dizzy and pass out. 
No bone for you this time.  
-> END

-> Hollow
== Hollow == 
You stick your snout in the hollow. You can feel something. You try to grab it. 
IT BITES YOU. IT IS A SNAKE.
You start to feel dizzy and pass out. 
No bone for you this time.  
-> END

-> House_Direction
== House_Direction ==
* [Go to house] -> House

-> House
== House ==
//FIX THIS END 
You approach the house. You have the key. 
+ [Use the Key] -> Key

-> Key
== Key ==
//FIX THIS END 
You're a dog. How are you supposed to use a key??
+ [Break down door] -> Bone

-> Bone
== Bone ==
You've found the bone! Best day ever!
-> END


-> North_Directions
== North_Directions ==
+ [Dig nearby pile of dirt] -> Dig
* [Look inside the tree hollow] -> Hollow
+ [Go East] -> Go_East
+ [Go West] -> Go_West
+ [Go South] -> Go_South

-> East_Directions
== East_Directions ==
+ [Dig up near the missing flowers] -> Dig
* [Smell the roses] -> Sniff
+ [Go North] -> Go_North
+ [Go West] -> Go_West
+ [Go South] -> Go_South

-> West_Directions
== West_Directions ==
* [Go North] -> Go_North
* [Go East] -> Go_East
* [Go South] -> Go_South

-> South_Directions
== South_Directions ==
+ [Dig nearby pile of dirt] -> Dig
+ [Go North] -> Go_North
+ [Go East] -> Go_East
+ [Go West] -> Go_West

//SOUTH STORY - squirrel 
-> Chase_Squirrel
== Chase_Squirrel ==
You chase the squirrel vigourously to no avail. You are tired. 
* [Sleep]

-> Go_Sleep 
== Go_Sleep ==
You wake up well rested. You must not forget your goal. Find. The. Bone. 
* [Dig nearby pile of dirt] -> Dig
* [Go North] -> Go_North
* [Go East] -> Go_East
* [Go West] -> Go_West

== Go_South ==
{ Go_South < 2:
    You see a squirrel. MUST CHASE SQUIRREL!
    -> Chase_Squirrel
    }
{ Go_South > 1:
    The squirrel is gone. You notice some upturned dirt. Maybe its where the squirrel's stash is. -> South_Directions
}


//NORTH STORY 

== Go_North ==
You are infront of a large maple tree. At the bottom of the tree there is a small hollow. 
Next to the tree there is a patch of grass with freshly turned up dirt. 
-> North_Directions


//EAST STORY 
== Go_East ==
You are in a lush field of flowers. You notice a patch of flowes missing. 
-> East_Directions

//WEST SIDE STORY 
== Go_West ==
You are back where you started. Go somewhere else. 
-> West_Directions
