import Then
import SnapKit
import UIKit

class MenuViewController: UIViewController {
    
    let titleLabel = UILabel() .then{
        $0.text = "급식"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        $0.textAlignment = .center
    }
    
    let subView = UIView() .then{
        $0.layer.borderColor = UIColor.subView.cgColor
        $0.layer.borderWidth = 4
        $0.layer.cornerRadius = 20
    }
    
    let subLabel = UILabel() .then{
        $0.text = "원하는 급식 메뉴!"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        $0.textAlignment = .center
    }
    
    let menuTextField = UITextField() .then{
        $0.placeholder = "희망하는 급식 메뉴를 적어주세요!"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        $0.layer.cornerRadius = 15
        $0.backgroundColor = .meal
        $0.addleftPadding()
    }
    
    let postButton = UIButton().then {
        $0.setImage(UIImage(named: "PostButton"), for: .normal)
    }
    
    let line = UIView() .then{
        $0.backgroundColor = .meal
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        
        view.addSubview(titleLabel)
        view.addSubview(subView)
        view.addSubview(subLabel)
        view.addSubview(menuTextField)
        view.addSubview(postButton)
        view.addSubview(line)
        
        
        titleLabel.snp.makeConstraints{
            $0.top.equalToSuperview().inset(68)
            $0.centerX.equalToSuperview()
        }
        
        subView.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(22)
            $0.left.right.equalToSuperview().inset(17)
            $0.height.equalTo(43)
        }
        
        subLabel.snp.makeConstraints{
            $0.top.equalTo(subView.snp.top).inset(7)
            $0.bottom.equalTo(subView.snp.bottom).inset(7)
            $0.centerX.equalToSuperview()
            
        }
        
        menuTextField.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(150)
            $0.left.right.equalToSuperview().inset(31)
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(180)
        }
        
        postButton.snp.makeConstraints{
            $0.top.equalToSuperview().inset(716)
            $0.left.equalToSuperview().inset(328)
            $0.height.equalTo(47)
            $0.width.equalTo(47)
            
            
        }
        
        line.snp.makeConstraints{
            $0.top.equalTo(subView.snp.bottom).offset(65)
            $0.right.left.equalToSuperview().inset(1)
            $0.width.equalTo(430)
            $0.height.equalTo(1)
        }
    }
}

extension UITextField {
    func addleftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 19, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
}
