//
//  ViewController.m
//  Import
//
//  Created by Pavel Yakimenko on 18/11/2021.
//

#import "ViewController.h"
#import "Import-Swift.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    PrimitiveArray *obj = [PrimitiveArray new];
    [realm addObject:obj];
    
    PrimitiveArrayObjC *obj2 = [PrimitiveArrayObjC new];
    [realm addObject:obj2];
    [realm commitWriteTransaction];

    NSLog(@"%@", PrimitiveArray.allObjects);
    NSLog(@"%@", PrimitiveArrayObjC.allObjects);
}


@end
