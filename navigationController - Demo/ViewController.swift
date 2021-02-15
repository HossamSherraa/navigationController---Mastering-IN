//
//  ViewController.swift
//  navigationController - Demo
//
//  Created by Hossam on 4/29/20.
//  Copyright © 2020 Hossam. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    override func viewDidLoad() {
        self.view.backgroundColor = .white
        let imageView = UIImageView(image: UIImage(named: "1"))
               imageView.frame = self.view.frame
               self.view.addSubview(imageView)
        let mainButton = UIButton(type: .system)
        mainButton.frame = .init(origin: view.center, size: .init(width: 150, height: 100))
        mainButton.addTarget(self, action: #selector(self.mainButton), for: .touchUpInside)
        mainButton.setTitle("MAIN BUTTON", for: .normal)
        mainButton.backgroundColor = .red
        self.view.addSubview(mainButton)
         self.title = "MAIN"
        
        
        //Customize NavigationBar Apperance
        
        

//        self.navigationController!.navigationBar.prefersLargeTitles = true
//        self.navigationController!.navigationBar.isTranslucent = true
//        self.navigationController!.navigationBar.tintColor = .white
//        self.navigationController!.navigationBar.barStyle = .blackTranslucent
//
//        self.navigationController!.navigationBar.barTintColor = .clear
//        self.navigationController!.navigationBar.setBackgroundImage(.some(.init()), for: .default)
//        self.navigationController?.navigationBar.shadowImage = .some(.init())
//        self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        
       
        if #available(iOS 13.0, *) {
            self.navigationController?.navigationBar.standardAppearance = {
                let apperance = UINavigationBarAppearance()
                apperance.backgroundEffect = .init(style: .regular)
                apperance.setBackIndicatorImage(UIImage(named: "11"), transitionMaskImage: UIImage(named: "11"))
                return apperance
            }()
        } else {
            // Fallback on earlier versions
        }
        
        // Customize NavigationItem Of Current VC
        self.navigationItem.title = "Hossam"
        self.navigationItem.backBarButtonItem = .init(title: "SOME BACKER", style: .done, target: nil, action: nil)
        self.navigationItem.prompt = "IAM SIME PORMPTS"
        self.navigationItem.leftItemsSupplementBackButton = true
        self.navigationItem.titleView = {
           let r =  UIView.init()
            r.backgroundColor = .blue
            r.frame.size = .init(width: 80, height: 80)
            return r
        }()
        
        self.navigationItem.setLeftBarButtonItems([.init(title: "SIME TITILE", style: .done, target: nil, action: nil)], animated: true
        )
        
      
        
        
        let spacer = UIBarButtonItem(title: "SE TITEEE ", style: .plain, target: nil, action: nil)
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: nil, action: nil)

        self.toolbarItems = [spacer , refresh]
        navigationController?.isToolbarHidden = false
        navigationController?.toolbar.tintColor = .red
        
        navigationController?.toolbar.setBackgroundImage(.init(), forToolbarPosition: .any, barMetrics: .default)
        navigationController?.toolbar.frame.size.height = 40
        navigationController?.toolbar.sizeToFit()
        navigationController?.hidesBarsOnTap = true
        navigationController?.hidesBarsOnSwipe = true 
        
    }
    
    @objc func mainButton(){
       
       let newViewController  = ViewController()
       
       
        self.navigationController?.pushViewController(newViewController, animated: true)
        
    }
}

