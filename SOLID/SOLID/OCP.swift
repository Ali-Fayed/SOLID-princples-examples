//
//  OCP.swift
//  SOLID
//
//  Created by fixed on 08/07/2021.
//

import Foundation
import UIKit

// MARK:- This Class Conform OCP

class Users {

    func addNewUser () {

    }
    func removeUser () {

    }
    func editUsersList () {

    }

}

extension Users {

    func addMarkToSpecficUser () {

    }
}

// MARK:- This Class Don't Conform OCP

class Users2 {

    func addNewUser () {

    }
    func removeUser () {

    }
    func editUsersList () {

    }

    // class is finished and unit test is done but if we add this after that this is no recommended
    func addMarkToSpecficUser () {

    }

}
