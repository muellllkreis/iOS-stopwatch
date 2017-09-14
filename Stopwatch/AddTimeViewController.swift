//
//  AddTimeViewController.swift
//  Stopwatch
//
//  Created by Matias Rietig on 9/14/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import UIKit

class AddTimeViewController: UIViewController {
    
    var time: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue.text = time
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var currentValue: UILabel!
    
    
    @IBAction func showFakeAlert(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Time Saved!", message: "You just fake saved the time " + time + "!", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }

}
