//
//  UserView.swift
//  UsersList
//
//  Created by Himanshu on 3/23/23.
//

import SwiftUI

struct UserView: View {
    
    @State var results: UsersModel?
    
    var body: some View {
        if let res = results {
            AsyncImage(url: URL(string: res.avatar))
                .frame(width: 124, height: 124)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(100)
            .padding(.top, 34)

            Text(res.first_name + " " + res.last_name)
                .font(.largeTitle)
            
            Text(res.email)
                .font(.subheadline)
                .padding(.bottom, 10)
            
            Text("Head of Design @Linkedin\nHelping designers find their voice\n1M+ UI Kit downloads")
                .multilineTextAlignment(.center)
                .font(.caption)
                .padding(.bottom)
            
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
