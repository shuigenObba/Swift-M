//
//  UIViewController+Extension.swift
//  Pods-swift-ext_Example
//
//  Created by shuigen on 15/11/2017.
//

import Foundation

private let TAP_GESUTRE = "tap_gesture"
public extension UIViewController {
    
    public func registerKeyboardDismiss() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: .UIKeyboardWillHide, object: nil)
    }
    
    private var tapGesture: UITapGestureRecognizer {
        let gestureAny = objc_getAssociatedObject(self, TAP_GESUTRE)
        if let gesture = gestureAny as? UITapGestureRecognizer {
            return gesture
        }
        let gesture = UITapGestureRecognizer(target: self, action: #selector(gestureAction(_:)))
        objc_setAssociatedObject(self, TAP_GESUTRE, gesture, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        return gesture
    }
    
    @objc private func gestureAction(_ gesture: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    @objc private func keyboardWillShow() {
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc private func keyboardWillHide() {
        self.view.removeGestureRecognizer(tapGesture)
    }
}
