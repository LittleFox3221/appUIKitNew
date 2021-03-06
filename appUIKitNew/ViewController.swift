//  ViewController.swift
//  appUIKitNew


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
        textField.backgroundColor = .white
        // MARK: - Button
        
        buttonDone.layer.cornerRadius = 10
        
        // MARK: - Date Picker
        
        datePicker.locale = .current
        
        // MARK: - Switch
        switchHideElements.setOn(false, animated: false)
        
    
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
            
        default: break
        }
    }
    @IBAction func actionValueSlider() {
       
        mainLabel.text = String("Значение ползунка слайдера - \(Int(mainSlider.value))")
        mainLabel.textColor = .purple
    }
    
    @IBAction func actionDoneTouchButton() {
        guard let text = textField.text, !text.isEmpty else { return mainLabel.text = "Имя не задано"  }
        mainLabel.text = text
        mainLabel.textColor = .black
        
        
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

