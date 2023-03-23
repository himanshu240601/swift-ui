//
//  UserListTile.swift
//  UsersList
//
//  Created by Himanshu on 3/22/23.
//

import SwiftUI

struct UserListTile: View {
    
    @State var results: UsersModel?
    
    var body: some View {
        
        HStack {
            if let res = results {
                
                AsyncImage(url: URL(string: res.avatar)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                    .frame(width: 54, height: 54)
                    .opacity(0.5)
                }
                .frame(width: 54, height: 54)
                .clipShape(Circle())
    
                VStack(alignment: .leading) {
                    Text(res.first_name + " " + res.last_name)
                        .font(.headline)
                    
                    Text(res.email)
                        .font(.subheadline)
                }
            }
        }
        
    }
}

struct UserListTile_Previews: PreviewProvider {
    static var previews: some View {
        UserListTile()
    }
}
