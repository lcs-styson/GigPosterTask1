import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![pixies-no-grid](pixies-no-grid.png "Pixies")
 ![pixies-with-grid](pixies-with-grid.png "Pixies")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let limeGreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
let black = Color(hue: 999, saturation: 999, brightness: 0, alpha: 999)

// Begin your solution here...
// create background
canvas.fillColor = black
canvas.drawEllipse(at: Point(x: 200, y: 200), width: 30000, height: 3000)
// uhhhhh make the circles??
canvas.fillColor = limeGreen
for y in stride(from: 0, through: 400, by: 50) {
    
    // Circle Time
    canvas.drawLine(from: Point(x: 100, y: y), to: Point(x: 300, y: 5))
}
/*:
 ## Use Source Control
 
 Remember to commit and push your work before 11:30 AM on Monday, January 13, 2020, please.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

