//
//  ShakeTableViewCell.swift
//  ShakeCell
//
//  Created by Broccoli on 15/10/25.
//  Copyright © 2015年 Broccoli. All rights reserved.
//

import UIKit

class ShakeTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNum: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            let shake = CABasicAnimation(keyPath: "position.x")
            shake.fromValue = contentView.center.x - 3
            shake.toValue = contentView.center.x + 3

            shake.duration = 0.07
            shake.repeatCount = 2
            shake.autoreverses = true
            self.contentView.layer.addAnimation(shake, forKey: "shakeView")
        }
    }

}
