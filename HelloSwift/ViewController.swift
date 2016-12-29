//
//  ViewController.swift
//  HelloSwift
//
//  Created by Sycooo on 2016/12/28.
//  Copyright © 2016年 Sycooo. All rights reserved.
//

import UIKit
import MBProgressHUD
import MJRefresh

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var table:UITableView!
    var headerRef:MJRefreshNormalHeader!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.brown
        
        self.table = UITableView(frame: CGRect(origin: CGPoint(x: 0, y: 64 ), size: CGSize(width: self.view.bounds.width, height: self.view.bounds.height-64-49)), style: UITableViewStyle.plain)
        self.table.showsVerticalScrollIndicator = false
        self.table.backgroundColor = UIColor.lightGray
        self.table.delegate = self
        self.table.dataSource = self
        self.view .addSubview(self.table)
        
        self.headerRef = MJRefreshNormalHeader(refreshingTarget: self, refreshingAction: #selector(ViewController.headerRefresh))
        self.table.mj_header = self.headerRef
        
    }
    
    func headerRefresh() -> Void {
        
        let delayTime = DispatchTime.now() + Double(Int64(3 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        
        DispatchQueue.main.asyncAfter(deadline: delayTime) {
            
            print("刷新完毕")
            
            self.headerRef.endRefreshing()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "identifier")
        
        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let nextVC = NextViewController()
        
        self.navigationController?.pushViewController(nextVC, animated: true)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func test() -> Void {
        
        let count:Float  = 80
        
        print(count)
        
        let name = "123"
        let sum = name + String(count)
        
        print(sum)
        
        let trans = "ok let's go \(count)"
        
        print(trans)
        
        var arr = ["a", "b", "c"]
        
        print(arr[0])
        
        var dict = ["1":"syc", "2":"cmx"]
        
        print(dict["1"]!)
        
    }

}

