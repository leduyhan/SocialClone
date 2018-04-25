//
//  HashTagApi.swift
//  InstagramClone
//
//  Created by The Le Duy Han on 3/21/17.
//  Copyright © 2017 The Le Duy Han. All rights reserved.
//

import Foundation
import FirebaseDatabase
class HashTagApi {
    var REF_HASHTAG = Database.database().reference().child("hashTag")
    
    func fetchPosts(withTag tag: String, completion: @escaping (String) -> Void) {
        REF_HASHTAG.child(tag.lowercased()).observe(.childAdded, with: {
            snapshot in
            completion(snapshot.key)
        })
    }
}
