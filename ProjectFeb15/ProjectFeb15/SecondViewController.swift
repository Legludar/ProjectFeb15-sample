//
//  SecondViewController.swift
//  ProjectFeb15
//
//  Created by David on 2/15/21.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var topTitleLabel: UILabel!
    @IBOutlet weak var secondViewImage: UIImageView!
    @IBOutlet weak var actionButton: UIButton!
    
    var transferData = String()
    var tranferPic = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()

        topTitleLabel.text = transferData
        secondViewImage.image = tranferPic
    }
 
    @IBAction func actionButtonPressed(_ sender: UIButton) {
    }
}
