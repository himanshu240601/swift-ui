//
//  RegisterView.swift
//  LoginPage
//
//  Created by Himanshu on 3/22/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    @Environment(\.colorScheme) var colorScheme
    
    @Environment(\.presentationMode) var presentation
    
    @State var showAlert = false
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    
                    SignInNavigationBar(type: "Sign In", delegateRegister: self)
                    .padding(.horizontal, 20)
                    .padding(.top, 34)
                    .foregroundColor(colorScheme == .dark ? .white: .black)
                    
                    SignInImage()
                    
                    VStack {
                        
                        TextField(
                          "Username",
                          text: $username
                        )
                        .padding(.horizontal, 24)
                        .padding(.vertical, 16)
                        .background(.gray.opacity(0.1))
                        .cornerRadius(100)
                        
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
                    
                    SignInButton(text: "Sign In", register: self)
                    .padding(.horizontal)
                    
                    Text("By signing in you agree to our terms and conditions. All your info will be kept safe and used for statistical purposes only.")
                        .font(.system(size: 12))
                        .padding(.horizontal, 34)
                        .padding(.vertical)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                }
            }
            .navigationBarBackButtonHidden(true)
            .blur(radius: showAlert ? 64 : 0)
            
            if showAlert {
                CustomAlerts(image: "logo",
                             title: CustomAlertModel.alertTitle,
                             message: CustomAlertModel.alertText,
                             button: CustomAlertModel.alertButtonText, referenceRegister: self)
                .transition(.scale)
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
