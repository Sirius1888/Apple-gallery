//
//  ListTableViewController.swift
//  Apple gallery
//
//  Created by sirius on 12.02.2019.
//  Copyright © 2019 sirius. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    var allData = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        allData += [
            Product(name: "iPhone 6S",
                    type: "Phone",
                    imagePath: "im_iphone",
                    info: "The original iPhone introduced the world to Multi-Touch, forever changing the way people experience technology. With 3D Touch, you can do things that were never possible before. It senses how deeply you press the display, letting you do all kinds of essential things more quickly and simply."),
            
            Product(name: "iPad Pro",
                    type: "Tablet",
                    imagePath: "im_ipad",
                    info: "iPad Pro is more than the next generation of iPad — it’s an uncompromising vision of personal computing for the modern world. It puts incredible power that leaps past most portable PCs at your fingertips. It makes even complex work as natural as touching, swiping, or writing with a pencil."),
            
            Product(name: "Apple Watch",
                    type: "Watch",
                    imagePath: "im_apple_watch",
                    info: "Instantly receive and respond to your favorite notifications. Get the motivation you need to stay active and healthy. Express your personal style in a whole new way. From the way it works to the way it looks, Apple Watch isn’t just something you wear. It’s an essential part of who you are."),
            
            Product(name: "iMac",
                    type: "Computer",
                    imagePath: "im_imac",
                    info: "The idea behind iMac has never wavered: to craft the ultimate desktop experience. The best display, paired with high-performance processors, graphics, and storage — all within an incredibly thin, seamless enclosure. And that commitment continues with the all-new 21.5‑inch iMac with Retina 4K display."),
            
            Product(name: "Macbook Pro",
                    type: "Computer",
                    imagePath: "im_macbook",
                    info: "A groundbreaking Retina display. A new force-sensing trackpad. All-flash architecture. Powerful dual-core and quad-core Intel processors. Together, these features take the notebook to a new level of performance. And they will do the same for you in everything you create."),
        ]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let product: Product = self.allData[indexPath.row]
        
        cell.imageView?.image = product.getImage()
        cell.textLabel?.text = product.name
        cell.detailTextLabel?.text = product.type
        
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goDetail"
        {
            // Здесь объектом sender является ячейка, на которую нажимает юзер
            // Получаем indexPath выбранной ячейки с помощью метода indexPathForCell:
            let indexPath = self.tableView.indexPath(for: (sender as! UITableViewCell))
            
            // Получаем объект Product под нужным индексом
            let product = self.allData[indexPath!.row]
            
            // Получаем контроллер, на который юзер попадёт с этим segue
            let detailVC: DetailViewController = segue.destination as! DetailViewController
            
            // Задаём атрибут Product в DetailVC
            detailVC.product = product
        }
    }

}
