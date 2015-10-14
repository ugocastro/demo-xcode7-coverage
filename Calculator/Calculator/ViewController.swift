import UIKit

class ViewController: UIViewController {

    /// 'x' value field
    @IBOutlet weak var x: UITextField!
    /// 'y' value field
    @IBOutlet weak var y: UITextField!
    /// Operation result field
    @IBOutlet weak var result: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /**
    Sum operation (+ button)
    */
    @IBAction func sum() {
        let result = Math.sum(x: Float(self.x.text!)!, y: Float(self.y.text!)!)
        self.result.text = result.description
    }

    /**
    Subtract operation (- button)
    */
    @IBAction func subtract() {
        let result = Math.subtract(x: Float(self.x.text!)!, y: Float(self.y.text!)!)
        self.result.text = result.description
    }
    
    /**
    Multiply operation (x button)
    */
    @IBAction func multiply() {
        let result = Math.multiply(x: Float(self.x.text!)!, y: Float(self.y.text!)!)
        self.result.text = result.description
    }
    
    /**
    Divide operation (/ button)
    */
    @IBAction func divide() {
        do {
            let result = try Math.divide(x: Float(self.x.text!)!, y: Float(self.y.text!)!)
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
