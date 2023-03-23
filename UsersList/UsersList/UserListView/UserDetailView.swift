//
//  UserDetailView.swift
//  UsersList
//
//  Created by Himanshu on 3/22/23.
//

import SwiftUI

struct UserDetailView: View {
    
    @State var results: UsersModel?
    
    var body: some View {
        ScrollView {
            VStack {
                
                UserView(results: results)
                
                HStack {
                    Button(action: {
                        print("connect clicked")
                    }, label: {
                        HStack {
                            Image(systemName: "plus")
                            Text("Connect")
                        }
                    })
                    .frame(maxWidth: .infinity/2, minHeight: 44, maxHeight: 44)
                    .background(.blue.opacity(0.2))
                    .foregroundColor(.blue)
                    .fontWeight(.semibold)
                    .cornerRadius(24)
                    .font(.system(size: 14))
                    
                    Button(action: {
                        print("message clicked")
                    }, label: {
                        Text("Say Hi 👋")
                    })
                    .frame(maxWidth: .infinity/2, minHeight: 44, maxHeight: 44)
                    .background(.blue)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .cornerRadius(24)
                    .font(.system(size: 14))
                }
                .padding(.horizontal)
                
                AboutView(results: results)
                
                ExperienceView(results: results)
            }
        }
        .scrollIndicators(.never)
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView()
    }
}
