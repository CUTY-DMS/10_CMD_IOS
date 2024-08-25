import UIKit
import Then
import SnapKit
//콜렉션뷰로 수정, 에이피아이 받아오기
class StudentViewController: UIViewController {
    let studentInfoText = UILabel().then{
        $0.text = "학생정보"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    }
    let subView = UIView() .then{
        $0.layer.borderColor = UIColor.subView.cgColor
        $0.layer.borderWidth = 4
        $0.layer.cornerRadius = 20
    }
    let subLabel = UILabel() .then{
        $0.text = "1-1"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        $0.textAlignment = .center
    }
    let Line = UIImageView().then {
        $0.image = UIImage(named: "Line")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        
        view.backgroundColor = .white
    }
    
    func layout() {
        [
            studentInfoText,
            subView,subLabel,
            Line
        ].forEach { view.addSubview($0) }
        
        studentInfoText.snp.makeConstraints {
            $0.top.equalToSuperview().inset(68)
            $0.left.equalToSuperview().inset(172)
            $0.right.equalToSuperview().inset(157)
        }
        subView.snp.makeConstraints{
            $0.top.equalTo(studentInfoText.snp.bottom).offset(22)
            $0.left.right.equalToSuperview().inset(17)
            $0.height.equalTo(43)
        }
        subLabel.snp.makeConstraints {
            $0.top.equalTo(studentInfoText.snp.bottom).offset(22)
            $0.left.equalToSuperview().inset(17)
            $0.right.equalToSuperview().inset(17)
            $0.height.equalTo(43)
            $0.width.equalTo(359)
        }
        Line.snp.makeConstraints {
            $0.top.equalTo(studentInfoText.snp.bottom).offset(80)
            $0.left.equalToSuperview().inset(0)
            $0.right.equalToSuperview().inset(0)
            $0.height.equalTo(1)
            $0.width.equalTo(393)
        }
    }
}
