//
//  ForDevices.swift
//  ForWorkTogether
//
//  Created by Samandar on 15/01/25.
//

import Foundation
import SwiftUI

extension UIDevice {
    
    static var iPad = UIDevice.current.userInterfaceIdiom == .pad
    static var iphone = UIDevice.current.userInterfaceIdiom == .phone
}
