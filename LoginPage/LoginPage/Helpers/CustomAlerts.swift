//
//  CustomAlerts.swift
//  CodeNinja
//
//  Created by Himanshu on 3/22/23.
//

import SwiftUI

struct CustomAlerts: View {
    
    @State var image = "logo"
    @State var title = "Alert Title"
    @State var message = "this is the alert box messagethis is the alert box message"
    @State var button = "OK"
    
    var referenceLogin: LoginView?
    var referenceRegister: RegisterView?
    
    var body: some View {
        VStack {
           Image(image)
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.top, 28)
                .padding(.bottom, 14)
            
            Spacer()
            
            Text(title)
                .fontWeight(.semibold)
                .font(.system(size: 20))
            
            Spacer()
            
            Text(message)
                .fontWeight(.light)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding(.bottom)
                .padding(.horizontal)
            
            Spacer()
            
            Divider()
            
            Button(button) {
                
                if let login = referenceLogin {
                    withAnimation{
                        login.showAlert.toggle()
                    }
                }else if let register = referenceRegister {
                    withAnimation{
                        register.showAlert.toggle()
                    }
                }
        
            }
            .frame(width: UIScreen.main.bounds.width/2-30, height: 40)
            .padding(.bottom, 20)
            
            
        }
        .frame(width: UIScreen.main.bounds.width-50, height: 240)
        .background(.gray.opacity(0.2))
        .cornerRadius(12)
        .clipped()
    }
}

struct CustomAlerts_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlerts()
    }
}
