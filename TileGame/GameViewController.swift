//
//  GameViewController.swift
//  TileGame
//
//  Created by Isaacs Joshua on 4/6/18.
//  Copyright © 2018 Isaacs Joshua. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import GoogleMobileAds

class GameViewController: UIViewController {
    var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        
        
         let view = UIView()
        view.backgroundColor = .black
        view.sizeToFit()
        
        ///title
        let title = UILabel(frame: CGRect(x: 320, y: 200, width: 200, height: 100))
        title.text = "TILE COMMAND"
        title.textColor = .white
        view.addSubview(title)
        
        
            ///button
        let button = UIButton(frame: CGRect(x: 330, y: 800, width: 100, height: 50))
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setTitle("PLAY", for: .normal)
        button.addTarget(self, action: #selector(self.PlayGame), for: .touchUpInside)
        view.addSubview(button)
        
        self.view = view
        
        //added a ad
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        
        addBannerViewToView(bannerView)
        
        let soldierRain = SK
        
    }
    
    
    @IBAction func PlayGame(){
        let scene = SKScene(fileNamed: "GameScene")
            // Set the scale mode to scale to fit the window
        let skView = SKView()
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene?.scaleMode = .aspectFill
        skView.presentScene(scene)
        self.view = skView
        
        //addPanGesture(view: skView)
        
    }
    
    func addPanGesture(view: UIView){
        
        let pan = UIPanGestureRecognizer(target:self, action: #selector
            (GameViewController.handlePan(sender:)))
        view.addGestureRecognizer(pan)
    }
    @objc func handlePan(sender: UIPanGestureRecognizer){
        
    }
    
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: bottomLayoutGuide,
                                attribute: .top,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
