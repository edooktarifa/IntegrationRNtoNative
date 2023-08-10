//
//  ViewController.swift
//  NativeApp
//
//  Created by Phincon on 10/08/23.
//

import UIKit
import React

class ViewController: UIViewController {

    @IBOutlet weak var textFieldView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnGoToReactView(_ sender: UIButton){
        let messageFromNative: String = textFieldView.text!
        let rootView = RNViewManager.sharedInstance.viewForModule("RnApp", initialProperties: ["message_from_native": messageFromNative])
        let reactNativeVC = UIViewController()
        reactNativeVC.view = rootView
        reactNativeVC.modalPresentationStyle = .formSheet
        present(reactNativeVC, animated: true)
    }

}

