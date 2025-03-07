/* 
Copyright (c) 2018 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct UserModel : Codable {
	let id : Int?
	let name : String?
	let email : String?
	let created_at : String?
	var details : Details?
	var access_token : String?
	let token_type : String?
	let expires_in : Int?
    var push_notification: Int?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case name = "name"
		case email = "email"
		case created_at = "created_at"
		case details = "details"
		case access_token = "access_token"
		case token_type = "token_type"
		case expires_in = "expires_in"
        case push_notification = "push_notification"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		email = try values.decodeIfPresent(String.self, forKey: .email)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		details = try values.decodeIfPresent(Details.self, forKey: .details)
		access_token = try values.decodeIfPresent(String.self, forKey: .access_token)
		token_type = try values.decodeIfPresent(String.self, forKey: .token_type)
		expires_in = try values.decodeIfPresent(Int.self, forKey: .expires_in)
        push_notification = try values.decodeIfPresent(Int.self, forKey: .push_notification)
    }

}
