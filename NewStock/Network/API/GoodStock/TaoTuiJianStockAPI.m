//
//  TaoTuiJianStockAPI.m
//  NewStock
//
//  Created by 王迪 on 2017/3/10.
//  Copyright © 2017年 Willey. All rights reserved.
//

#import "TaoTuiJianStockAPI.h"
#import "Defination.h"

@implementation TaoTuiJianStockAPI


- (NSString *)requestUrl {
    return API_TAO_GPTJ_STOCK_LIST;
}

- (APIRequestMethod)requestMethod {
    return APIRequestMethodPost;
}

- (APIRequestSerializerType)requestSerializerType {
    return APIRequestSerializerTypeJSON;
}

- (id)requestArgument {
    return @{
             @"d":self.d,
             @"code":self.code,
             @"count":@1000,
             };
}

- (id)jsonValidator {
    return nil;
}

- (NSDictionary *)requestHeaderFieldValueDictionary {
    return @{@"Content-Type": @"application/json;charset=UTF-8"};
}

@end
