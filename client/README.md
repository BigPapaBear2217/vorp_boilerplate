# Client Files (This is code that is run globally on the Client, players, side)

## What is the client?
Client, or Client Code, is code that is run on the players computer. These are things like animations, visuals, entity management, etc.

## Developer Advice
Due to the nature of client code, any code in the client can be seen/modified by the player if they want to be malicious. Due to this, please ensure you utilize the server side to perform any verifications/validation. 

## Helper Functions
Any helper functions added to server/functions.lua can be utilized in Client side code.
- Abstract your functions and keep the main files clean.