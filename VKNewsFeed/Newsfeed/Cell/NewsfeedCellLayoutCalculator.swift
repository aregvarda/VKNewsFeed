//
//  NewsfeedCellLayoutCalculator.swift
//  VKNewsFeed
//
//  Created by Геворг on 08.12.2021.
//

import Foundation
import UIKit

struct Sizes: FeedCellSizes {
    
    var postLabelFrame: CGRect
    var attachmentFrame: CGRect
}

protocol FeedCellLayoutCalculatorProtocol {
    func sizes(postText: String?, photoAttachment: FeedCellPhotoAttachmentViewModel?) -> FeedCellSizes
}

final class FeedCellLayoutCalculator: FeedCellLayoutCalculatorProtocol {
    
    private let screenWidth: CGFloat
    
    init(screenWidth: CGFloat = min(UIScreen.main.bounds.width, UIScreen.main.bounds.height)) {
        self.screenWidth = screenWidth
    }
    
    
    func sizes(postText: String?, photoAttachment: FeedCellPhotoAttachmentViewModel?) -> FeedCellSizes {
        return Sizes(postLabelFrame: CGRect.zero, attachmentFrame: CGRect.zero)
    }
}
