//
//  SettingsCell.swift
//  TinderFireStoreEB
//
//  Created by Eugene Berezin on 8/7/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import UIKit


class SettingsCell: UITableViewCell {
    
    class SettingsTextField: UITextField {
        
        override func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.insetBy(dx: 24, dy: 0)
        }

        override func editingRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.insetBy(dx: 24, dy: 0)
        }
        override var intrinsicContentSize: CGSize {
            return .init(width: 0, height: 44)
        }
    }
    
    let textField: UITextField = {
        let tf = SettingsTextField()
        tf.isUserInteractionEnabled = true
        tf.placeholder = "Enter name"
        return tf
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(textField)
        textField.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
