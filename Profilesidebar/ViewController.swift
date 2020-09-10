//
//  ViewController.swift
//  Profilesidebar
//
//  Created by ABid A.Sobhan on 10/9/20.
//  Copyright © 2020 ABid A.Sobhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   //INITIALIZER
    @IBOutlet weak var sideview: UIView!
    
   
    @IBOutlet weak var sidebar: UIView!
    
    
    var isSideviewOpen: Bool = false
    
    
    //MAIN FUNCTION
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        sideview.isHidden = true
        UIColor.groupTableViewBackground
        isSideviewOpen = false
        // Do any additional setup after loading the view, typically from a nib.
   
    
    
    }

    
    
    
    //SLIDER-BUTTON
    @IBAction func sideopen(_ sender: Any) {
        
        
   
    
    
       
        sidebar.isHidden = false
        sideview.isHidden = false
        
        self.view.bringSubviewToFront(sideview)
      
        if !isSideviewOpen {
            isSideviewOpen = true
            sideview.frame = CGRect.init(x: 0, y: 65, width: 0, height: 602)
            sidebar.frame = CGRect.init(x: 0, y: 0, width: 0, height: 602)
          
            UIView.setAnimationDuration(0.1)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
    
            sideview.frame = CGRect.init(x: 0, y: 65, width: 240, height: 602)
            sidebar.frame = CGRect.init(x: 0, y: 0, width: 240, height: 602)
            UIView.commitAnimations()
    print("open")
        }
            else
         
            
        
        {
            self.view.sendSubviewToBack(sideview)
//
            sidebar.isHidden = true
            sideview.isHidden = true
            isSideviewOpen = false
            sideview.frame = CGRect.init(x: 0, y: 65, width: 240, height: 602)
            sidebar.frame = CGRect.init(x: 0, y: 0, width: 0, height: 602)
            UIView.setAnimationDuration(0.1)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
            
            sideview.frame = CGRect.init(x: 0, y: 65, width: 240, height: 602)
            sidebar.frame = CGRect.init(x: 0, y: 0, width: 240, height: 602)
            UIView.commitAnimations()
            print("close")
     }
   }
    
    
   
    
}
