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
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goButton_TouchUpInside(_ sender: Any) {
        guard
            let urlString = urlTextField?.text,
            let requestedUrl = URL(string: urlString)
            else {return}
        webView?.load(URLRequest(url: requestedUrl))
    }

}

