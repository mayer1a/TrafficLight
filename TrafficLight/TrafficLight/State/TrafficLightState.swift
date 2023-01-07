//
//  TrafficLightState.swift
//  TrafficLight
//
//  Created by Artem Mayer on 21.12.2022.
//

import Foundation

protocol TrafficLightState {

    // MARK: - Properties

    var isCompleted: Bool { get }

    // MARK: - Functions

    func begin()

    func turnLightOn()
}
