//
//  Validations.swift
//  LoginPage
//
//  Created by Himanshu on 3/22/23.
//

import Foundation

class Validations {
    
    //MARK: properties
    let emailValidationRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]+.[A-Za-z]{2,64}"
    
    //MARK: methods
    //username validation
    func validateUsername(_ username: String) -> Bool {
        //check if username is empty
        if username.isEmpty {
            CustomAlertModel.alertTitle = "Please Provide a Username"
            CustomAlertModel.alertText = "The username field is empty. Add a username to proceed."
            return false
        }
        
        return true
    }
    
    //email validation
    func validateEmail(_ email: String) -> Bool {
        
        //check if email string is empty
        if email.isEmpty {
            CustomAlertModel.alertTitle = "Please Provide an Email"
            CustomAlertModel.alertText = "The email field is empty. Add an email address to proceed."
            return false
        }
        
        //remove if any trailing or leading whitespaces are in email string
        let emailTrimmedWhitespaces = email.trimmingCharacters(in: .whitespaces)
        
        //prepare query for checking the email string with the regex
        let emailValidationQuery = NSPredicate(format:"SELF MATCHES %@", emailValidationRegex)
        
        //validate email and store boolean value in isValidEmai
        let isValidEmail = emailValidationQuery.evaluate(with: emailTrimmedWhitespaces)
        
        if !isValidEmail {
            CustomAlertModel.alertTitle = "Invalid Email Address"
            CustomAlertModel.alertText = "The email address you've entered is invalid or wrong."
        }
        
        return isValidEmail
    }
    
    //password validation
    func validatePassword(_ password: String) -> Bool {
        
        if password.isEmpty {
            CustomAlertModel.alertTitle = "Please Provide a Password"
            CustomAlertModel.alertText = "The password field is empty. Add a password to proceed."
            return false
        }
        
        if password.count < 8 || password.count > 16 {
            CustomAlertModel.alertTitle = "Password Length Not Correct"
            CustomAlertModel.alertText = "The password must contains mininum 8 or maximum 16 characters."
            return false
        }
        
        return true
    }
    
    /// this code is executed first and rest of the methods are called in it
    /// here the string array passed as parameter 'arr' is working as a varg (variable length arguments)
    func validateSignIn(_ arr: [String]) -> Bool {
        
        // if arr contains 2 elements then the user is
        // attempting to log in
        if arr.count == 2 {
            return validateEmail(arr[0]) && validatePassword(arr[1])
        }
        
        // else if the length of array is 3 then the user is attempting
        // to registers as new uses
        return validateUsername(arr[0]) && validateEmail(arr[1]) && validatePassword(arr[2])
    }
    
}
