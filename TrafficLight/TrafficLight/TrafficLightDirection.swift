//
//  TrafficLight.swift
//  TrafficLight
//
//  Created by Artem Mayer on 21.12.2022.
//

import Foundation

public enum TrafficLightDirection {
    case up
    case down

    var toggle: TrafficLightDirection {
        switch self {
        case .up:
            return .down
        case .down:
            return .up
        }
    }
}
