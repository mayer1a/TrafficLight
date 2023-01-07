//
//  GreenLightState.swift
//  TrafficLight
//
//  Created by Artem Mayer on 21.12.2022.
//

import UIKit

final class GreenLightState {

    // MARK: - Properties

    private(set) var isCompleted: Bool = false
    private(set) weak var mainViewController: MainViewController?

    // MARK: - Construction

    init(mainViewController: MainViewController) {
        self.mainViewController = mainViewController
    }

    // MARK: - Functions

    func begin() {
        mainViewController?.redLightView?.backgroundColor = UIColor.darkRedColor
        mainViewController?.yellowLightView?.backgroundColor = UIColor.darkYellowColor
        mainViewController?.greenLightView?.backgroundColor = .systemGreen
    }

    func turnLightOn() {
        isCompleted = true
    }
}

// MARK: - Extensions

extension GreenLightState: TrafficLightState { }
