//
//  User.swift
//  Cupcake Corner
//
//  Created by huin on 2023/01/08.
//

import Foundation

final class User: ObservableObject, Codable {

    @Published var name = "Paul Hudson"

    enum CodingKeys: CodingKey {
        case name
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
}
