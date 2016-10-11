//
//  TimelineDataSource.swift
//  RealmTest
//
//  Created by Korhan Bircan on 10/10/16.
//  Copyright © 2016 Korhan Bircan. All rights reserved.
//

import Foundation

struct TimelineDataSource {
//    private let realm = try! Realm()
//    var tweets: Results<Tweet>?

    mutating func reload(ascending: Bool) {
//        tweets = realm.objects(Tweet.self).sorted("createdAt", ascending: ascending)
    }

    mutating func filter(keyword: String) {
        guard !keyword.isEmpty else {
            return
        }
        let predicate = NSPredicate(format: "text contains[c] %@", keyword)
//        tweets = realm.objects(Tweet.self).filter(predicate)
    }

    func numberOfSections() -> Int {
        return 1
    }

    func numberOfRows(section: Int) -> Int {
        let tweets = TimelineResponseMapper.tweets
        return tweets.count
    }

    func tweetAtIndexPath(indexPath: NSIndexPath) -> Tweet? {
        let index = indexPath.row
        let tweets = TimelineResponseMapper.tweets
        return tweets[index]
    }
}
