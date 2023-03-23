//
//  ResponseModel.swift
//  UsersList
//
//  Created by Himanshu on 3/22/23.
//

import Foundation

struct ResponseModel: Codable {
    
    var page: Int
    var per_page: Int
    var total: Int
    var total_pages: Int
    var data: [UsersModel]
    var support: Support
}

struct Support: Codable {
    var text: String
    var url: String
}
