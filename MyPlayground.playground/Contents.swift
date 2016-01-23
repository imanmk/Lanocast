//: Playground - noun: a place where people can play

import UIKit

// Declare protocol here
protocol ColorSwitchable {
    func switchColor(color: Color)
}

enum LightState {
    case On, Off
}

enum Color {
    case RGB(Double, Double, Double, Double)
    case HSB(Double, Double, Double, Double)
}

class WifiLamp: ColorSwitchable {
    let state: LightState
    var color: Color
    
    func switchColor(color: Color) {
        self.color = color
    }
    
    init() {
        self.state = .On
        self.color = .RGB(0,0,0,0)
    }
}


