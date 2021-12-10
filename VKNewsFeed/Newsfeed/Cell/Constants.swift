//
//  Constants.swift
//  VKNewsFeed
//
//  Created by Геворг on 09.12.2021.
//

import Foundation
import UIKit

struct Constants {
    static let cardInsets = UIEdgeInsets(top: 0, left: 8, bottom: 12, right: 8)
    static let postLabelInsets = UIEdgeInsets(top: 12 + Constants.topViewHeight + 12, left: 8, bottom: 12, right: 8)
    static let postLabelFont = UIFont.systemFont(ofSize: 15)
    static let topViewHeight: CGFloat = 36
    static let bottomViewHeight: CGFloat = 44
    static let bottomViewViewHeight: CGFloat = 44
    static let bottomViewViewWidth: CGFloat = 80
    static let bottomViewViewsIconSize: CGFloat = 24
    
    static let minifiedPostLimitLines: CGFloat = 8
    static let minifiedPostLines: CGFloat = 6
    
    static let moreTextButtonInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)
    static let moreTextButtonSize = CGSize(width: 170, height: 30)
}
