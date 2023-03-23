//
//  SignInNavigationBar.swift
//  LoginPage
//
//  Created by Himanshu on 3/22/23.
//

import SwiftUI

struct SignInNavigationBar: View {
    
    @State var type: String
    var delegateLogin: LoginView?
    var delegateRegister: RegisterView?
    
    var body: some View {
        HStack {
            Button(action: {
                
                if let log = delegateLogin {
                    log.presentation.wrappedValue.dismiss()
                } else if let reg = delegateRegister {
                    reg.presentation.wrappedValue.dismiss()
                }
                
            }, label: {
                Image(systemName: "arrow.left")
            })
            Text("\(type) with CodeNinja")
            
            
            Spacer()
        }
    }
}

struct SignInNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        SignInNavigationBar(type: "LogIn")
    }
}
