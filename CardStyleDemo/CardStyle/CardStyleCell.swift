//
//  SylviaCardStyleTableViewCell.swift
//  CardStyleDemo
//
//  Created by Yiyin Shen on 26/4/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import Foundation
import UIKit

class CardStyleCell: UITableViewCell {
    var leftPadding: CGFloat {
        return 0
    }
    var rightPadding: CGFloat {
        return 0
    }

    var cornerRadius: CGFloat {
        return 6
    }

    var isFirstRow: Bool = true {
        didSet {
            layoutSubviews()
        }
    }

    var isLastRow: Bool = true {
        didSet {
            layoutSubviews()
        }
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        if frame.origin.x != leftPadding {
            frame.origin.x = leftPadding
        }
        if frame.width != frame.width - leftPadding - rightPadding {
            frame.size.width = frame.width - leftPadding - rightPadding
        }
    }

    func configure(viewModel: CardStyleCellViewModelProtocol) {
        isFirstRow = viewModel.isFirstRow
        isLastRow = viewModel.isLastRow
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        clipsToBounds = true
        let maskLayer = CAShapeLayer()
        let maskRect = bounds
        maskLayer.frame = maskRect

        var roundingCorners: UIRectCorner = []
        if isFirstRow && isLastRow {
            roundingCorners = [.topLeft, .topRight, .bottomLeft, .bottomRight]
        } else if isFirstRow {
            roundingCorners = [.topLeft, .topRight]
        } else if isLastRow {
            roundingCorners = [.bottomLeft, .bottomRight]
        }

        let maskPath = UIBezierPath(roundedRect: maskRect, byRoundingCorners: roundingCorners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        maskLayer.path = maskPath.cgPath
        layer.mask = maskLayer
    }
}
