# LocalWizard

A Town-Building Auto-Battler

V - 0.01 - not really much of a game yet

Current goals:
    -Create central spire object
    -Set up lose conditions
    -Implement Knockback on Players and Allies
    -Implement basic UI
    -Add player controlled levelling
    -Move obj_cat logic into obj_ally to make it universal
    -Make obj_ally able to wander vertically

Known Bugs:
    -obj_cat will wander off screen and get trapped in a loop at enemy spawn.
        -Will need to fix by adding a return state where if an ally gets near the edge of the room, they turn around and walk towards the center of the room.