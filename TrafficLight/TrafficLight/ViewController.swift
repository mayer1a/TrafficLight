//
//  ViewController.swift
//  TrafficLight
//
//  Created by Artem Mayer on 21.12.2022.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView?
    @IBOutlet weak var yellowLightView: UIView?
    @IBOutlet weak var greenLightView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()

        redLightView?.layer.cornerRadius = 75
        redLightView?.layer.borderColor = UIColor.systemRed.cgColor
        redLightView?.layer.borderWidth = 1

        yellowLightView?.layer.cornerRadius = 75
        yellowLightView?.layer.borderColor = UIColor.systemYellow.cgColor
        yellowLightView?.layer.borderWidth = 1

        greenLightView?.layer.cornerRadius = 75
        greenLightView?.layer.borderColor = UIColor.systemGreen.cgColor
        greenLightView?.layer.borderWidth = 1
    }


}

