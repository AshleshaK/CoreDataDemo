//
//  TableViewCell.swift
//  CoreDataDemo
//
//  Created by Mac on 29/11/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var labelCity: UILabel!
    @IBOutlet weak var labelMobile: UILabel!
    
    var student: Student! {
        didSet{
            labelName.text = student.name
            labelAddress.text = student.address
            labelCity.text = student.city
            labelMobile.text = student.mobile
        }
    }
}
