//
//  Happymanager.m
//  PizzaRestaurant
//
//  Created by Arsalan Vakili on 2015-06-12.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Happymanager.h"


@implementation Happymanager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Pizzasize)size andToppings:(NSArray *)toppings{
    
    return TRUE;
    
    
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    
    NSLog(@"hey, I will be  happy to upgrade  your pizza");
    

    return  TRUE;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"The good manager is making the Pizza");
    // send out to delivery
   // [self.delegate ]
}

@end
