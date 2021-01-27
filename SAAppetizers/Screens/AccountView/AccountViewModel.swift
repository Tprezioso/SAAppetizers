//
//  AccountViewModel.swift
//  SAAppetizers
//
//  Created by Thomas Prezioso Jr on 1/27/21.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()

    @Published var extraNapkins = false
    @Published var frequentRefills = false

    @Published var alertItem: AlertItem?

    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        
        print("changes have been saved")
    }
}
