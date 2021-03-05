//
//  PizzaManager2.m
//  PizzaRestaurant
//
//  Created by Uji Saori on 2021-03-03.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "PizzaManager2.h"


@interface PizzaManager2()

// should be 'retain'
@property (nonatomic, retain) DeliveryService *deliService;

@end

@implementation PizzaManager2

- (instancetype)init
{
    self =[super init];
    if (self) {
        _deliService = [[DeliveryService alloc] init];
    }
    return self;
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(enum PizzaSizeChar)size andToppings:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)ketchen {
    return YES;
}

- (void) kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"Pizza Manager #2 - Pizza has been made...will get delivered shortly");
    [_deliService deliverPizza:pizza];
}

@end
