//
//  GreenLightState.swift
//  TrafficLight
//
//  Created by Artem Mayer on 21.12.2022.
//

import Foundation

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
        mainViewController?.redLightView?.backgroundColor = #colorLiteral(red: 0.3137254902, green: 0.09803921569, blue: 0.09803921569, alpha: 1)
        mainViewController?.yellowLightView?.backgroundColor = #colorLiteral(red: 0.3345420295, green: 0.2787656027, blue: 0.1666006866, alpha: 1)
        mainViewController?.greenLightView?.backgroundColor = .systemGreen
    }

    func turnLightOn() {
        isCompleted = true
    }
}

// MARK: - Extensions

extension GreenLightState: TrafficLightState { }
