//
//  YellowLightState.swift
//  TrafficLight
//
//  Created by Artem Mayer on 21.12.2022.
//

import Foundation

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
        mainViewController?.redLightView?.backgroundColor = #colorLiteral(red: 0.3137254902, green: 0.09803921569, blue: 0.09803921569, alpha: 1)
        mainViewController?.yellowLightView?.backgroundColor = .systemYellow
        mainViewController?.greenLightView?.backgroundColor = #colorLiteral(red: 0.09803921569, green: 0.1960784314, blue: 0.09803921569, alpha: 1)
    }

    func turnLightOn() {
        isCompleted = true
    }
}

// MARK: - Extensions

extension YellowLightState: TrafficLightState { }
