//
//  MBaseTextView.swift
//  Pods-Swift-M_Example
//
//  Created by shuigen on 22/11/2017.
//

import UIKit

open class MBaseTextView: UITextView {
    
    private lazy var placeHolderLable: UILabel = {
        let temLable = UILabel()
        temLable.textColor = UIColor.lightGray
        temLable.font = UIFont.systemFont(ofSize: 13)
        temLable.textAlignment = .center
        temLable.numberOfLines = 0
        return temLable
    }()

    public var placeHolderString: String? {
        get {
            return self.placeHolderLable.text
        }
        set {
            self.placeHolderLable.text = newValue
            if let text = newValue {
                let size = text.size(with: self.placeHolderLable.font, toSize: self.bounds.size, option: .usesLineFragmentOrigin)
                self.placeHolderLable.frame = CGRect.init(origin: self.placeHolderLable.frame.origin, size: size)
            }
        }
    }
    public var placeHolderCOlor: UIColor? {
        get {
            return self.placeHolderLable.textColor
        }
        set {
            self.placeHolderLable.textColor = newValue
        }
    }
    
    public var placeHolderFont: UIFont? {
        get {
            return self.placeHolderLable.font
        }
        set {
            self.placeHolderLable.font = newValue
        }
    }
    
    public convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    public convenience init(frame: CGRect) {
        self.init(frame: frame, textContainer: nil)
    }
    
    public override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        setupView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        if let text = placeHolderString {
            let size = text.size(with: self.placeHolderLable.font, toSize: self.bounds.size, option: .usesLineFragmentOrigin)
            self.placeHolderLable.frame = CGRect(origin: CGPoint(x: 5, y: 7), size: size)
        }
    }
    
    private func setupView() {
        self.addSubview(placeHolderLable)
        
        NotificationCenter.default.addObserver(self, selector: #selector(textChanged(notification:)), name: .UITextViewTextDidChange, object: nil)
    }
    
    @objc private func textChanged(notification: NSNotification) {
        guard let placeholder = self.placeHolderString else {
            return
        }
        if placeholder.lengthOfBytes(using: .utf8) == 0 {
            return
        }
        
        self.placeHolderLable.alpha = self.text.lengthOfBytes(using: .utf8) == 0 ? 1 : 0
    }

    

}
