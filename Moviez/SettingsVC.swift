//
//  SettingsVC.swift
//  Moviez
//
//  Created by Trần Ngô Nhật Hưng on 12/3/21.
//

import UIKit

class SettingsVC: UIViewController {
    
    let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "str_settings"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
