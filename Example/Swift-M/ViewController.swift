//
//  ViewController.swift
//  Swift-M
//
//  Created by huangshuigen on 11/15/2017.
//  Copyright (c) 2017 huangshuigen. All rights reserved.
//

import UIKit
import Swift_M
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let string = "啊看上大SD卡是肯定卡结婚就ad黄金卡是递减哈时间肯定哈客户端撒谎 话就肯定会极爱的哈抠脚大汉金卡是递减阿莎黑豆浆卡上道具卡是递减卡仕达家山东矿机爱神的箭看哈市健康的哈时间肯定会撒娇蝴蝶卡是递减撒谎就卡上的框架阿时间肯定哈市框架搭建企划书"
        let subString = "asdqwedsa爱神的箭阿莎啊就是打哈哈啊还是觉得哈炬华科技和大环境阿莎觉得可ad花见花开"
        print("自适应的高度为\(string.autoLabelHeight(with: string, labelWidth: 200, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 17)]))")
        print("自适应的高度为\(subString.autoLabelHeight(with: subString, labelWidth: 200, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 17)]))")

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

