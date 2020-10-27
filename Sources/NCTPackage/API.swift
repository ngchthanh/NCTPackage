//
//  API.swift
//  
//
//  Created by Nguyen Chi Thanh on 10/26/20.
//

import Foundation
import PromiseKit
import Alamofire

public struct API {
    public static func call<T: Decodable>(router: URLRequestConvertible, resultType: T) -> Promise<T> {
        return Promise { promise in
            AF.request(router).responseDecodable(of: T.self, queue: .global()) { (dataResponse) in
                switch dataResponse.result {
                case .success(let value):
                    promise.resolve(value, nil)
                case .failure(let error):
                    promise.resolve(nil, error)
                }
            }
        }
    }
}
