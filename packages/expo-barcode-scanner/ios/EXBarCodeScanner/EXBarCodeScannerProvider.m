// Copyright 2016-present 650 Industries. All rights reserved.

#import <EXBarCodeScanner/EXBarCodeScannerProvider.h>
#import <EXBarCodeScanner/EXBarCodeScanner.h>

@implementation EXBarCodeScannerProvider

UM_REGISTER_MODULE();

+ (const NSArray<Protocol *> *)exportedInterfaces
{
  return @[@protocol(EXBarCodeScannerProviderInterface)];
}

- (id<EXBarCodeScannerInterface>)createBarCodeScanner
{
  return [EXBarCodeScanner new];
}

@end
