//
//  MyFoodStoriesPageViewController.swift
//  12-16-20 Launch Screen Testing
//
//  Created by Darianne Salinas on 12/17/20.
//

import UIKit

class MyFoodStoriesPageViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var foodStoriesArray = [" Grandma's Chocolate Oozing Brownies",
                            "Receta de Chiles Rellenos",
                            "Emily's Holiday Cake",
                            "Abuelita's Pozole Recipe",
                            "Aunti Adela's Pupusas"]
                        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        tableView.delegate = self
//        tableView.dataSource = self
    }
}
//    extension CuisineListViewController: UITableViewDataSource {
//
//        //this function tells data source which is self which is our ToDoDataList to return the number of rows in a given section of tableview
//        //so we want to return the number of rows. data comes from the VC's toDoArray
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            print("numberOfRowsInSection was just called. Returning \(foodStoriesArray.count)")
//            return foodStoriesArray.count
//        }
//
//        //notcie what is being returned here, it's a UITable cell,  create a cell, when the tableview calls this function, it's going to pass in the indexPath and give the row of the data in the array that we need in the cell.
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            print("cellForRowAt was just called for indexPath.row = \(indexPath.row) which is the cell containing \(foodStoriesArray[indexPath.row])")
//
//            // create UItableViewCell named cell using the indentifier "cell" we set on Main.storyboard, let's make it a constant
//            //deque or recycle the cells on screen to show the data
//            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//
//            //add array item to cell's textLabel (which xcode gives us). .indexPath.row is the array element number
//            cell.textLabel?.text = placeholders[indexPath.row]
//            return cell
//        }
//    }

