import UIKit
import SnapKit
import Then

// 테이블뷰로 바꾸기, 시간표 글자 크기줄이기
class ScheduleViewController: UIViewController {
    let ScheduleText = UILabel().then {
        $0.text = "시간표"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    }
    let Line = UIImageView().then {
        $0.image = UIImage(named: "Line")
    }
    let day = UIImageView().then {
        $0.image = UIImage(named: "dayImage")
    }
    let period1Text = UILabel().then {
        $0.text = "1교시"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
    }
    let period1Image = UIImageView().then {
        $0.image = UIImage(named: "periodImage")
    }
    let subject1Name = UILabel().then {
        $0.text = "과목1"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 18, weight: .light)
    }
    let period2Text = UILabel().then {
        $0.text = "2교시"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
    }
    let period2Image = UIImageView().then {
        $0.image = UIImage(named: "periodImage")
    }
    let subject2Name = UILabel().then {
        $0.text = "과목2"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 18, weight: .light)
    }
    let period3Text = UILabel().then {
        $0.text = "3교시"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
    }
    let period3Image = UIImageView().then {
        $0.image = UIImage(named: "periodImage")
    }
    let subject3Name = UILabel().then {
        $0.text = "과목3"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 18, weight: .light)
    }
    let period4Text = UILabel().then {
        $0.text = "4교시"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
    }
    let period4Image = UIImageView().then {
        $0.image = UIImage(named: "periodImage")
    }
    let subject4Name = UILabel().then {
        $0.text = "과목4"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 18, weight: .light)
    }
    let period5Text = UILabel().then {
        $0.text = "5교시"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
    }
    let period5Image = UIImageView().then {
        $0.image = UIImage(named: "periodImage")
    }
    let subject5Name = UILabel().then {
        $0.text = "과목5"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 18, weight: .light)
    }
    let period6Text = UILabel().then {
        $0.text = "6교시"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
    }
    let period6Image = UIImageView().then {
        $0.image = UIImage(named: "periodImage")
    }
    let subject6Name = UILabel().then {
        $0.text = "과목6"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 18, weight: .light)
    }
    let period7Text = UILabel().then {
        $0.text = "7교시"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
    }
    let period7Image = UIImageView().then {
        $0.image = UIImage(named: "periodImage")
    }
    let subject7Name = UILabel().then {
        $0.text = "과목7"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 18, weight: .light)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        
        view.backgroundColor = .white
        
        func layout() {
            [
                ScheduleText,
                Line,day,
                period1Text,period1Image,subject1Name,
                period2Text,period2Image,subject2Name,
                period3Text,period3Image,subject3Name,
                period4Text,period4Image,subject4Name,
                period5Text,period5Image,subject5Name,
                period6Text,period6Image,subject6Name,
                period7Text,period7Image,subject7Name,
                
            ].forEach { view.addSubview($0) }
            
            ScheduleText.snp.makeConstraints {
                $0.top.equalToSuperview().inset(68)
                $0.left.equalToSuperview().inset(177)
                $0.right.equalToSuperview().inset(157)
            }
            Line.snp.makeConstraints {
                $0.top.equalTo(ScheduleText.snp.bottom).offset(80)
                $0.left.equalToSuperview().inset(0)
                $0.right.equalToSuperview().inset(0)
                $0.height.equalTo(1)
                $0.width.equalTo(393)
            }
            day.snp.makeConstraints {
                $0.top.equalTo(Line.snp.bottom).offset(18)
                $0.left.equalToSuperview().inset(107)
                $0.right.equalToSuperview().inset(106)
                $0.height.equalTo(51)
                $0.width.equalTo(180)
            }
            period1Text.snp.makeConstraints {
                $0.top.equalTo(Line.snp.bottom).offset(99)
                $0.left.equalToSuperview().inset(13)
                $0.right.equalToSuperview().inset(309)
                $0.height.equalTo(37)
                $0.width.equalTo(71)
            }
            period1Image.snp.makeConstraints {
                $0.top.equalTo(day.snp.bottom).offset(24)
                $0.left.equalToSuperview().inset(92)
                $0.right.equalToSuperview().inset(14)
                $0.height.equalTo(49)
                $0.width.equalTo(287)
            }
            subject1Name.snp.makeConstraints {
                $0.top.equalTo(period1Image.snp.top).offset(6)
                $0.left.equalTo(period1Image.snp.left).offset(97)
                $0.right.equalTo(period1Image.snp.right).offset(98)
                $0.height.equalTo(37)
                $0.width.equalTo(92)
            }
            period2Text.snp.makeConstraints {
                $0.top.equalTo(period1Text.snp.bottom).offset(23)
                $0.left.equalToSuperview().inset(13)
                $0.right.equalToSuperview().inset(309)
                $0.height.equalTo(37)
                $0.width.equalTo(71)
            }
            period2Image.snp.makeConstraints {
                $0.top.equalTo(period1Image.snp.bottom).offset(11)
                $0.left.equalToSuperview().inset(92)
                $0.right.equalToSuperview().inset(14)
                $0.height.equalTo(49)
                $0.width.equalTo(287)
            }
            subject2Name.snp.makeConstraints {
                $0.top.equalTo(period2Image.snp.top).offset(6)
                $0.left.equalTo(period2Image.snp.left).offset(97)
                $0.right.equalTo(period2Image.snp.right).offset(98)
                $0.height.equalTo(37)
                $0.width.equalTo(92)
            }
            period3Text.snp.makeConstraints {
                $0.top.equalTo(period2Text.snp.bottom).offset(23)
                $0.left.equalToSuperview().inset(13)
                $0.right.equalToSuperview().inset(309)
                $0.height.equalTo(37)
                $0.width.equalTo(71)
            }
            period3Image.snp.makeConstraints {
                $0.top.equalTo(period2Image.snp.bottom).offset(11)
                $0.left.equalToSuperview().inset(92)
                $0.right.equalToSuperview().inset(14)
                $0.height.equalTo(49)
                $0.width.equalTo(287)
            }
            subject3Name.snp.makeConstraints {
                $0.top.equalTo(period3Image.snp.top).offset(6)
                $0.left.equalTo(period3Image.snp.left).offset(97)
                $0.right.equalTo(period3Image.snp.right).offset(98)
                $0.height.equalTo(37)
                $0.width.equalTo(92)
            }
            period4Text.snp.makeConstraints {
                $0.top.equalTo(period3Text.snp.bottom).offset(23)
                $0.left.equalToSuperview().inset(13)
                $0.right.equalToSuperview().inset(309)
                $0.height.equalTo(37)
                $0.width.equalTo(71)
            }
            period4Image.snp.makeConstraints {
                $0.top.equalTo(period3Image.snp.bottom).offset(11)
                $0.left.equalToSuperview().inset(92)
                $0.right.equalToSuperview().inset(14)
                $0.height.equalTo(49)
                $0.width.equalTo(287)
            }
            subject4Name.snp.makeConstraints {
                $0.top.equalTo(period4Image.snp.top).offset(6)
                $0.left.equalTo(period4Image.snp.left).offset(97)
                $0.right.equalTo(period4Image.snp.right).offset(98)
                $0.height.equalTo(37)
                $0.width.equalTo(92)
            }
            period5Text.snp.makeConstraints {
                $0.top.equalTo(period4Text.snp.bottom).offset(23)
                $0.left.equalToSuperview().inset(13)
                $0.right.equalToSuperview().inset(309)
                $0.height.equalTo(37)
                $0.width.equalTo(71)
            }
            period5Image.snp.makeConstraints {
                $0.top.equalTo(period4Image.snp.bottom).offset(11)
                $0.left.equalToSuperview().inset(92)
                $0.right.equalToSuperview().inset(14)
                $0.height.equalTo(49)
                $0.width.equalTo(287)
            }
            subject5Name.snp.makeConstraints {
                $0.top.equalTo(period5Image.snp.top).offset(6)
                $0.left.equalTo(period5Image.snp.left).offset(97)
                $0.right.equalTo(period5Image.snp.right).offset(98)
                $0.height.equalTo(37)
                $0.width.equalTo(92)
            }
            period6Text.snp.makeConstraints {
                $0.top.equalTo(period5Text.snp.bottom).offset(23)
                $0.left.equalToSuperview().inset(13)
                $0.right.equalToSuperview().inset(309)
                $0.height.equalTo(37)
                $0.width.equalTo(71)
            }
            period6Image.snp.makeConstraints {
                $0.top.equalTo(period5Image.snp.bottom).offset(11)
                $0.left.equalToSuperview().inset(92)
                $0.right.equalToSuperview().inset(14)
                $0.height.equalTo(49)
                $0.width.equalTo(287)
            }
            subject6Name.snp.makeConstraints {
                $0.top.equalTo(period6Image.snp.top).offset(6)
                $0.left.equalTo(period6Image.snp.left).offset(97)
                $0.right.equalTo(period6Image.snp.right).offset(98)
                $0.height.equalTo(37)
                $0.width.equalTo(92)
            }
            period7Text.snp.makeConstraints {
                $0.top.equalTo(period6Text.snp.bottom).offset(23)
                $0.left.equalToSuperview().inset(13)
                $0.right.equalToSuperview().inset(309)
                $0.height.equalTo(37)
                $0.width.equalTo(71)
            }
            period7Image.snp.makeConstraints {
                $0.top.equalTo(period6Image.snp.bottom).offset(11)
                $0.left.equalToSuperview().inset(92)
                $0.right.equalToSuperview().inset(14)
                $0.height.equalTo(49)
                $0.width.equalTo(287)
            }
            subject7Name.snp.makeConstraints {
                $0.top.equalTo(period7Image.snp.top).offset(6)
                $0.left.equalTo(period7Image.snp.left).offset(97)
                $0.right.equalTo(period7Image.snp.right).offset(98)
                $0.height.equalTo(37)
                $0.width.equalTo(92)
            }
        }
    }
}
