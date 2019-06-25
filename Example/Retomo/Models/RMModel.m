//
//  RMModel.m
//  Retomo_Example
//
//  Created by Bona Deny Suryana on 19/06/19.
//  Copyright © 2019 bonadenys@gmail.com. All rights reserved.
//

#import "RMModel.h"

@implementation RMModel

    -(instancetype) init:(NSDictionary *)dictionaries{
        self = [super init];
        if (!self) return nil;
        
        _title = dictionaries[@"title"];
        NSDictionary *rows = dictionaries[@"rows"];
        NSMutableArray *objects = [NSMutableArray array];
        for (NSDictionary *row in rows) {
            RMRow *object = [[RMRow alloc] init:row];
            [objects addObject:object];
        }
        _rows  = objects;
    
        return self;
    }

@end

@implementation RMRow
    -(instancetype) init:(NSDictionary *)dictionaries{
        self = [super init];
        if (!self) return nil;
        
        _title = dictionaries[@"title"];
        _theDescription  = dictionaries[@"description"];
        _imageHref  = dictionaries[@"imageHref"];
        return self;
    }
@end
