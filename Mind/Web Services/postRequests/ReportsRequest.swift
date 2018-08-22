////
////  ReportsRequest.swift
////  Mind
////
////  Created by Other user on 8/18/18.
////  Copyright © 2018 Mind. All rights reserved.
////
//
//import Foundation
//import Alamofire
//
//class ReportsRequest {
//
//    static var errorMsg:String?
//
//    //MARK:- Register API
//
//    // 1- create completion
//    // 2- use completion
//
//
//    class func registerAPI ( myParameters:Parameters, myHeaders:HTTPHeaders,completion:@escaping(_ success:Bool , _ error:String?)-> Void) {
//
//        Alamofire.request(Urls.getEmpUrl, method: .post, parameters: myParameters, encoding: URLEncoding.default, headers: myHeaders).responseJSON { (response) in
//
//
//            switch response.result {
//
//            case .success:
//
//                guard let json = response.result.value as? [String:Any] else {
//                    errorMsg = "can't parse json"
//                    completion(false,errorMsg)
//                    //return
//                    return
//                }
//
//                let id = json["id"] as? Int ?? 0
//                print(id)
//                completion(true,nil)
//
//            case .failure (let error) :
//
//                errorMsg = String(describing:error)
//                print( errorMsg )
//                completion(false,errorMsg)
//
//            }
//
//        }
//
//    }
//
//
//
//    //MARK:- SignIn API
//    class func sigInApi ( myParameters:Parameters, myHeaders:HTTPHeaders,completion:@escaping(_ success:Bool , _ error:String?)-> Void) {
//
//        Alamofire.request(URLs.signInURL, method: .post, parameters: myParameters, encoding: JSONEncoding.default, headers: myHeaders).responseJSON { (response) in
//
//
//            switch response.result {
//
//            case .success:
//
//                guard let json = response.result.value as? [String:Any] else {
//                    errorMsg = "can't parse json"
//                    completion(false,errorMsg)
//                    return
//                }
//                let access_token = json["access_token"] as? Int ?? 0
//                let def = UserDefaults.standard
//                def.set(access_token, forKey: "Token")
//
//                completion(true,nil)
//
//            case .failure (let error) :
//
//                errorMsg = String(describing:error)
//                print( errorMsg )
//                completion(false,errorMsg)
//
//            }
//
//        }
//
//    }
//
//
//}

