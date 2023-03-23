//
//  ExperienceTile.swift
//  UsersList
//
//  Created by Himanshu on 3/23/23.
//

import SwiftUI

struct ExperienceTile: View {
    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: URL(string: "https://pbs.twimg.com/profile_images/1508518003184349187/1KQYoqPY_400x400.png")!) { image in
                image
                    .resizable()
            } placeholder: {
                Image(systemName: "photo.fill")
            }
            .frame(width: 44, height: 44)
            .cornerRadius(2)
            
            VStack(alignment: .leading) {
                Text("Head of Design")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("LinkedIn • Full-Time")
                    .font(.subheadline)
                Text("Sep 2021 - Present • 1 yr 7 mos")
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("Remote")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct ExperienceTile_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceTile()
    }
}
