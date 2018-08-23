//
//  Hoc_ViewController.swift
//  Sample Login
//
//  Created by Fate on 8/22/18.
//  Copyright © 2018 Fate. All rights reserved.
//

import UIKit

class Hoc_ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var listBai: UITableView!
    var array:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //dang ki xib
        listBai.register(UINib(nibName: "XIBTableViewCell", bundle: nil), forCellReuseIdentifier: "XIBTableViewCell")
        
        //Khai bao data source
        array=["Bai1","Bai2","Bai3","Bai4","Bai5","Bai6","Bai7"]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "XIBTableViewCell") as! CellBasicTableViewCell
        cell.CellLabel.text = UILabel.
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
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
