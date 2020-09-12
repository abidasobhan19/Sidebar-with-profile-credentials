//
//  ViewController.swift
//  Profilesidebar
//
//  Created by ABid A.Sobhan on 10/9/20.
//  Copyright © 2020 ABid A.Sobhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    var arraydata = ["Home","Email","Shared Device","Logout"]
    var arrayimg = [#imageLiteral(resourceName: "name"),#imageLiteral(resourceName: "email"),#imageLiteral(resourceName: "mobile"),#imageLiteral(resourceName: "password")]
    
    
   //INITIALIZER
    @IBOutlet weak var sideview: UIView!
    
   
    @IBOutlet weak var sidebar: UIView!
    
    
    var isSideviewOpen: Bool = false
    
    
    
    
  
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraydata.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.selectionStyle = .none
        cell.img.image = arrayimg[indexPath.row]
        cell.Lbl.text = arraydata[indexPath.row]
        
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            
            
            sidebar.isHidden = true
            sideview.isHidden = true
            isSideviewOpen = false
            sideview.frame = CGRect.init(x: 0, y: 88, width: 0, height: 808)
            sidebar.frame = CGRect.init(x: 0, y: 0, width: 0, height: 808)
            UIView.setAnimationDuration(0.5)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
            
            sideview.frame = CGRect.init(x: 0, y: 88, width: 240, height: 808)
            sidebar.frame = CGRect.init(x: 0, y: 0, width: 240, height: 808)
            UIView.commitAnimations()
            //            let home : HomeViewController =
            //            self.storyboard?.instantiateViewController(withIdentifier: "home") as!
            //            HomeViewController
            //
            //            self.navigationController?.pushViewController(home, animated: true)
            
        }else if indexPath.row == 1{
            let Second : SecondViewController =
                self.storyboard?.instantiateViewController(withIdentifier: "Second") as!
            SecondViewController
            
            self.navigationController?.pushViewController(Second, animated: true)
            
            
        }
    }
    
    
    
    
    
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
