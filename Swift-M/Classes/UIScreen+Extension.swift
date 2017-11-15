//
//  UIScreen+Extension.swift
//  Pods-swift-ext_Example
//
//  Created by shuigen on 15/11/2017.
//

import Foundation
import UIKit
public extension UIScreen {
    public class var size: CGSize {
        return UIScreen.main.bounds.size
    }
    public class var width: CGFloat {
        return size.width
    }
    public class var height: CGFloat {
        return size.height
    }
}
