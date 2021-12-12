//
//  NewsfeedInteractor.swift
//  VKNewsFeed
//
//  Created by Геворг on 04.12.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol NewsfeedBusinessLogic {
    func makeRequest(request: Newsfeed.Model.Request.RequestType)
}

class NewsfeedInteractor: NewsfeedBusinessLogic {
    
    var presenter: NewsfeedPresentationLogic?
    var service: NewsfeedService?
    
    func makeRequest(request: Newsfeed.Model.Request.RequestType) {
        if service == nil {
            service = NewsfeedService()
            
            switch request {
            case .getNewsfeed:
                service?.getFeed(completion: { [weak self] (revealedPostIds, feed) in
                    self?.presenter?.presentData(response: Newsfeed.Model.Response.ResponseType.presentNewsfeed(feed: feed, revealdedPostIds: revealedPostIds))
                })
            case .getUser:
                service?.getUser(completion: { [weak self] (user) in
                    self?.presenter?.presentData(response: Newsfeed.Model.Response.ResponseType.presentUserInfo(user: user))
                })
            case .revealPostIds(let postId):
                service?.revealPostIds(forPostId: postId, completion: { [weak self] (revealedPostIds, feed) in
                    self?.presenter?.presentData(response: Newsfeed.Model.Response.ResponseType.presentNewsfeed(feed: feed, revealdedPostIds: revealedPostIds))
                })
            case .getNextBatch:
                print("123")
                service?.getNextBatch(completion: { (revealedPostIds, feed) in
                    self.presenter?.presentData(response: Newsfeed.Model.Response.ResponseType.presentNewsfeed(feed: feed, revealdedPostIds: revealedPostIds))
                })
            }
        }
    }
}
