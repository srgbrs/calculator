import UIKit

class ViewController: UIViewController {
    var numberOnScreen :Double = 0;
    var prevNumber:Double = 0;
    var performingMath = false;
    var operation = 0;

    @IBOutlet weak var label: UILabel!
    // on added buttons touch function works
    @IBAction func numbers(_ sender: UIButton)
    {
        if (performingMath == true)
        {
            label.text = String(sender.tag-1) ;
            numberOnScreen = Double(label.text!)!
            performingMath = false
        }
        else
        {
            label.text = label.text! + String(sender.tag-1);
            numberOnScreen = Double(label.text!)!
        }
    }
    
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if (label.text != "" && sender.tag != 11 && sender.tag != 16) // if not C & =
        {
            prevNumber = Double(label.text!)!
            // + - * / pressed
            if sender.tag == 12 // div
            {
                
            }
            else if sender.tag == 13 // mult
            {
                
            }
            else if sender.tag == 14 //minus
            {
                
            }
            else if sender.tag == 15 // plus
            {
                
            }
            operation = sender.tag
            performingMath = true;
            
        }
        else if (sender.tag == 16)
        {
            if operation == 12
            {
                label.text = String(prevNumber / numberOnScreen);
            }
            else if operation == 13
            {
                label.text = String(prevNumber * numberOnScreen);
            }
            else if operation == 14
            {
                label.text = String(prevNumber - numberOnScreen);
            }
            else if operation == 15
            {
                label.text = String(prevNumber+numberOnScreen);
            }
        }
        else if sender.tag == 11
        {
            label.text = "";
            prevNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

