//
//  ViewController.swift
//  MiniBrowser
//
//  Created by Yuri Kim on 26/09/2018.
//  Copyright © 2018 Yuri Kim. All rights reserved.
//

import UIKit
import WebKit  // WKWebView를 위한 것

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {

    @IBOutlet weak var bookmarkSegmentedControl: UISegmentedControl!
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spinningActivityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var urlTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialURL = "https://www.facebook.com"
        let myURL = URL(string: initialURL)
        let myRequest = URLRequest(url: myURL!)
        mainWebView.load(myRequest)
        urlTextField.text = initialURL
        // web view에서는 storyboard에서 연결해주는 그거 없음!! 하드코딩으로 delegate를 자기 자신으로 해줘요
        mainWebView.navigationDelegate = self
    }

    @IBAction func bookmarkAction(_ sender: Any) {
        let bookmarkURL = bookmarkSegmentedControl.titleForSegment(at: bookmarkSegmentedControl.selectedSegmentIndex)
        let urlString = "https://www.\(bookmarkURL!).com"
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)"
        if !urlString.hasPrefix("https://") {
            urlString = "https://\(urlTextField.text!)"
        }
        urlTextField.text = urlString
        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        return true
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinningActivityIndicatorView.startAnimating()

    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinningActivityIndicatorView.stopAnimating()
    }
    
    @IBAction func goBackAction(_ sender: Any) {
        mainWebView.goBack()
    }
    @IBAction func goForwardAction(_ sender: Any) {
        mainWebView.goForward()
    }
    @IBAction func stopAction(_ sender: Any) {
        mainWebView.stopLoading()
    }
    @IBAction func refreshAction(_ sender: Any) {
        mainWebView.reload()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

