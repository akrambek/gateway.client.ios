/**
 * Copyright (c) 2007-2014 Kaazing Corporation. All rights reserved.
 * 
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

#import "KGCreateChannel.h"

@implementation KGCreateChannel {
    NSString             *_cookie;
    NSMutableDictionary  *_controlFrames;
    SecIdentityRef       _clientIdentity;
}

- (void) init0 {
    _controlFrames = [[NSMutableDictionary alloc] initWithCapacity:1];
}

- (id)init {
    self = [super init];
    if (self) {
        [self init0];
    }
    return self;
}

- (void)dealloc
{
    if (_controlFrames != nil) {
        [_controlFrames removeAllObjects];
    }
    
    _controlFrames = nil;
    _clientIdentity = nil;
    _cookie = nil;
}

-(NSString*) cookie {
    return _cookie;
}

-(void)setCookie:(NSString*)cookie {
    _cookie = cookie;
}

-(void)setControlFrames:(NSMutableDictionary*) frames {
    _controlFrames = frames;
}

-(NSMutableDictionary*)controlFrames {
    return _controlFrames;
}

- (void) setClientIdentity:(SecIdentityRef)clientIdentity {
    _clientIdentity = clientIdentity;
}

- (SecIdentityRef) clientIdentity {
    return _clientIdentity;
}

@end
