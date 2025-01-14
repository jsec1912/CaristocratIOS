//
//  BaseReponse.swift
 import Foundation
struct ResponseWrapper<T> : Codable where T: Encodable, T: Decodable {
    let isSuccess : Bool?
    let message : String?
    let totalCount : Int?
    let serverTime : Int?
    let statusCode : Int?
    let data: T?
    let totalItemCount : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case isSuccess = "success"
        case message = "message"
        case data = "data"
        case totalCount = "totalCount"
        case serverTime = "serverTime"
        case statusCode = "statusCode"
        case totalItemCount = "total_count"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        isSuccess = try values.decodeIfPresent(Bool.self, forKey: .isSuccess)
        message = try values.decodeIfPresent(String.self, forKey: .message)
        data = try values.decodeIfPresent(T.self, forKey: .data)
        totalCount = try values.decodeIfPresent(Int.self, forKey: .totalCount)
        serverTime = try values.decodeIfPresent(Int.self, forKey: .serverTime)
        statusCode = try values.decodeIfPresent(Int.self, forKey: .statusCode)
        totalItemCount = try values.decodeIfPresent(Int.self, forKey: .totalItemCount)
    }
    
}

struct BaseRespone: Codable {
    let isSuccess : Bool?
    let message : String?
    let totalCount : Int?
    let serverTime : Int?
    let statusCode : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case isSuccess = "success"
        case message = "message"
        case totalCount = "totalCount"
        case serverTime = "serverTime"
        case statusCode = "statusCode"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        isSuccess = try values.decodeIfPresent(Bool.self, forKey: .isSuccess)
        message = try values.decodeIfPresent(String.self, forKey: .message)
        totalCount = try values.decodeIfPresent(Int.self, forKey: .totalCount)
        serverTime = try values.decodeIfPresent(Int.self, forKey: .serverTime)
        statusCode = try values.decodeIfPresent(Int.self, forKey: .statusCode)
    }
    
}
