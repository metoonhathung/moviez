//
//  WebviewVC.swift
//  Moviez
//
//  Created by Trần Ngô Nhật Hưng on 12/3/21.
//

import UIKit
import WebKit

class WebViewVC: UIViewController {

    @IBOutlet weak var urlField: UITextField!
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var constGoBtn: UIButton!
    
    var link = "https://www.imdb.com/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "primary")
        
        localized()
        NotificationCenter.default.addObserver(forName: Notifications.languageChanged, object: nil, queue: nil) { _ in
            self.localized()
        }
        
        urlField?.text = link
        loadRequest()
    }
    
    func localized() {
        navigationItem.title = "str_webview".localized()
        constGoBtn?.setTitle("str_go".localized(), for: .normal)
    }
    
    func loadRequest() {
        if let url = URL(string: link) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func onGoBtn(_ sender: Any) {
        link = urlField?.text ?? ""
        loadRequest()
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
