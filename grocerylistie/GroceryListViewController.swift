//
//  GroceryListViewController.swift
//  grocerylistie
//
//  Created by Cube Whidden on 10/12/18.
//  Copyright © 2018 Cube Whidden. All rights reserved.
//

import UIKit

class GroceryListViewController: UITableViewController {

    var groceryList = ["targetList","walmartList","samsClubList"]
    var groceryListDescriptions = ["this is the everyday needs", "needs for the month", "holiday list"]
    var groceryListImages = ["first", "second", "first"]
    

    @IBAction func addGroceryList(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "Let's add another list", preferredStyle: .alert)
        //self.present(alert, animated: true, completion: nil)
        
        //let action1 = UIAlertAction(title: "Default", style: .default) { (action:UIAlertAction) in
        //    print("You've pressed default");
        //}
        
        let action = UIAlertAction(title: "Add Grocery List", style: .default) { (alertAction) in
            
            let textField = alert.textFields![0] as UITextField

            let descField = alert.textFields![1] as UITextField
            
            if (textField.text! != "" && descField.text! != "") {
                self.groceryList.append(textField.text!)
                self.groceryListDescriptions.append(descField.text!)
                self.groceryListImages.append("second")
                self.tableView.reloadData()
            }
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "Enter your list"
            
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "Enter your description"
        }

        
        let action2 = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction) in
            print("You've pressed cancel");
        }
        
        //let action3 = UIAlertAction(title: "Destructive", style: .destructive) { (action:UIAlertAction) in
        //    print("You've pressed the destructive");
        //}
        
        alert.addAction(action)
        alert.addAction(action2)
        //alert.addAction(action3)
        self.present(alert, animated: true, completion: nil)

/*
        let action = UIAlertAction(title: "Name Input", style: .default) { (alertAction) in
            let textField = alert.textFields![0] as UITextField
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "Enter your name"
        }
        
        alert.addAction(action)
        self.window.present(self.window.rootViewController, animated:true, completion: nil)
 */
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groceryList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listItem", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = groceryList[indexPath.row]
        cell.detailTextLabel?.text = groceryListDescriptions[indexPath.row]
        cell.detailTextLabel?.numberOfLines = 0;
        cell.detailTextLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;
        cell.imageView?.image = UIImage(named: groceryListImages[indexPath.row])
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
