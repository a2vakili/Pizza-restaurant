//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Arsalan Vakili on 2015-06-13.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deliveryservice.h"
@class Pizza;

@interface DeliveryCar : NSObject<deliverydelegate>

 -(void)deliverPizza:(Pizza *)pizza;
@end
