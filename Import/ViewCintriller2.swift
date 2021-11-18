//
//  ViewCintriller2.swift
//  Import
//
//  Created by Pavel Yakimenko on 18/11/2021.
//

import Foundation
import Realm
import Realm.Private

@objcMembers
class TableAlert: RLMObject {
    @objc dynamic var Ids = RLMArray<NSNumber>(objectType: .int, optional: false)
}

class PrimitiveArray: RLMObject {
    @objc dynamic var intObj = RLMArray<NSNumber>(objectType: RLMPropertyType.int, optional: true)
}

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let realm = RLMRealm.default()
        realm.beginWriteTransaction()

        let obj = PrimitiveArray()
        realm.add(obj)

        let obj2 = PrimitiveArrayObjC()
        realm.add(obj2)

        try! realm.commitWriteTransaction()
        
        let a = PrimitiveArray.allObjects()
        let b = PrimitiveArrayObjC.allObjects()
        print(a)
        print(b)
    }
}


