//
//  Array+Extension.swift
//  Pods-swift-ext_Example
//
//  Created by shuigen on 15/11/2017.
//

import Foundation

// MARK: subscript safe
public extension Array {
    
    public subscript(safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
    
}

// MARK: delete
public extension Array where Element: Equatable {
    
    public mutating func remove(element: Iterator.Element) -> Bool {
        if let index = self.index(of: element) {
            self.remove(at: index)
            return true
        }
        return false
    }
    
}
