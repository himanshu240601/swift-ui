//
//  LoginView.swift
//  LoginPage
//
//  Created by Himanshu on 3/22/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    @Environment(\.colorScheme) var colorScheme
    
    @Environment(\.presentationMode) var presentation
    
    @State var showAlert = false
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    
                    SignInNavigationBar(type: "Log In", delegateLogin: self)
                    .padding(.horizontal, 20)
                    .padding(.top, 34)
                    .foregroundColor(colorScheme == .dark ? .white: .black)
                    
                    SignInImage()
                    
                    VStack {
                        TextField(
                          "Email",
                          text: $email
                        )
                        .padding(.horizontal, 24)
                        .padding(.vertical, 16)
                        .background(.gray.opacity(0.1))
                        .cornerRadius(100)
                        
                        SecureField(
                          "Password",
                          text: $password
                        )
                        .padding(.horizontal, 24)
                        .padding(.vertical, 16)
                        .background(.gray.opacity(0.1))
                        .cornerRadius(100)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 24)
                    
                    SignInButton(text: "Log In", login: self)
                    .padding(.horizontal)
                    
                    Button(action: {
                        // go to reset password page
                    }, label: {
                        Text("Forgot Password?")
                            .font(.system(size: 12))
                            .padding(.horizontal, 34)
                            .padding(.vertical)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                    })
                    
                }
            }.navigationBarBackButtonHidden(true)
                .blur(radius: showAlert ? 64 : 0)
            
            if showAlert {
                CustomAlerts(image: "logo",
                             title: CustomAlertModel.alertTitle,
                             message: CustomAlertModel.alertText,
                             button: CustomAlertModel.alertButtonText, referenceLogin: self)
                .transition(.scale)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
