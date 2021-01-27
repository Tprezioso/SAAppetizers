//
//  Alert.swift
//  SAAppetizers
//
//  Created by Thomas Prezioso Jr on 1/17/21.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: - Network Alerts
    static let invalidData = AlertItem(title: Text("Server Error Invaild Data"),
                                       message: Text("The data from the server was invalid. Please contact support"),
                                       dismissButton: .default(Text("OK")))

    static let invalidResponse = AlertItem(title: Text("Server Error Invaild Response"),
                                           message: Text("Invalid resposne from the server. Please try again later"),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error Invaild URL"),
                                      message: Text("There was a issue connecting to the server. If this persists please contact support"),
                                      dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete the request at this time. Check internet connection"),
                                            dismissButton: .default(Text("OK")))

    //MARK: - Account Alerts
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please make sure all the form fields have been filled out"),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please insure your email is correct."),
                                            dismissButton: .default(Text("OK")))
}
