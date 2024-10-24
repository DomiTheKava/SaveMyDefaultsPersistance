//
//  ViewController.swift
//  SaveMyDefaultsPersistance
//
//  Created by Dominik Penkava on 10/24/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiImageView: UIImageView!
    
    @IBOutlet weak var sliderBar: UISlider!
    
    @IBOutlet weak var switchButton: UISwitch!
    
    @IBOutlet weak var serialNumberEntry: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSaveClicked(_ sender: Any) {
        UserDefaults.standard.set(serialNumberEntry.text, forKey: "Text")
        UserDefaults.standard.set(switchButton.isOn, forKey: "Switch")
        UserDefaults.standard.set(sliderBar.value, forKey: "Slider")
    }
    
    @IBAction func btnLoadClicked(_ sender: Any) {
        switchButton.isOn = UserDefaults.standard.bool(forKey: "Switch")
        sliderBar.value = UserDefaults.standard.float(forKey: "Slider")
        serialNumberEntry.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    @IBAction func btnDeleteClicked(_ sender: Any) {
        sliderBar.value = 0.5
        serialNumberEntry.text = ""
        switchButton.isOn = true
    }
}

