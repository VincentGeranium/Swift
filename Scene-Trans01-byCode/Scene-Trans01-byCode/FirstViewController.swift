import UIKit

class FirstViewContorller: UIViewController {
    
    let firstViewLabel = UILabel()
    let firstViewButton = UIButton()
    let secondViewController = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        firstViewSetUp()
        
    }
    
    func firstViewSetUp() {
        
        firstViewLabel.frame = CGRect(x: view.frame.width / 3,
                                      y: view.frame.height / 5,
                                      width: 200,
                                      height: 150)
        firstViewLabel.text = "FirstVC"
        firstViewLabel.font = UIFont.boldSystemFont(ofSize: 20)
        firstViewLabel.textColor = .white
        view.addSubview(firstViewLabel)
        
        firstViewButton.frame = CGRect(x: view.frame.width / 3,
                                       y: view.frame.height / 4,
                                       width: 200,
                                       height: 150)
        firstViewButton.setTitle("Move", for: .normal)
        firstViewButton.setTitleColor(.white, for: .normal)
        firstViewButton.addTarget(self, action: #selector(didTabFirstViewButton), for: .touchUpInside)
        view.addSubview(firstViewButton)
    }
    
    @objc func didTabFirstViewButton() {
        self.present(secondViewController, animated: true, completion: nil)
    }
    
}
