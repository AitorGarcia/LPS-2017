//
//  AmigoTableViewController.swift
//  secondApp
//
//  Created by Aula11 on 16/10/17.
//  Copyright © 2017 Aitor García Luiz. All rights reserved.
//

import UIKit

class AmigoTableViewController: UITableViewController {

    
    var amigos = [Amigo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let amigo1 = Amigo(nombre: "Morty", foto: UIImage(named:"Morty")!, gAfinidad: 3)
        let amigo2 = Amigo(nombre: "Rick", foto: UIImage(named:"Rick")!, gAfinidad: 4)
        let amigo3 = Amigo(nombre: "Mr Meeseeks", foto: UIImage(named:"Mr meeseeks")!, gAfinidad: 1)
        
        amigos += [amigo1!, amigo2!, amigo3!]
    }
    
    
    
    // MARK: - Unwind segue desde AmigoViewController
    
    @IBAction func addNuevoAmigo(sender: UIStoryboardSegue){
        let sourceViewController = sender.sourceViewController as! AmigoViewController
        let nuevoAmigo = sourceViewController.amigo
        
        /*if(nuevoAmigo != nil){
            saveBtn.
        }*/
        
        
        amigos.append(nuevoAmigo!)
        let newIndexPath = NSIndexPath(forRow: amigos.count-1, inSection: 0)
        tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return amigos.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("AmigoTableViewCell", forIndexPath: indexPath) as! AmigoTableViewCell
        cell.nombre.text = amigos[indexPath.row].nombre
        cell.foto.image = amigos[indexPath.row].foto
        cell.evaluacion.gradoAfinidad = amigos[indexPath.row].gradoAfinidad
        cell.accessoryType = .None
        
        return cell
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
