//
//  ViewController.swift
//  TrafficLights
//
//  Created by Фуад Гейдаров on 23.07.2023.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController:  UIViewController {
    
    @IBOutlet var changeLightButton: UIButton!
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeLightButton.layer.cornerRadius = 10
        
        redLightView.layer.cornerRadius = 10
        yellowLightView.layer.cornerRadius = 10
        greenLightView.layer.cornerRadius = 10
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeLight() {
        
        if redLightView.alpha == 0.3 || yellowLightView.alpha == 0.3
            || yellowLightView.alpha == 0.3 {
            changeLightButton.setTitle("START", for: .normal)
        }  else {
            changeLightButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            currentLight = .green
        case .green:
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
            currentLight = .red
        }
    }
}
