# Caesar Cipher

In criptography, Caesar Cipher's one of the simplest ciphers known. The goal is to change each letter of the given string to another letter based on a given number of positions down or up the alphabet. 

The goal of this project is to implement the criptography method. 

## Approach

### First Attempt 
In my first attempt (caesar.rb) I've used two variables representing the alphabet (upper and lower cases), the idea was to loop through the letters and check if, given the number of letters, it would surpass the alphabet size to do the determined calculations. 
Summing up, the program did the work, but it was too verbose and confusing for a human point of view.

### Second Attempt - Refactoring
With this one I decided to take things slow and think about the problem, and realistic approaches to it. 
Remembering one of the lessons and skimming through other's codes, I've realized that using ASCII code would make things much better. Then, I collected the necessary methods in the Ruby documentation, checked the table references and came up with a pseudocode to help with the development. 
You can check what I did inside the `refactored_caesar_cipher.rb`  commented. 