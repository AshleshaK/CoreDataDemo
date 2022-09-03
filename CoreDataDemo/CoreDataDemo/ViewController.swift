//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Mac on 28/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addressText: UITextField!
    @IBOutlet weak var mobileText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    var i = Int()
    var isUpdate = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func buttonSave(_ sender: Any) {
        var dictionary = ["name":nameText.text,"address":addressText.text,"city":cityText.text,"mobile":mobileText.text]
        if isUpdate {
            DatabaseHelper.sharedInstance.editData(object: dictionary as! [String:String], i: i)
        }
        else{
            DatabaseHelper.sharedInstance.save(object: dictionary as! [String:String])
        }
       
    }
    
    @IBAction func showButtonClick(_ sender: Any) {
        
        if let listVC = storyboard?.instantiateViewController(identifier: "ListViewController") as? ListViewController {
            listVC.delegate = self
            navigationController?.pushViewController(listVC, animated: true)
        }
    }
}

extension ViewController: DataPass {
    func data(object: [String : String], index: Int, isEdit: Bool) {
        nameText.text = object["name"]
        addressText.text = object["address"]
        cityText.text = object["city"]
        mobileText.text = object["mobile"]
        i = index
        isUpdate = isEdit
    }
    
}

