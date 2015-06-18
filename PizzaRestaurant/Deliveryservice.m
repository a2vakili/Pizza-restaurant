//
//  Deliveryservice.m
//  PizzaRestaurant
//
//  Created by Arsalan Vakili on 2015-06-13.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Deliveryservice.h"


@implementation Deliveryservice

-(void *)deliverPizza:(Pizza *)pizza{
    Happymanager *callHapppymanager= [[Happymanager alloc] init];
     [callHapppymanager kitchenDidMakePizza:pizza];

    }
    
    
    
}
@end
