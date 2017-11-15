//
//  UIDevice+Extension.swift
//  Pods-swift-ext_Example
//
//  Created by shuigen on 15/11/2017.
//

import Foundation
import UIKit
public extension UIDevice {
    public class var isIphone: Bool {
        return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone
    }
    public class var iphone_568: Bool {
        return isIphone && max(UIScreen.width, UIScreen.height) == 568.0
    }
    public class var iphone_568_or_less: Bool {
        return isIphone && max(UIScreen.width, UIScreen.height) <= 568.0
    }
    public class var iphone_667: Bool {
        return isIphone && max(UIScreen.width, UIScreen.height) == 667.0
    }
    public class var iphone_667_or_less: Bool {
        return isIphone && max(UIScreen.width, UIScreen.height) <= 667.0
    }
    public class var iphone_736: Bool {
        return isIphone && max(UIScreen.width, UIScreen.height) == 736.0
    }
    public class var iphone_736_or_less: Bool {
        return isIphone && max(UIScreen.width, UIScreen.height) <= 736.0
    }
    public class var orientation: UIInterfaceOrientation {
        return UIApplication.shared.statusBarOrientation
    }
}
