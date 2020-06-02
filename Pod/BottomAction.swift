//
//  BottomAction.swift
//
//  Created by Ivan Manov on 01.06.2020.
//  Copyright © 2020 @hellc. All rights reserved.
//

import UIKit

public protocol BottomActionProtocol {
    var actionClosure: ((_ sender: UIButton) -> Void)? { get set }
    var actionButton: UIButton! { get set }

    func onActionButtonTap(_ sender: UIControl?)
}
