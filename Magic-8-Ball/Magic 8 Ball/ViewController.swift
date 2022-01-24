import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Ball: UIImageView!
    
        let ballArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball2")]


    @IBAction func Ask(_ sender: UIButton) {
        
        
        
        Ball.image = ballArray.randomElement()
        
    }
    
}

