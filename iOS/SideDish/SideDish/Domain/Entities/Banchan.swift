//
//  Banchan.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import Foundation

enum Delivery {
    static let dawn = "새벽배송"
    static let nationWide = "전국택배"
}

enum PriceType {
    static let launching = "런칭특가"
    static let event = "이벤트특가"
}

struct Banchan: Hashable {
    private (set) var hash: String
    private (set) var image: Data?
    private (set) var alt: String
    private (set) var title: String
    private (set) var description: String
    private (set) var netPrice: String?
    private (set) var salePrice: String
    private (set) var badge: [String]?
    private (set) var delivery_type: [String]
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(hash)
    }
    static func == (lhs: Banchan, rhs: Banchan) -> Bool {
        lhs.hash == rhs.hash
    }
}
