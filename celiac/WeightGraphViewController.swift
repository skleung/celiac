//
//  WeightGraphViewController.swift
//  celiac
//
//  Created by Sherman Leung on 1/26/16.
//  Copyright © 2016 Sherman Leung. All rights reserved.
//

import UIKit

class WeightGraphViewController: UIViewController, BEMSimpleLineGraphDelegate, BEMSimpleLineGraphDataSource {

    @IBOutlet weak var graphView: BEMSimpleLineGraphView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        graphView = BEMSimpleLineGraphView.init(frame: CGRectMake(0, 0, 320, 200))
        graphView.delegate = self
        graphView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfPointsInLineGraph(graph: BEMSimpleLineGraphView) -> Int {
        return 10
    }
    
    func lineGraph(graph: BEMSimpleLineGraphView, valueForPointAtIndex index: Int) -> CGFloat {
        return 10
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
