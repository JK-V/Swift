//
//  PagerViewController1.swift
//  SwipeNavigationDemo
//
//  Created by Persistent on 03/07/16.
//  Copyright © 2016 JaysSwiftProject. All rights reserved.
//

import UIKit

class PagerViewController1: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let page1VC = Page1ViewController(nibName: "Page1ViewController", bundle: nil)
        self.addChildViewController(page1VC)
        self.scrollView.addSubview(page1VC.view)
        page1VC.didMoveToParentViewController(self)
        
        
        let page2VC = Page2ViewController(nibName: "Page2ViewController", bundle: nil)
        var page1Frame1 = page2VC.view.frame
        page1Frame1.origin.x = self.view.frame.size.width
        page2VC.view.frame = page1Frame1
        
        self.addChildViewController(page2VC)
        scrollView.addSubview(page2VC.view)
        
        let page3VC = Page3ViewController(nibName: "Page3ViewController", bundle: nil)
        var page3Frame1 = page3VC.view.frame
        page3Frame1.origin.x = self.view.frame.size.width * 2
        page3VC.view.frame = page3Frame1
        
        self.addChildViewController(page3VC)
        scrollView.addSubview(page3VC.view)
        
        
        let page4VC = Page4ViewController(nibName: "Page4ViewController", bundle: nil)
        var page4Frame1 = page4VC.view.frame
        page4Frame1.origin.x = self.view.frame.size.width * 3
        page4VC.view.frame = page4Frame1
        
        self.addChildViewController(page4VC)
        scrollView.addSubview(page4VC.view)
        
        
        let page5VC = Page5ViewController(nibName: "Page5ViewController", bundle: nil)
        var page5Frame1 = page5VC.view.frame
        page5Frame1.origin.x = self.view.frame.size.width * 4
        page5VC.view.frame = page5Frame1
        
        self.addChildViewController(page5VC)
        scrollView.addSubview(page5VC.view)
        
        
        // Now set your scrollview content size
        // This is self.view.frame.size.width * 5 complete width of your device and we are *5 because we are displaying 5 pages.
        // -66 because we are using navigation controller, Navigation bar is 44 but status bar is 22 so 66. To start right below the navigationbar
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 5, self.view.frame.size.height - 66);
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

