//
//  ViewController.swift
//  The ArithMETic App
//
//  Created by SandeepDevineni on 14/02/19.
//  Copyright © 2019 SandeepDevineni. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
 
    
    var selectActivitysdone:String = "Select Activity"
    let activitysdone = ["Select Activity","Bicycling","Jumping rope","Running - slow","Running - fast","Tennis","Swimming"]
    
    
    @IBOutlet weak var ActivityDonePick: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return activitysdone.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectActivitysdone = activitysdone[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return activitysdone[row]
    }
    
    
    
   
    @IBOutlet weak var WeightTF: UITextField!
    
    
    @IBOutlet weak var ExerciseDoneTF: UITextField!
   
    
    @IBOutlet weak var EnergyConsumedLB: UILabel!
    
    
    @IBOutlet weak var TimeLose1PoundLB: UILabel!
    @IBAction func calculate(_ sender: Any) {
        let weight = Double(WeightTF.text!)
        let exerciseDone = Double(ExerciseDoneTF.text!)
        if weight == nil || exerciseDone == nil || selectActivitysdone == "Select Activity" {
            
        }
        else {
            let energyConsumed  = ExerciseCoach.energyConsumed(during:selectActivitysdone,weight:weight!,time:exerciseDone!)
            let timetoLose1Pound = ExerciseCoach.timeToLose1Pound(during:selectActivitysdone,weight:weight!)
            EnergyConsumedLB.text = "\(energyConsumed) cal"
            TimeLose1PoundLB.text = "\(timetoLose1Pound) minutes"
        }

        
    }
    
    @IBAction func clear(_ sender: Any) {
        selectActivitysdone = " "
        WeightTF.text = " "
        ExerciseDoneTF.text = " "
        EnergyConsumedLB.text = "0 cal "
        TimeLose1PoundLB.text = "0 minutes"
        ActivityDonePick.selectRow( 0 , inComponent:0, animated:true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

