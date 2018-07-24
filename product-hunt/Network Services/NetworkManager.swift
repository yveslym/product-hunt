//
//  NetworkManager.swift
//  product-hunt
//
//  Created by Yves Songolo on 7/23/18.
//  Copyright © 2018 Yves Songolo. All rights reserved.
//

import Foundation
import UIKit

struct NetworkService{
    static func downloadProduct(completion: @escaping ([Product]) -> Void){
        
        // 1 based link
        let link = "https://api.producthunt.com/v1/"
        
        // 2. end point
        let endPoint = "collections"
        
        // 3. make url
        let url = URL(string: link+endPoint)
        
        // 4. make a request
        var request = URLRequest(url: url!)
        
        // 5. add header to the request
        request.setValue("Bearer dc51b17f2b9747a5f7e89e6dbd52c3c4698462beeb843655851da8fc9fb187e5", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "content-type")
        
        // 6. make a session
        
        let session = URLSession.shared
        
        // 7. make a task
        let task = session.dataTask(with: request) { (data, response, error) in
            
            guard let data = data else {return}
            
            do{
                let products = try JSONDecoder().decode(Collection.self, from: data)
                print(products)
            }
            catch{
                print("boomers")
            }
        }
        task.resume()
        
        
    }
}
