//
//  ASPageControlView.swift
//  ASPageControlAnimation
//
//  Created by Arijit Sarkar on 15/05/18.
//

import Foundation
import UIKit

class ASPageControlView: UIView {
    
    @IBInspectable var inactiveColor: UIColor = .lightGray
    @IBInspectable var activeColor: UIColor = .darkGray
    @IBInspectable var borderColor: UIColor = .black
    @IBInspectable var borderWidth: CGFloat = 0.0
    @IBInspectable var padding: CGFloat = 10.0
    @IBInspectable var totalPages: Int = 2
    @IBInspectable var animationDuration: Double = 0.3
    
    private var indicatorHeight: CGFloat!
    private var indicatorWidth: CGFloat!
    private var indicators: [UIView]!
    private var currentPageIndex = 0
    private var currentPageIndicator: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUp()
    }
    
    private func setUp() {
    
        indicatorWidth = (self.frame.width - (padding * CGFloat(totalPages - 1)))/CGFloat(totalPages)
        indicatorHeight = self.frame.height
        
        var x = CGFloat(0.0)
        indicators = []
        for _ in 0..<totalPages {
            let indicator = UIView()
            self.addSubview(indicator)
            indicator.frame = CGRect(x: x, y: CGFloat(0.0), width: indicatorWidth, height: indicatorHeight)
            indicator.backgroundColor = inactiveColor
            indicator.layer.cornerRadius = min(indicatorWidth, indicatorHeight)/2
            indicator.layer.masksToBounds = true
            indicator.layer.borderWidth = borderWidth
            indicator.layer.borderColor = borderColor.cgColor
            indicators.append(indicator)
            x += indicatorWidth + padding
            print(x)
            print(self.frame)
            print(indicatorWidth)
        }
        
        currentPageIndicator = UIView()
        self.addSubview(currentPageIndicator)
        currentPageIndicator.frame = CGRect(x: CGFloat(currentPageIndex) * (indicatorWidth + padding), y: CGFloat(0.0), width: indicatorWidth, height: indicatorHeight)
        currentPageIndicator.backgroundColor = activeColor
        currentPageIndicator.layer.cornerRadius = min(indicatorWidth, indicatorHeight)/2
        currentPageIndicator.layer.masksToBounds = true

    }
    
    func setCurrentPage(to: Int) {
        animateIndicator(from: currentPageIndex, to: to)
        currentPageIndex = to
    }
    
    private func animateIndicator(from: Int, to: Int) {
        if to >= 0 && to < totalPages {
            from < to ? animateForward(withRepeatCount: to - from) : animateBackward(withRepeatCount: from - to)
        } else {
            print("Invalid Current Page Index")
        }
    }
    
    private func animateForward(withRepeatCount count: Int) {
        if count == 0 { return }
        UIView.animate(withDuration: animationDuration, animations: {
            let nextIndicatorEndPoint = self.padding + self.indicatorWidth
            self.currentPageIndicator.frame.size.width = self.indicatorWidth + nextIndicatorEndPoint
        }) { (isComplete) in
            UIView.animate(withDuration: self.animationDuration, animations: {
                self.currentPageIndicator.frame.origin.x += self.padding + self.indicatorWidth
                self.currentPageIndicator.frame.size.width = self.indicatorWidth
            }, completion: { (_) in
                self.animateForward(withRepeatCount: count - 1)
            })
        }
    }
    
    private func animateBackward(withRepeatCount count: Int) {
        if count == 0 { return }
        UIView.animate(withDuration: animationDuration, animations: {
            self.currentPageIndicator.frame.size.width = self.padding + self.indicatorWidth * 2
            self.currentPageIndicator.frame.origin.x -= self.padding + self.indicatorWidth
        }) { (isComplete) in
            UIView.animate(withDuration: self.animationDuration, animations: {
                self.currentPageIndicator.frame.size.width = self.indicatorWidth
            }, completion: { (_) in
                self.animateBackward(withRepeatCount: count - 1)
            })
        }
    }
}
