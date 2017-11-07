import UIKit
import WebKit

class HomeViewController: UIViewController {

    @IBOutlet weak var urlTextField: UITextField?

    @IBOutlet weak var webView: WKWebView?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func goButton_TouchUpInside(_ sender: Any) {
        guard
            let urlString = urlTextField?.text,
            let requestedUrl = URL(string: urlString)
            else {return}
        webView?.load(URLRequest(url: requestedUrl))
    }

    @IBAction func 👈(_ sender: Any) {
        webView?.goBack()
    }

    @IBAction func 👉(_ sender: Any) {
        webView?.goForward()
    }

    @IBAction func reload(_ sender: Any) {
        webView?.reload()
    }
}

extension HomeViewController: WKNavigationDelegate {
    // If you're troubleshooting third-party code that misimplements WKWebView, it's probably actually misimplementing
    // WKNavigationDelegate...
    // https://developer.apple.com/documentation/webkit/wknavigationdelegate
}
