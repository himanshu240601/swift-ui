//
//  SignInImage.swift
//  LoginPage
//
//  Created by Himanshu on 3/22/23.
//

import SwiftUI

struct SignInImage: View {
    var body: some View {
        Image("img")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 240)
            .padding(.vertical)
    }
}

struct SignInImage_Previews: PreviewProvider {
    static var previews: some View {
        SignInImage()
    }
}
