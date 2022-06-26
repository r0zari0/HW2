//
//  ViewController.swift
//  Prototipe
//
//  Created by Max Stovolos on 6/24/22.
//

import UIKit

enum CurrentLight{
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLigth: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
     
    private var currentLight = CurrentLight.yellow
    private let lightIsOff: CGFloat = 0.3
    private let lightisOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = lightisOn
        yellowLigth.alpha = lightIsOff
        greenLight.alpha = lightIsOff
       
        setUpView()
    }
    
    func setUpView() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLigth.layer.cornerRadius = yellowLigth.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
 
    @IBAction func buttonAction(_ sender: Any) {
        
        switch currentLight {
        case .red:
            redLight.alpha = lightisOn
            greenLight.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLigth.alpha = lightisOn
            currentLight = .green
        case .green:
            yellowLigth.alpha = lightIsOff
            greenLight.alpha = lightisOn
            currentLight = .red
        }
    }
        
    }

