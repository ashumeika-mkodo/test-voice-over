import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var stackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { [weak self] _ in
            self?.loadStackViewElements()
        }
    }
    
    func loadStackViewElements() {
        for i in 1...2 {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Stack Label \(i)"
            self.stackView.addArrangedSubview(label)
        }
        
        // Uncomment to partially fix the issue
        UIAccessibility.post(notification: .screenChanged, argument: nil)
    }
}
