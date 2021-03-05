//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Uji Saori on 2021-03-03.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject

- (void)deliverPizza:(Pizza *)pizza;
- (NSArray *)getDeliveredPizzas;

@end

NS_ASSUME_NONNULL_END
