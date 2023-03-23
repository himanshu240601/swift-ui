//
//  AboutView.swift
//  UsersList
//
//  Created by Himanshu on 3/23/23.
//

import SwiftUI

struct AboutView: View {
    
    @State var results: UsersModel?
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("About Me")
                .font(.title3)
                .fontWeight(.semibold)
                .padding()
            
            Text("My Name is \(results?.first_name  ?? ""), as a UX Product Designer, I solve your problem via user experience (UX) design & interaction design, bring your product or project to the higher level and add more value into it with added minimalistic UI Design.\n\nI specialize in the web and mobile app design, UI / UX design and work with a variety of clients with a focus on cultural and commercial projects within the disciplines of art and design.\n\nMy objective is to create clean, original and delightful experiences that respond to the client’s content effectively. As well as undertaking client projects,\n\nI also teach related to UX and Product design and occasionally give lectures on my work.")
                .font(.footnote)
                .padding(.horizontal)
                .padding(.bottom)
        }
        .background(.gray.opacity(0.2))
        .cornerRadius(24)
        .padding()
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
