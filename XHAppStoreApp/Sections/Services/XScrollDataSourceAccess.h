//
//  XScrollDataSourceAccess.h
//  XScrollExample
//
//  Created by Agus Soedibjo on 07/10/2014.
//  Copyright (c) 2014 Agus Soedibjo. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <Foundation/Foundation.h>
#import "XScrollDataSourceMapping.h"

// Simple JSON Data Parsing

@interface XScrollDataSourceAccess : NSObject

+ (NSArray *)retrieveObjectsFromPath:(NSString *)resourceName ofType:(NSString *)resourceType atRootKeyPath:(NSString *)keyPath forDataSourceMapping:(XScrollDataSourceMapping *)dataSourceMapping;

@end


/*
 {
 "category": "Assorted",
 "xScrollItems": [
 "jellybeans_capsule",
 "jellybeans_choco",
 "starfruits",
 "gums_ball",
 "strawberries",
 "gums",
 "apple",
 "pears",
 "gums_peppermint",
 "mango",
 "oranges",
 "gums_ball",
 "apricots",
 "jellybeans_pack"
 ]
 },
 {
 "category": "Assorted",
 "xScrollItems": [
 "jellybeans_capsule",
 "jellybeans_choco",
 "starfruits",
 "gums_ball",
 "strawberries",
 "gums",
 "apple",
 "pears",
 "gums_peppermint",
 "mango",
 "oranges",
 "gums_ball",
 "apricots",
 "jellybeans_pack"
 ]
 },
 {
 "category": "Jack",
 "xScrollItems": [
 "jellybeans_capsule",
 "jellybeans_choco",
 "starfruits",
 "gums_ball",
 "strawberries",
 "gums",
 "apple",
 "pears",
 "gums_peppermint",
 "mango",
 "oranges",
 "gums_ball",
 "apricots",
 "jellybeans_pack",
 "jellybeans_capsule",
 "jellybeans_choco",
 "starfruits",
 "gums_ball",
 "strawberries",
 "gums",
 "apple",
 "pears",
 "gums_peppermint",
 "mango",
 "oranges",
 "gums_ball",
 "apricots",
 "jellybeans_pack",
 "jellybeans_capsule",
 "jellybeans_choco",
 "starfruits",
 "gums_ball",
 "strawberries",
 "gums",
 "apple",
 "pears",
 "gums_peppermint",
 "mango",
 "oranges",
 "gums_ball",
 "apricots",
 "jellybeans_pack",
 "jellybeans_capsule",
 "jellybeans_choco",
 "starfruits",
 "gums_ball",
 "strawberries",
 "gums",
 "apple",
 "pears",
 "gums_peppermint",
 "mango",
 "oranges",
 "gums_ball",
 "apricots",
 "jellybeans_pack"
 ]
 }
 */