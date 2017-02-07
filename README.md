# iOS Stopwatch In-Class Lab

## Basic Instructions

Clone this repository and open the project in Xcode.  Once you have done that, follow the instructions in the code to fill out the functionality of this stopwatch app.

## Steps to Follow

1. You should start by following the instructions found in the ViewController.swift file.  You should open it in the Assistant mode along with the Main.storyboard.
2. You will need to create a new View Controller called AddTimeViewController.  See the instructions below on how to do this.
3. Connect the two scenes together, following the instructions in the code.
4. Code snippits are provided below for particular functionality to minimize Googling.

## Creating a new View Controller

1. Right click on the Stopwatch folder
2. Choose New File... -> Cocoa Touch Class
3. Give it the name AddTimeViewController
4. Once it is created, embed it in a Navigation Controller
5. Ctrl-click and hold on the + button in the Interface Builder and drag it over to the new Navigation Controller.  Select Show Modally.
6. Now the screen should open when you tap the +!  Add the code needed in prepare() to pass the current time over to the AddTimeViewController by creating a variable in the AddTimeViewController that will hold that string and then set that value in the prepare() function.

## Code Snippits

__Code that will start the stopwatch:__

  print("Starting stopwatch...")
  Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateElapsedTimeLabel(_:)), userInfo: nil, repeats: true)
  stopwatch.start()

__Code to stop the stopwatch:__

  print(stopwatch.elapsedTime)
  stopwatch.stop()

__Code to dismiss the AddTimeViewController screen when you press cancel:__

  dismiss(animated: true, completion: nil)

__Code to show a popup when you "save" the time on the AddTimeViewController:__

  let alertController = UIAlertController(title: "Time Saved!", message: "You just fake saved the time " + timeLabel.text! + "!", preferredStyle: .alert)
        
  let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
  alertController.addAction(defaultAction)
        
  present(alertController, animated: true, completion: nil)



### License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/), by Yong Bakos.

Adapted from https://swifteducation.github.io/teaching_app_development_with_swift/stopwatch.html
