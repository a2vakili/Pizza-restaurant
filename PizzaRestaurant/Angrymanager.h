//
//  Angrymanager.h
//  PizzaRestaurant
//
//  Created by Arsalan Vakili on 2015-06-12.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Deliveryservice.h"
@interface Angrymanager : NSObject<kitchenDelegate>

@property (nonatomic,assign) id <deliverydelegate>delegate;

@end
