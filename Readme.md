
Discord - https://discord.gg/3WYz3zaqG5

# A Random Box for QBCore Framework

-- Does exactly what it says on the tin(title), adds a box that when opened gives a random item or items based on what you configure it to. these boxes can be placed anywhere. 

## Please note

- Please make sure u use the latest dependencies aswell as core for this in order to work.

- This Job has been tested on the latest build as of 06/07/2022.


## Dependencies :

QBCore Framework - https://github.com/qbcore-framework/qb-core

qb-input - https://github.com/qbcore-framework/qb-input


## Credits : 

- qbcore team for their amazing scripts.
-MT scripts for a snippet of code that let me spawn props. 


## Insert into @qb-core/shared/items.lua 

```
QBShared.Items = {
--qb-randombox
	
    ['randombox']                	 = {['name'] = 'randombox', 	            	['label'] = "Random Box", 	       	['weight'] = 300, 		['type'] = 'item', 		['image'] = 'randombox.png', 	         	['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Random Box'},
    ['randomcase']              	 = {['name'] = 'randomcase', 	             	['label'] = "Random Case", 	       	['weight'] = 300, 		['type'] = 'item', 		['image'] = 'randomcase.png', 	         	['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Random Case'},
	['randombag']                	 = {['name'] = 'randombag', 	            	['label'] = "Random Bag", 	       	['weight'] = 300, 		['type'] = 'item', 		['image'] = 'randombag.png', 	         	['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Random Trash Bag'},
    ['randomammo']                	 = {['name'] = 'randomammo', 	            	['label'] = "Old Ammo Case", 	   	['weight'] = 300, 		['type'] = 'item', 		['image'] = 'randomammo.png', 	         	['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'An Old Ammo Case'},
    ['randommedkit']               	 = {['name'] = 'randommedkit', 	            	['label'] = "Old Medkit", 	       	['weight'] = 300, 		['type'] = 'item', 		['image'] = 'randommedkit.png', 	       	['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'An Old Medkit'},
    ['randomgun']                	 = {['name'] = 'randomgun', 	            	['label'] = "Gun Case", 	       	['weight'] = 300, 		['type'] = 'item', 		['image'] = 'randomgun.png', 	         	['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'An Old Gun Case'},
       	
}

```
## DISCLAIMER - Any item you add to the box,case must be in your shared/items.lua too. 
## Insert Contents of @randombox/Images into @qb-inventory/HTML/Images

