//
//  ExperienceView.swift
//  UsersList
//
//  Created by Himanshu on 3/23/23.
//

import SwiftUI

struct ExperienceView: View {
    
    @State var results: UsersModel?
    @State var staticData: [StaticData]?
    @State var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .padding()
            
            if let staticData = staticData {
                ForEach(staticData) { results in
                    
                    ExperienceTile(staticData: results)
                    
                    Divider()
                        .padding(.horizontal)

                }
            }
        }
        .frame(maxWidth: .infinity)
        .background(.gray.opacity(0.2))
        .cornerRadius(24)
        .padding(.horizontal)
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceView(title: "")
    }
}
