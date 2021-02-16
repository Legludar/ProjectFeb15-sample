//
//  ViewController.swift
//  ProjectFeb15
//
//  Created by David on 2/15/21.
//

import UIKit



class MainViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var characterClasses = ["Mage", "Warrior", "Hunter", "Shaman", "Paladin", "Warlock", "Druid"]
    //var characterRaces = ["Human", "Dwarf", "Night Elf", "Gnome", "Orc", "Troll", "Undead", "Tauren"]
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var actionButton: UIButton!
    
    var transferData = String()
    var tranferPic = #imageLiteral(resourceName: "arizona1")
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return characterClasses.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //if component == 0{
            return characterClasses[row]
        //}
        //return characterRaces[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //let wowClasses = characterClasses[pickerView.selectedRow(inComponent: 0)]
        //let wowRaces = characterRaces[pickerView.selectedRow(inComponent: 1)]
        //label.text = "You have selected a \(wowRaces) \(wowClasses)"
        transferData = characterClasses[row]
        label.text = transferData
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func actionButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "show second", sender: SecondViewController.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show second", let destination = segue.destination as? SecondViewController{
            destination.transferData = self.transferData
            destination.tranferPic = self.tranferPic
        }
    }
    
}

