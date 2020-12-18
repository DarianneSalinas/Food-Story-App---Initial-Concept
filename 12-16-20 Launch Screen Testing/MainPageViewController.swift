//
//  ViewController.swift
//  12-16-20 Launch Screen Testing
//
//  Created by Darianne Salinas on 12/16/20.
//

import UIKit



class MainPageViewController: UIViewController {
   
    let foodStoryImage = UIImageView(image: UIImage(named: "foodStory"))
    let splashView = UIView()
    
   
    @IBOutlet weak var mainFoodImageView: UIImageView!
    
    @IBOutlet weak var descriptionImageViewTxtField: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       //first screen that loads
        mainFoodImageView.image = UIImage(named: "Brownie")
        descriptionImageViewTxtField.text = "Grandma's Chocolate Oozing Brownies"
        
        //splashView is the launching screen with food story logo animation
        splashView.backgroundColor = .white
        view.addSubview(splashView)
    
        splashView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        
        foodStoryImage.contentMode = .scaleAspectFit
        splashView.addSubview(foodStoryImage)
        foodStoryImage.frame = CGRect(x: splashView.frame.midX - 50, y: splashView.frame.midY - 50, width: 100, height: 100)
    }

    
   
//        if mainFoodImageView.image! == UIImage(named: "Browmies") {
//            descriptionImageView.text = "Grandma's Chocolate Oozing Brownies" }; do
//            {   else if { mainFoodImageView.image! = UIImage(named: "")
//            }
////
    
    
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            self.scaleDownAnimation()
        }
    }
    func scaleDownAnimation() { //1. start of animation
        UIView.animate(withDuration: 0.3, animations: {
            self.foodStoryImage.transform = CGAffineTransform(scaleX: 0.8, y: 0.8 )
            })
        { (success) in
            self.scaleUpAnimation() //2. after the start, it goes here
        }
}

    func scaleUpAnimation() {
        UIView.animate(withDuration: 1, delay: 0.8, options: .curveEaseIn,
                       animations: {
                        self.foodStoryImage.transform = CGAffineTransform(scaleX: 5, y: 5)
        } ) { (success) in
            self.removeSplashScreen()
        }

    }
    func removeSplashScreen() {
        splashView.removeFromSuperview()
    }
    
    
    //IBactions for buttons on home screen
    @IBAction func nextRecipeButtonPressed(_ sender: UIButton) {
        
//        if UIImage(named: "Brownie") == mainFoodImageView.image{
//            descriptionImageViewTxtField.text! = ("Receta de Chiles Rellenos")
//        } else if mainFoodImageView.image == UIImage(named: "ChilesRellenos") {
//            descriptionImageViewTxtField.text! = ("Emily's Holiday Cake")
//        } else if mainFoodImageView.image == UIImage(named: "HolidayCake") {
//            descriptionImageViewTxtField.text! = ("Tia Adela's Pupusas")
//        } else if mainFoodImageView.image == UIImage(named: "Pupusas") {
//            descriptionImageViewTxtField.text! = ("Grandma's Chocolate Oozing Brownies")
//        } else if mainFoodImageView.image == UIImage(named: "Brownie") {
//            descriptionImageViewTxtField.text! = ("Grandma's Chocolate Oozing Brownies")
//        } else {
//            print("We're sorry. A new recipe will pop up soon!")
//        }
        if descriptionImageViewTxtField.text!.contains("Grandma's") {
            mainFoodImageView.image = UIImage(named: "ChilesRellenos")
            descriptionImageViewTxtField.text = "Receta de Chiles Rellenos"
        } else if descriptionImageViewTxtField.text!.contains("Chiles") {
            mainFoodImageView.image = UIImage(named: "HolidayCake")
            descriptionImageViewTxtField.text = "Emily's Holiday Cake"
        } else if descriptionImageViewTxtField.text!.contains("Emily's") {
            mainFoodImageView.image = UIImage(named: "Pozole")
            descriptionImageViewTxtField.text = "Abuelita's Pozole Recipe"
        } else if descriptionImageViewTxtField.text!.contains("Pozole") {
            mainFoodImageView.image = UIImage(named: "Pupusas")
            descriptionImageViewTxtField.text = "Auntie Adela's Pupusas"
        } else if descriptionImageViewTxtField.text!.contains("Pupusas") {
            mainFoodImageView.image = UIImage(named: "Brownie")
            descriptionImageViewTxtField.text = "Grandma's Chocolate Oozing Brownies"
        } else {
            print("We're sorry. A new recipe will pop up soon!")
        }
    }
    @IBAction func viewThisRecipeButtonPressed(_ sender: UIButton) {
//        if descriptionImageViewTxtField.text!.contains("Grandma's Chocolate Oozing Brownies"){
//            mainFoodImageView.image = UIImage(named: "Brownie")
//
//        } else if descriptionImageViewTxtField.text!.contains("Receta de Chiles Rellenos") {
//            mainFoodImageView.image = UIImage(named: "ChilesRellenos")
//        } else if descriptionImageViewTxtField.text!.contains("Emily's Holiday Cake") {
//            mainFoodImageView.image = UIImage(named: "HolidayCake")
//        } else if descriptionImageViewTxtField.text!.contains("Abuelita's Pozole") {
//            mainFoodImageView.image = UIImage(named: "Pozole")
//        } else if descriptionImageViewTxtField.text!.contains("Pupusas from Tia(aunt) Anna") {
//            mainFoodImageView.image = UIImage(named: "Pupusas")
//        }
    }
    
}

