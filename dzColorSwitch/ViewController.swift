//
//  ViewController.swift
//  dzColorSwitch
//
//  Created by Sergei on 1/16/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var mainColorView: UIView!
    
    
    @IBOutlet var redTextLabel: UILabel!
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    
    
    @IBOutlet var greenTextLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    
    @IBOutlet var blueTextLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        mainColorView.layer.cornerRadius = 15
        
       
        
        redSlider.maximumValue = 255
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.maximumValue = 255
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.maximumValue = 255
        blueSlider.minimumTrackTintColor = .blue
        
        
        redTextLabel.text = "red "
        redValueLabel.text = ""
        
        greenTextLabel.text = "green "
        greenValueLabel.text = ""
        
        blueTextLabel.text = "blue "
        blueValueLabel.text = ""
        
        
        
        // Do any additional setup after loading the view.
    }

    
    
    
    
    @IBAction func redSliderAction(_ sender: Any) {
        
        
        redValueLabel.text = String(Int(redSlider.value))
        
        coloredView()
        
        
    }
    
    
    
    @IBAction func greenSliderAction(_ sender: Any) {
        
        
        greenValueLabel.text = String(Int(greenSlider.value))
        
        coloredView()
    }
    
    
    
    @IBAction func blueSliderAction(_ sender: Any) {
        
        blueValueLabel.text = String(Int(blueSlider.value))
        
        coloredView()
    }
    
    
    private func coloredView () { mainColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1)
    }
        

    
}

