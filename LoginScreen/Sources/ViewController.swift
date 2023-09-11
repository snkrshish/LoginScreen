import UIKit
import SnapKit

class ViewController: UIViewController {
    //MARK: - Outlets

    private lazy var imageView: UIImageView = {
        let imageView = UIImage(named: "plane")
        let image = UIImageView(image: imageView)
        return image
    }()


    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()

    }


    //MARK: - Setup
    private func setupLayout() {
        imageView.snp.makeConstraints{
            $0.top.equalTo(view)
            $0.bottom.equalTo(view)
            $0.leading.equalTo(view)
            $0.trailing.equalTo(view)
        }
    }

    private func setupHierarchy() {
        view.addSubview(imageView)
    }

    //MARK: - Action
}

