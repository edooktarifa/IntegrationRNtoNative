//
//  SencondViewController.swift
//  NativeApp
//
//  Created by Phincon on 10/08/23.
//

import UIKit
import React
import Foundation

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .orange
    }
    
    @IBAction func btnBackToReactScreen(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }

}
