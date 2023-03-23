//
//  ButtonView.swift
//  LoginPage
//
//  Created by Himanshu on 3/22/23.
//

import SwiftUI

struct CustomButtonTextView: View {
    
    @State var colorPrimary: Color
    @State var colorSecondary: Color
    @State var text: String
    
    var body: some View {
        Text(text)
            .frame(maxWidth: .infinity, minHeight: 24, maxHeight: 24)
            .padding()
            .fontWeight(.semibold)
            .foregroundColor(colorPrimary)
            .overlay(
                RoundedRectangle(cornerRadius: 100)
                    .stroke(.yellow, lineWidth: 2))
           .background(colorSecondary)
           .cornerRadius(100)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonTextView(colorPrimary: .black, colorSecondary: .yellow, text: "Log In")
    }
}
