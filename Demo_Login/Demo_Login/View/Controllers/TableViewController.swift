//
//  TableViewController.swift
//  Demo_Login
//
//  Created by Fate on 8/22/18.
//  Copyright © 2018 Fate. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    
    @IBOutlet weak var listBaiHoc: UITableView!
    
    var array:[String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Regiter XIB
         listBaiHoc.register(UINib(nibName: "XIBTableViewCell", bundle: nil), forCellReuseIdentifier: "XIBTableViewCell")
        //Khai bao data source
        array=["Bai 1","Bai 2","Bai 3","Bai 4"]
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "XIBTableViewCell") as! XIBTableViewCell
        cell.setData(title: array[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
