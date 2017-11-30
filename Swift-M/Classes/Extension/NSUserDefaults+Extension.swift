//
//  NSUserDefaults+Extension.swift
//  Pods-swift-ext_Example
//
//  Created by shuigen on 15/11/2017.
//

import Foundation

// MARK: - Subscript
public extension UserDefaults {
    
    public subscript(key: String) -> Any? {
        get {
            return object(forKey: key)
        }
        set {
            set(newValue, forKey: key)
        }
    }
    
}

// MARK: - Helpers
public extension UserDefaults {
    
    public static func contains(key: String) -> Bool {
        return self.standard.contains(key: key)
    }
    
    public func contains(key: String) -> Bool {
        return self.dictionaryRepresentation().keys.contains(key)
    }
    
    public func reset() {
        for key in Array(UserDefaults.standard.dictionaryRepresentation().keys) {
            UserDefaults.standard.removeObject(forKey: key)
        }
    }
    
}
