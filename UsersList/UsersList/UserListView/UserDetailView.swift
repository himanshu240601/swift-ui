//
//  UserDetailView.swift
//  UsersList
//
//  Created by Himanshu on 3/22/23.
//

import SwiftUI

struct UserDetailView: View {
    
    @State var results: UsersModel?
    
    //static data
    @State private var experienceData = [
        StaticData(image: "https://pbs.twimg.com/profile_images/1508518003184349187/1KQYoqPY_400x400.png", title: "Head of Design", job: "LinkedIn • Full-Time", timeline: "Sep 2021 - Present • 1 yr 7 mos", type: "Remote"),
        
        StaticData(image: "https://img.freepik.com/free-vector/meta-icon-social-media-flat-graphic-vector-3-november-2021-bangkok-thailand_53876-157872.jpg", title: "Associate Developer", job: "Meta • Full-Time", timeline: "Nov 2020 - Sep 2021 • 10 mos", type: "On-site")
    ]
    
    @State private var educationData = [
        StaticData(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2uQC2a3oI00jELfLPgb6B4gFQoOsDFwkABecgRD0&usqp=CAE&s", title: "Duke University", job: "Master's Degree, Computer Science", timeline: "2020 - 2022", type: "On-site"),
        
        StaticData(image: "https://upload.wikimedia.org/wikipedia/en/thumb/2/29/Harvard_shield_wreath.svg/1200px-Harvard_shield_wreath.svg.png", title: "Harvard University", job: "Bachelor's Degree, Computer Science", timeline: "2016 - 2020", type: "On-site"),
        
        StaticData(image: "", title: "South Hills School", job: "Arts and Science Club", timeline: "2014 - 2016", type: "On-site")
    ]
    
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
                
                ExperienceView(results: results, staticData: experienceData, title: "Experience")
                
                ExperienceView(results: results, staticData: educationData, title: "Education")
                    .padding(.top)
        
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
