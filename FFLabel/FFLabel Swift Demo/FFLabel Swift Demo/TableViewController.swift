//
//  TableViewController.swift
//  FFLabel Swift Demo
//
//  Created by 刘凡 on 15/7/20.
//  Copyright © 2015年 joyios. All rights reserved.
//

import UIKit
import FFLabel

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DemoCell

        // Configure the cell...
        cell.contentLabel.text = demoContent

        return cell
    }
}

class DemoCell: UITableViewCell, FFLabelDelegate {
    @IBOutlet weak var contentLabel: FFLabel!
    
    override func awakeFromNib() {
        contentLabel.labelDelegate = self
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentLabel.preferredMaxLayoutWidth = bounds.width - 16
    }
    
    func labelDidSelectedLinkText(label: FFLabel, text: String) {
        print(text)
    }
}