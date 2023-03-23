//
//  File.swift
//  UsersList
//
//  Created by Himanshu on 3/23/23.
//

import Foundation

final class BaseApi {
    static let api = "https://reqres.in/api/users"
}

class StaticData: Identifiable {
    let image: String
    let title: String
    let job: String
    let timeline: String
    let type: String
    
    init(image: String, title: String, job: String, timeline: String, type: String) {
        self.image = image
        self.title = title
        self.job = job
        self.timeline = timeline
        self.type = type
    }
    
}
