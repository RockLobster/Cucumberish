//
//  Cunsumer.swift
//
//  Created by Rainer Schlönvoigt on 13/03/2020.
//

import Foundation
import Cucumberish


/// This class is only meant to check whether or not it's
/// possible to import Cucumberish via Swift Package Manager
@objc class CucumberishInitializer: NSObject {

    @objc func initialize() {
        CucumberishInitializer.registerSteps()

        Cucumberish.executeFeatures(inDirectory: "Features",
                                    from: Bundle(for: type(of: self)),
                                    includeTags: [],
                                    excludeTags: [])
    }

    class func registerSteps() {
        before { (_) in }
        Given("Definition String for a Given") { (args, userInfo) in }
        When("Definition String for a When") { (args, userInfo) in }
        Then("Definition String for a Then") { (args, userInfo) in }
        But("Definition String for a But") { (args, userInfo) in }
        after { (_) in }
    }
}
