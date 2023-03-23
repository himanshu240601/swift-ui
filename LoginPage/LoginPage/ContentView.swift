//
//  ContentView.swift
//  LoginPage
//
//  Created by Himanshu on 3/20/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                
                HStack {
                    Text("codeninja.io")
                        .foregroundColor(.gray)
                    Image("logo")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .aspectRatio(contentMode: .fit)
                }
                
                Spacer()
                
                SignInImage()
                
                Text("CodeNinja")
                    .font(.title)
                    .fontWeight(.black)
                
                Text("Programming. Debugging. Coffee")
                
                Spacer()
                
                NavigationLink(destination: LoginView(), label: {
                    CustomButtonTextView(colorPrimary: .black, colorSecondary: .yellow, text: "Log In")
                })
                
                NavigationLink(destination: RegisterView(), label: {
                    CustomButtonTextView(colorPrimary: .yellow, colorSecondary: .black, text: "Register")
                })
                
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
