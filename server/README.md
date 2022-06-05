# Server Files (This is code that is run globally on the server)

## What is the server code?
Server, or Server Code, is code that is run on the server side of the game, away from any players computer. Servers allow for optimal security, and allow larger tasks to be offloaded from the client computer to a server, making a client game more optimized.

## Developer Advice
- The server is/should be the most secure area of your script. Utilize this fact by ensuring all  verifications/validation and rewards are performed on the server to obtain the most optimal security. 
- Keep in mind that anything run on the server not instanced like client code. The code is run once on the server.

## Helper Functions
Any helper functions added to server/functions.lua can be utilized in server side code.
- Abstract your functions and keep the main files clean.