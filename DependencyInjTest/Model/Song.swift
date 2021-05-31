//
//  Song.swift
//  DependencyInjTest
//
//  Created by HaiboZhou on 2021/5/31.
//

import Foundation

struct Song: Codable {
    var title: String?
    var artist: String?
    var album: String?
//    var artwork: ImageWrapper?
    var path: URL?
}
