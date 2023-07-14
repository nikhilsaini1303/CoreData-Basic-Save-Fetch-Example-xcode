//
//  ViewController.swift
//  CoreData Basic Save Fetch Example
//
//  Created by Nikhil Saini on 19/04/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    
    @IBOutlet weak var myText: UITextField!
    var cData = [ChildrenName]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveTapped(_ sender: Any) {
        
        let appDe = (UIApplication.shared.delegate) as! AppDelegate
        let context = appDe.persistentContainer.viewContext
        let childObj = NSEntityDescription.insertNewObject(forEntityName: "ChildrenName", into: context) as! ChildrenName
        
        childObj.children = myText.text
        
        do {
            
            try context.save()
            print("Data Has Been Saved Successfully")
            myText.text = nil
        }
        catch {
            printContent("Error Has Been Occurred")
        }
        
        
    }
    
    @IBAction func fetchDataTapped(_ sender: Any) {
        
        let appDe = (UIApplication.shared.delegate) as! AppDelegate
        let context = appDe.persistentContainer.viewContext
        
        do {
            cData = try context.fetch(ChildrenName.fetchRequest()) as! [ChildrenName]
            print("Data Successfully Fetched")
            for childObj in cData {
                print(childObj.children!)
            }
                    
        }
        catch {
            print("Error to Fetch Data")
        }
        
        
    }
    
    
}

