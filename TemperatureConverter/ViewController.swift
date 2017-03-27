//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by mark on 3/27/17.
//  Copyright © 2017 Me and Mark Publishing. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var celsiusTextField: NSTextField!
    @IBOutlet weak var fahrenheitLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func convertToFahrenheit(_ sender: AnyObject) {
        if let celsiusTemperature = Float(celsiusTextField.stringValue) {
            let fahrenheitTemperature = convert(celsius: celsiusTemperature)
            fahrenheitLabel.stringValue = fahrenheitTemperature.description
        }
    }
    
    func convert(celsius: Float) -> Float {
        return ((celsius * 1.8) + 32.0)
    }
}

