//
//  ExperienceTile.swift
//  UsersList
//
//  Created by Himanshu on 3/23/23.
//

import SwiftUI

struct ExperienceTile: View {
    
    @State var staticData: StaticData?
    
    var body: some View {
        if let staticData = staticData {
            HStack(alignment: .top) {
                AsyncImage(url: URL(string: staticData.image)) { image in
                    image
                        .resizable()
                } placeholder: {
                    Image(systemName: "photo.fill")
                }
                .frame(width: 44, height: 44)
                .cornerRadius(8)
                
                VStack(alignment: .leading) {
                    Text(staticData.title)
                        .font(.headline)
                        .fontWeight(.bold)
                    Text(staticData.job)
                        .font(.subheadline)
                    Text(staticData.timeline)
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(staticData.type)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

struct ExperienceTile_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceTile()
    }
}
