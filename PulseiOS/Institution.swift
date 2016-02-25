//
//  Institution.swift
//  PulseiOS
//
//  Created by Michael Ross on 2/10/16.
//  Copyright © 2016 PulseLab. All rights reserved.
//

import RealmSwift
import ApiModel

class Institution: Object, ApiModel {
    // Standard Realm boilerplate
    
    
    
    
    
    dynamic var id = ""
    dynamic var name = ""
    dynamic var students = []
    //dynamic var teachers = []
    //dynamic var classes = []
    //dynamic lazy var createdAt = NSDate()
    
    override class func primaryKey() -> String {
        return "id"
    }
    
    // Define the standard namespace this class usually resides in JSON responses
    // MUST BE singular ie `post` not `posts`
    class func apiNamespace() -> String {
        return "institution"
    }
    
    // Define where and how to get these. Routes are assumed to use Rails style REST (index, show, update, destroy)
    class func apiRoutes() -> ApiRoutes {
        return ApiRoutes(
            index: "/institutions",
            show: "/institution/:id"
        )
    }
    
    // Define how it is converted from JSON responses into Realm objects. A host of transforms are available
    // See section "Transforms" in README. They are super easy to create as well!
    class func fromJSONMapping() -> JSONMapping {
        return [
            "id": ApiIdTransform(),
            "name": StringTransform(),
            
            "students": ArrayTransform<NSMutableString>(),
            //"teachers": ArrayTransform<Institution>(),
            //"classes": ArrayTransform<Institution>(),

        ]
    }
    
    // Define how this object is to be serialized back into a server response format
    func JSONDictionary() -> [String:AnyObject] {
        return [
            "id": id,
            "name": name,
            
            //"students": students,
            //"teachers": teachers,
            //"classes": classes,
        ]
    }
}