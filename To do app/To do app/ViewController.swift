//
//  ViewController.swift
//  To do app
//
//  Created by Carlos Caballero on 10/12/15.
//  Copyright © 2015 IOSDecal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties

    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var task:Tasks?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Using viewcontroller as a delegate
        taskTextField.delegate = self
        
        if let task = task {
            navigationItem.title = task.name
            taskTextField.text = task.name
        }
    }
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hides keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        taskLabel.text = taskTextField.text
    }
    
    // MARK: Navigation
    @IBAction func cancel(sender: UIBarButtonItem) {
        let isPresentingInAddTaskMode = presentingViewController is UINavigationController
        
        if isPresentingInAddTaskMode {
            dismissViewControllerAnimated(true, completion: nil)
        }
        else {
            navigationController!.popViewControllerAnimated(true)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if saveButton === sender {
            let text = taskTextField.text ?? ""
            task = Tasks(name: text)
            
        }
    }
    

}

