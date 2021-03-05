//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Uji Saori on 2021-03-03.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"

@interface DeliveryService()

// should use 'retain' at this time
@property (nonatomic, retain) NSMutableArray *deliveredPizzas;

@end

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveredPizzas = [NSMutableArray array];
    }
    return self;
}

- (void)deliverPizza:(Pizza *)pizza
{
    [_deliveredPizzas addObject:pizza];
    DeliveryCar *deliCar = [[DeliveryCar alloc] init];
    [deliCar deliverPizza:pizza];
}

- (NSArray *)getDeliveredPizzas
{
    return _deliveredPizzas;
}

@end
