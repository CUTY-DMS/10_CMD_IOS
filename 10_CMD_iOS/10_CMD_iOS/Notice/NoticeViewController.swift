import UIKit
import SnapKit
import Then

// 테이블뷰로 수정,최신순도 수정
class NoticeViewController: UIViewController {
    let noticeText = UILabel().then {
        $0.text = "공지"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    }
    let subView = UIView() .then{
        $0.layer.borderColor = UIColor.subView.cgColor
        $0.layer.borderWidth = 4
        $0.layer.cornerRadius = 20
    }
    let subLabel = UILabel() .then{
        $0.text = "주요 공지 확인 하러 가기!"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        $0.textAlignment = .center
    }
    let Line = UIImageView().then {
        $0.image = UIImage(named: "Line")
    }
    let noticeInfo = UIButton().then {
        $0.setTitle("제목", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = UIColor(named: "basicColor")
        $0.layer.cornerRadius = 15
    }
    let noticeDay = UILabel().then {
        $0.text = "8월 3일"
        $0.textColor = UIColor(named: "noticeDay")
        $0.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
    }
    let underBar = UIImageView().then {
        $0.image = UIImage(named: "underBar")
    }
    let scheduleButton = UIButton().then {
        $0.setImage(UIImage(named: "schedule"), for: .normal)
    }
    let studentButton = UIButton().then {
        $0.setImage(UIImage(named: "student"), for: .normal)
    }
    let notificationButton = UIButton().then {
        $0.setImage(UIImage(named: "notification"), for: .normal)
    }
    let myPageButton = UIButton().then {
        $0.setImage(UIImage(named: "myPage"), for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        
        view.backgroundColor = .white
    }
    
    func layout() {
        [
            noticeText,
            subView,
            subLabel,
            Line,
            noticeInfo,
            noticeDay,
            underBar,
            scheduleButton,
            studentButton,
            notificationButton,
            myPageButton
        ].forEach { view.addSubview($0) }
        
        noticeText.snp.makeConstraints {
            $0.top.equalToSuperview().inset(68)
            $0.left.equalToSuperview().inset(184)
            $0.right.equalToSuperview().inset(157)
            $0.height.equalTo(18)
            $0.width.equalTo(79)
        }
        subView.snp.makeConstraints{
            $0.top.equalTo(noticeText.snp.bottom).offset(22)
            $0.left.right.equalToSuperview().inset(17)
            $0.height.equalTo(43)
        }
        subLabel.snp.makeConstraints {
            $0.top.equalTo(noticeText.snp.bottom).offset(22)
            $0.left.equalToSuperview().inset(17)
            $0.right.equalToSuperview().inset(17)
            $0.height.equalTo(43)
            $0.width.equalTo(359)
        }
        Line.snp.makeConstraints {
            $0.top.equalTo(noticeText.snp.bottom).offset(80)
            $0.left.equalToSuperview().inset(0)
            $0.right.equalToSuperview().inset(0)
            $0.height.equalTo(1)
            $0.width.equalTo(393)
        }
        noticeInfo.snp.makeConstraints {
            $0.top.equalTo(Line.snp.bottom).offset(20)
            $0.left.equalToSuperview().inset(32)
            $0.right.equalToSuperview().inset(31)
            $0.height.equalTo(62)
            $0.width.equalTo(330)
        }
        noticeDay.snp.makeConstraints {
            $0.top.equalTo(noticeInfo.snp.top).offset(46)
            $0.left.equalToSuperview().inset(287)
            $0.right.equalToSuperview().inset(12)
            $0.height.equalTo(10)
            $0.width.equalTo(31)
        }
        underBar.snp.makeConstraints {
            $0.top.equalTo(noticeInfo.snp.bottom).offset(525)
            $0.left.equalToSuperview().inset(0)
            $0.right.equalToSuperview().inset(0)
            $0.height.equalTo(80)
            $0.width.equalTo(393)
        }
        scheduleButton.snp.makeConstraints {
            $0.top.equalTo(underBar.snp.top).offset(18)
            $0.left.equalToSuperview().inset(45)
            $0.right.equalToSuperview().inset(308)
            $0.height.equalTo(40)
            $0.width.equalTo(40)
        }
        studentButton.snp.makeConstraints {
            $0.top.equalTo(underBar.snp.top).offset(22)
            $0.left.equalToSuperview().inset(128)
            $0.right.equalToSuperview().inset(214)
            $0.height.equalTo(32)
            $0.width.equalTo(51)
        }
        notificationButton.snp.makeConstraints {
            $0.top.equalTo(underBar.snp.top).offset(14)
            $0.left.equalToSuperview().inset(222)
            $0.right.equalToSuperview().inset(308)
            $0.height.equalTo(43)
            $0.width.equalTo(44)
        }
        myPageButton.snp.makeConstraints {
            $0.top.equalTo(underBar.snp.top).offset(18)
            $0.left.equalToSuperview().inset(308)
            $0.right.equalToSuperview().inset(45)
            $0.height.equalTo(36)
            $0.width.equalTo(40)
        }
    }
}
