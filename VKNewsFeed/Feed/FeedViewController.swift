//
//  FeedViewController.swift
//  VKNewsFeed
//
//  Created by Геворг on 03.12.2021.
//

import UIKit

class FeedViewController: UIViewController {
    
    private var fetcher: DataFetcher = NetworkDataFetcher(networking: NetworkService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        fetcher.getFeed { (feedResponse) in
            guard let feedResponse = feedResponse else { return }
            feedResponse.items.map { (feedItem) in
                print(feedItem.date)
            }
        }
    }
}
