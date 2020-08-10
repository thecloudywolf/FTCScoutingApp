//
//  ViewController.swift
//  FTC-Scouting
//
//  Created by Koen Flynn on 7/20/20.
//  Copyright © 2020 Cheese. All rights reserved.
//

import UIKit

class TestView : UIView {
    @IBAction func NumberTeam( sender: UITextField){
        
    }
class ViewController: UIViewController {
    
    @IBOutlet weak var teamNumber: UITextField!
    @IBOutlet weak var pointsAuto: UITextField!
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        teamNumber.inputAccessoryView = toolBar
        pointsAuto.inputAccessoryView = toolBar
    }
    @objc func doneClicked(){
        view.endEditing(true)
    }
  }
}
