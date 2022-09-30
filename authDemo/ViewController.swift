import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onLoginButton(_ sender: UIButton) {
        if(usernameTextField.text != "" && passwordTextField.text != ""){
            let vc = storyboard?.instantiateViewController(withIdentifier: "vcSid") as! ViewController2
            navigationController!.pushViewController(vc, animated: true)
      print("Login successfully")
        }
        else{
            print("Invalid credentials")}
    }
    
}

