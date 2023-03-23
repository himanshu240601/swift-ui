//
//  SignInButton.swift
//  LoginPage
//
//  Created by Himanshu on 3/22/23.
//

import SwiftUI

struct SignInButton: View {
    
    //MARK: properties
    @State var text: String
    var login: LoginView?
    var register: RegisterView?
    
    	
    var body: some View {
        Button(action: {
            var arr: [String] = []
            if let reg = register {
                arr = [reg.username, reg.email, reg.password]
            } else if let log = login {
                arr = [log.email, log.password]
            }
            if !Validations().validateSignIn(arr) {
                
                if let log = login {
                    withAnimation{
                        log.showAlert.toggle()
                    }
                }else if let reg = register {
                    withAnimation{
                        reg.showAlert.toggle()
                    }
                }
                
            }else {
                // go to home page
            }
        }){
            Text(text)
                .font(.system(size: 16))
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
        }
        .frame(maxWidth: .infinity, minHeight: 44, maxHeight: 44)
        .background(.yellow)
        .cornerRadius(100)
    }
}

struct SignInButton_Previews: PreviewProvider {
    static var previews: some View {
        SignInButton(text: "Log In")
    }
}
