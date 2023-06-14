//
//  ViewController.swift
//  Movie App
//
//  Created by Dambi on 13.06.23.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpComingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
//img rendering//
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
//title name //
        vc1.title = "Home"
        vc2.title = "Trending"
        vc3.title = "Search"
        vc4.title = "Download"
        
        tabBar.tintColor = .label
        
         setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }


}

