//
//  UserInfo.swift
//  App
//
//  Created by Aduge on 2019/8/4.
//

import Foundation
import Vapor

final class UserInfo: Content {
    var userName: String
    var nick: String
    var avatar: String
    var profileImage: String
    
    init(userName: String, nick: String, avatar: String, profileImage: String) {
        self.userName = userName
        self.nick = nick
        self.avatar = avatar
        self.profileImage = profileImage
    }
}
