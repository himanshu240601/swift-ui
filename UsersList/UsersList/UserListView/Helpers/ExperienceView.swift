//
//  ExperienceView.swift
//  UsersList
//
//  Created by Himanshu on 3/23/23.
//

import SwiftUI

struct ExperienceView: View {
    
    @State var results: UsersModel?
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Experience")
                .font(.title3)
                .fontWeight(.semibold)
                .padding()
            
            ExperienceTile()
            
            Divider()
                .padding(.horizontal)
            
            ExperienceTile()
                .padding(.bottom)
        }
        .frame(maxWidth: .infinity)
        .background(.gray.opacity(0.2))
        .cornerRadius(24)
        .padding(.horizontal)
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceView()
    }
}
