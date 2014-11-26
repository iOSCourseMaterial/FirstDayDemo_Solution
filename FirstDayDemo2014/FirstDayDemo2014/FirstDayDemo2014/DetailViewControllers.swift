//
//  DetailViewControllers.swift
//  FirstDayDemo2014
//
//  Created by David Fisher on 11/26/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

import UIKit


class ButtonsAndLabelsViewController : UIViewController {

    @IBOutlet weak var countLabel: UILabel!

    var counter = 0

    @IBAction func pressedCountUp(sender: AnyObject) {
        counter++
        countLabel.text = "Count = \(counter)"
    }
    @IBAction func pressedCountDown(sender: AnyObject) {
        counter--
        countLabel.text = "Count = \(counter)"
    }
}


class TouchesViewController : UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        let touch = touches.anyObject() as UITouch

        UIView.beginAnimations(nil, context: nil)
        logoImageView.center = touch.locationInView(self.view)
        UIView.commitAnimations()
    }
}


class StudentTableViewController : UITableViewController {

    let students = ["Nick", "Trevor", "Joseph", "Ruying", "Zhiyang", "Chris", "Jonathan", "Matt", "Tayler", "Jonathan", "Matt", "Jonathan", "Haolin", "Anthony", "Tianjiao", "Chris", "Bo", "Ashok", "Philip", "Grant", "Ishank", "Stephen", "Benedict", "Xiangqing"]

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("StudentCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = students[indexPath.row]
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let name = students[indexPath.row]
        var ac = UIAlertController(title: "You clicked on " + name, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        ac.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        presentViewController(ac, animated: true, completion: nil)
    }
}
