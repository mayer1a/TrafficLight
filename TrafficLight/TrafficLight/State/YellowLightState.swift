//
//  YellowLightState.swift
//  TrafficLight
//
//  Created by Artem Mayer on 21.12.2022.
//

import UIKit

final class YellowLightState {

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
        mainViewController?.yellowLightView?.backgroundColor = .systemYellow
        mainViewController?.greenLightView?.backgroundColor = UIColor.darkGreenColor
    }

    func turnLightOn() {
        isCompleted = true
    }
}

// MARK: - Extensions

extension YellowLightState: TrafficLightState { }
