//
//  ViewController.swift
//  TrafficLight
//
//  Created by Artem Mayer on 21.12.2022.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var redLightView: UIView?
    @IBOutlet weak var yellowLightView: UIView?
    @IBOutlet weak var greenLightView: UIView?

    // MARK: - Private properties

    private let dispatchQueue = DispatchQueue(label: "globalSerial")
    private var lightDirection: TrafficLightDirection = TrafficLightDirection.up
    private var currentState: TrafficLightState! {
        didSet {
            currentState.begin()
            currentState.turnLightOn()

            if currentState.isCompleted {
                setNextState()
            }
        }
    }

    // MARK: - Lifecycle

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

        setFirstState()
    }

    // MARK: - Private functions

    private func setFirstState() {
        currentState = GreenLightState(mainViewController: self)
    }

    private func setNextState() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            guard let self = self else { return }
            self.lightDirection = self.nextState(self.lightDirection)
        }
    }

    private func nextState(_ direction: TrafficLightDirection) -> TrafficLightDirection {
        if let _ = currentState as? RedLightState {
            currentState = YellowLightState(mainViewController: self)
            return .down
        }

        if let _ = currentState as? YellowLightState {
            switch direction {
            case .up:
                currentState = RedLightState(mainViewController: self)
                return .up
            case .down:
                currentState = GreenLightState(mainViewController: self)
                return .down
            }
        }

        if let _ = currentState as? GreenLightState {
            currentState = YellowLightState(mainViewController: self)
            return .up
        }

        return .up
    }
}

