//
//  ViewController.swift
//  12-16-20 Launch Screen Testing
//
//  Created by Darianne Salinas on 12/16/20.
//

import UIKit



class LaunchScreenViewController: UIViewController {
   
    let pizzaImage = UIImageView(image: UIImage(named: "pizza"))
    let splashView = UIView()
    
    @IBOutlet weak var mainTitleLaunchScreen: UILabel!
    var mainTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
//        splashView.backgroundColor = UIColor(red: 255/255, green: 53/255, blue: 79/2, alpha: 1.0)
        splashView.backgroundColor = .purple
        view.addSubview(splashView)
        
        splashView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        
        pizzaImage.contentMode = .scaleAspectFit
        splashView.addSubview(pizzaImage)
        pizzaImage.frame = CGRect(x: splashView.frame.midX - 50, y: splashView.frame.midY - 50, width: 100, height: 100)
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            self.scaleDownAnimation()
        }
    }
    func scaleDownAnimation() { //1. start of animation
        UIView.animate(withDuration: 0.5, animations: {
            self.pizzaImage.transform = CGAffineTransform(scaleX: 0.5, y: 0.5 )
            })
        { (success) in
            self.scaleUpAnimation() //2. after the start, it goes here
        }

}

    func scaleUpAnimation() {
        UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseIn,
                       animations: {
                        self.pizzaImage.transform = CGAffineTransform(scaleX: 5, y: 5)
                        
        } ) { (success) in
            self.removeSplashScreen()
        }

    }
    func removeSplashScreen() {
        splashView.removeFromSuperview()
    }
}

