//
//  DataStore.swift
//  DemoURLsessions
//
//  Created by Tien Dao on 2022-05-26.
//

import Foundation

//Create a singleton
class DataStore {
    static let shared =  DataStore()
    
    private let urlSession = URLSession.shared
    private let apikey = "apikey"// no need for apikey
    private let baseAPIURL = "https://jsonplaceholder.typicode.com/photos"
    
    //create URL Components
    //Host must string "jsonplaceholder.typicode.com"
    //path "/photos"
    // queryItems is nill array are Query Parameters in URL ?name=Branch&products=[Journeys,Email,Universal%20Ads]
    
    func createURLComponents(host:String,path:String,queryItems: [URLQueryItem]?) -> URLComponents? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = host
        components.path = path
        components.queryItems = queryItems
        return components
    }
    

    
}
