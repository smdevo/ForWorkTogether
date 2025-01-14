//
//  Platform.swift
//  ForWorkTogether
//
//  Created by Samandar on 15/01/25.
//

import Foundation

struct Platform {
    
    var name: String
    var title: String
    var link: String
    var background: String
    var icon: String
    var general_icon: String = "textPlusicon"
    

    static var platforms: [Platform] = [
        
        Platform(name: "Telegram kanal", title: "Telegram kanalimizga obuna bo'ling!", link: "linkk", background: "background_tg", icon: "telegram"),
        Platform(name: "Instagram profil", title: "Instagram orqali bizni kuzatib boring!", link: "linkk", background: "background_ins", icon: "instagram"),
        Platform(name: "Vebsayt", title: "Vebsayt orqali bizni kuzatib boring!", link: "linkk", background: "background_web", icon: "web_ic")
        
    ]
    
    static var dummyPlatform: Platform = Platform(name: "Telegram kanal", title: "Telegram kanalimizga obuna bo'ling!", link: "linkk", background: "background_tg", icon: "telegram")
    
}
