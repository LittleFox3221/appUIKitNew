//
//  ViewController.swift
//  appUIKitNew
//
//  Created by Сергей Оськин on 02.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var mainSlider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var buttonDone: UIButton!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var switchHideElements: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - SegmentedControl
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        // MARK: - Label
        
        mainLabel.font = mainLabel.font.withSize(17)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        //MARK: - Slider
        
        mainSlider.value = 0
        mainSlider.thumbTintColor = .purple
        mainSlider.minimumTrackTintColor = .purple
        mainSlider.maximumTrackTintColor = .black
        
        // MARK: - Text Field
        
        // MARK: - Button
        
        buttonDone.layer.cornerRadius = 10
        
        // MARK: - Date Picker
        
        datePicker.locale = .current
        
        // MARK: - Switch
        switchHideElements.setOn(false, animated: true)
        
    
    }
    
    @IBAction func actionSegmentedControl() {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Выбран элемент с индексом - 0"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Выбран элемент с индексом - 1"
            mainLabel.textColor = .blue
        case 2:
            mainLabel.text = "Выбран элемент с индексом - 2"
            mainLabel.textColor = .green
            
        default:
            break
        }
    }
    @IBAction func actionValueSlider() {
       
        mainLabel.text = String("Значение ползунка слайдера - \(Int(mainSlider.value))")
        mainLabel.textColor = .purple
    }
    
    @IBAction func actionDoneTouchButton() {
        
        if let name = textField.text {
            mainLabel.text = name
            mainLabel.textColor = .black
        } else if textField.text == nil {
            mainLabel.text = "Имя не введено!"
            mainLabel.textColor = .red
        }
    }
    @IBAction func actionDatePicker() {
        
        let setDate = datePicker.date
        let dateForm = DateFormatter()
        dateForm.dateFormat = "DD/MM/YY"
        mainLabel.text = dateForm.string(from: setDate)
        
    }
    @IBAction func switchHideElementsAction() {
        
        segmentedControl.isHidden = switchHideElements.isOn
        mainLabel.isHidden = switchHideElements.isOn
        mainSlider.isHidden = switchHideElements.isOn
        textField.isHidden = switchHideElements.isOn
        buttonDone.isHidden = switchHideElements.isOn
        datePicker.isHidden = switchHideElements.isOn
        
    }
    
}

