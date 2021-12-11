//
//  Rowlayout.swift
//  VKNewsFeed
//
//  Created by Геворг on 11.12.2021.
//

import Foundation
import UIKit

protocol RowLayoutDelegate: AnyObject {
    
    func collectionView(_ collectionView: UICollectionView, photoAtIndexPath indexPath: IndexPath) -> CGSize
}

class RowLayout: UICollectionViewLayout {
    weak var delegate: RowLayoutDelegate!
    
    fileprivate var numbersOfRows = 1
    fileprivate var cellPadding: CGFloat = 8
    
    fileprivate var cache = [UICollectionViewLayoutAttributes]()
    fileprivate var contentWidth: CGFloat = 0
    
    // константа
    fileprivate var contentHeight: CGFloat {
        guard let collectionView = collectionView else { return 0 }

        let insets =  collectionView.contentInset
        return collectionView.bounds.height - (insets.left + insets.right)
    }
    
    override var collectionViewContentSize: CGSize {
        return CGSize(width: contentWidth, height: contentHeight)
    }
    
    override func prepare() {
        guard cache.isEmpty == true, let collectionView = collectionView else { return }
        
        var photos = [CGSize]()
        for item in 0 ..< collectionView.numberOfItems(inSection: 0) {
            let indexPath = IndexPath(item: item, section: 0)
            let photoSize = delegate.collectionView(collectionView, photoAtIndexPath: indexPath)
            photos.append(photoSize)
        }
        let superviewWidth = collectionView.frame.width
        guard var rowHeight = self.rowHeightCounter(superviewWidth: superviewWidth, photosArray: photos) else { return }
    }
    private func rowHeightCounter(superviewWidth: CGFloat, photosArray: [CGSize]) -> CGFloat? {
        var rowHeight: CGFloat
        
        let photoWithMinRatio = photosArray.min { (first, second) -> Bool in
            (first.height / first.width) < (second.height / second.width)
        }
        
        guard let myPhotoWithMinRatio = photoWithMinRatio else { return nil }
        
        let difference = superviewWidth / myPhotoWithMinRatio.width
        
        rowHeight = myPhotoWithMinRatio.height * difference
        return rowHeight
    }
}
