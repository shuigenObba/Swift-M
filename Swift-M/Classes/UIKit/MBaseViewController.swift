//
//  MBaseViewController.swift
//  Pods-Swift-M_Example
//
//  Created by shuigen on 22/11/2017.
//

import UIKit

open class MBaseViewController: UIViewController, UIGestureRecognizerDelegate {

    public var isNavigationBarHiddenInController: Bool {
        return navigationBarHidden
    }
    fileprivate var navigationBarHidden = false
    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override open func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationBarHidden = self.navigationController?.isNavigationBarHidden ?? false
    }
    
    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if self.navigationController != nil, (self.navigationController?.topViewController?.isKind(of: MBaseViewController.self))! {
            let controller: MBaseViewController = self.navigationController?.topViewController as! MBaseViewController
            self.navigationController?.setNavigationBarHidden(controller.isNavigationBarHiddenInController, animated: true)
        }
    }
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    open override var shouldAutorotate: Bool {
        return false
    }
    
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    open override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return UIInterfaceOrientation.portrait
    }
}
