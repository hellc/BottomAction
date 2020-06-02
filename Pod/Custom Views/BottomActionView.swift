//
//  ButtonBottomActionView.swift
//
//  Created by Ivan Manov on 01.06.2020.
//  Copyright © 2020 @hellc. All rights reserved.
//

import UIKit

@IBDesignable
open class BottomActionView: UIView, BottomActionProtocol {
    var view: UIView!

    @IBOutlet weak public var actionButton: UIButton!

    @IBInspectable var actionTitle: String = "" {
        didSet {
            self.actionButton.setTitle(self.actionTitle, for: .normal)
        }
    }

    @IBInspectable var actionTitleColor: UIColor = UIColor.black {
        didSet {
            self.actionButton.setTitleColor(self.actionTitleColor, for: .normal)
        }
    }

    public var actionClosure: ((_ sender: UIButton) -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadViewFromNib()
    }

    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        self.loadViewFromNib()
    }

    func loadViewFromNib() {
        let bundle = Bundle(for: self.classForCoder)
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
        self.view = view
        
        self.actionButton.setTitleColor(.lightGray, for: .disabled)
    }

    @IBAction public func onActionButtonTap(_ sender: UIControl?) {
        if sender == self.actionButton {
            self.actionClosure?(self.actionButton)
        }
    }
}
