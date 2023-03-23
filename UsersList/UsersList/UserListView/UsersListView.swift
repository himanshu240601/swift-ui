//
//  UsersListView.swift
//  UsersList
//
//  Created by Himanshu on 3/22/23.
//

import SwiftUI

struct UsersListView: View {
    
    @StateObject private var dataModel = DataModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if dataModel.results.count != 0 {
                    List {
                        ForEach(dataModel.results) { results in
                            
                            NavigationLink(destination: {
                                UserDetailView(results: results)
                            }, label: {
                                UserListTile(results: results)
                            })

                        }
                    }
                }else {
                    Spacer()
                    if dataModel.error == "" {
                        
                        ProgressView()
                        
                    }else {
                        
                        Text("Error: \(dataModel.error)")
                            .padding(.horizontal, 34)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        
                    }
                    Spacer()
                }
                
                HStack{
                    
                    Button(action: {
                        dataModel.page -= 1
                        dataModel.loadData(api_url: BaseApi.api)
                    }, label: {
                        Text("Back")
                    }).disabled(
                        dataModel.page == 0 ? true : false
                    )
                    
                    Spacer()
                    
                    Button(action: {
                        dataModel.page += 1
                        dataModel.loadData(api_url: "\(BaseApi.api)?page=2")
                    }, label: {
                        Text("Next")
                    }).disabled(
                        dataModel.page == 0 ? false : true
                    )
                    
                }
                .padding(.horizontal, 34)
                .padding(.vertical)
            }
            
            .navigationTitle("List of Employees")
            .navigationBarTitleDisplayMode(.inline)
            
        }.onAppear{
            dataModel.loadData(api_url: BaseApi.api)
        }
    }
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView()
    }
}
