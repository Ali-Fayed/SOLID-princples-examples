//
//  LSP.swift
//  SOLID
//
//  Created by fixed on 08/07/2021.
//

import Foundation
import UIKit

// MARK:- class conform don't LSP

class Personage {
    func compliment() {
        print("Hi there")
    }
}

class Singer: Personage {
    func highFive() {
        compliment()
    }
}

class Waiter: Personage {
   func highFive() {
        compliment()
    }
}


// MARK:- class conform LSP

protocol Friendly {
    func highFive()
}

protocol Angrily {
    func rude()
}
//
extension Friendly {
    func highFive() {
        print("Hello")
    }
}

extension Angrily {
    func rude() {
      print("shit")
    }
}
//
class Personagee {
}

class Singerr: Personage, Friendly{

}

class Waiterr: Personage, Friendly {

}

class Thieff: Personage, Angrily {

}

