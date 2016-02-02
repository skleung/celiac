//
//  MedicationViewController.swift
//  celiac
//
//  Created by Sherman Leung on 2/2/16.
//  Copyright © 2016 Sherman Leung. All rights reserved.
//

import UIKit

class MedicationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("medicationCell")
        cell?.textLabel!.text = "medication \(indexPath.row)"
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}
