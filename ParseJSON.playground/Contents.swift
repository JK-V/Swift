//: Playground - noun: a place where people can play

import UIKit

let blogsURL: NSURL = [#FileReference(fileReferenceLiteral: "blogs.json")#]
let data = NSData(contentsOfURL: blogsURL)!

var names = [String]()

do {
    let json = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)
    
    if let blogs = json["blogs"] as? [[String: AnyObject]] {
        for blog in blogs {
            if let name = blog["name"] as? String {
                names.append(name)
            }
        }
    }
} catch {
    print("error serializing JSON: \(error)")
}

print(names)