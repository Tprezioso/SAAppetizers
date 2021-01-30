//
//  User.swift
//  SAAppetizers
//
//  Created by Thomas Prezioso Jr on 1/29/21.
//

import Foundation


struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
