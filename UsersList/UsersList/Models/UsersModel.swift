//
//  UsersModel.swift
//  UsersList
//
//  Created by Himanshu on 3/22/23.
//

import Foundation

struct UsersModel: Codable, Identifiable {
    
    var id: Int
    var email: String
    var first_name: String
    var last_name: String
    var avatar: String
    
}
