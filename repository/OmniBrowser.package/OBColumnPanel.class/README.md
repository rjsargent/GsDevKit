OBColumnPanel handles navigation around the nodes of the object graph. It maintains a list of columns, which track the user's path through the node tree. As nodes are selected, additional columns are added to the list, which appear as panes on the right of the panel. 

iVars:

columns	- A collection of OBColumns, each of which manages a single pane in the scroller.
minPanes - The minimum number of panes that should ever be visible.
maxPanes - The maximum number of panes that should ever be visible.
