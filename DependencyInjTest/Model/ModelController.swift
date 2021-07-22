//
//  ModelController.swift
//  DependencyInjTest
//
//  Created by HaiboZhou on 2021/5/31.
//

import Foundation

enum PlayMode: String {
    case cycle = "repeat"
    case cycleOne = "repeat.1"
    case shuffle = "shuffle"
}

class ModelController {
    var songs: [Song]? = nil
    var position = 0
    var playingMode: PlayMode? = .cycle
}
