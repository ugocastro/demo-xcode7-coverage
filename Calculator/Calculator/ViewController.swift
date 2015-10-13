import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBOutlet weak var result: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func sum() {
        let result = Operation.sum(x: Float(self.x.text!)!, y: Float(self.y.text!)!)
        self.result.text = result.description
    }

    @IBAction func subtract() {
        let result = Operation.sub(x: Float(self.x.text!)!, y: Float(self.y.text!)!)
        self.result.text = result.description
    }
    
    @IBAction func multiply() {
        let result = Operation.mult(x: Float(self.x.text!)!, y: Float(self.y.text!)!)
        self.result.text = result.description
    }
    
    
    @IBAction func divide() {
        do {
            let result = try Operation.div(x: Float(self.x.text!)!, y: Float(self.y.text!)!)
            self.result.text = result.description
        } catch Exception.DivideByZero {
            let alertController = UIAlertController(title: "Alert", message:
                "It's not possible to divide by zero.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        } catch {
            NSLog("An error occurred.")
        }
    }
}

