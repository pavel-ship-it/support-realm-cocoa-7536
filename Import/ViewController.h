//
//  ViewController.h
//  Import
//
//  Created by Pavel Yakimenko on 18/11/2021.
//

#import <UIKit/UIKit.h>
@import Realm;

@interface PrimitiveArrayObjC: RLMObject
@property RLMArray<RLMInt> *intObj;
@end
@implementation PrimitiveArrayObjC
@end


@interface ViewController : UIViewController


@end

