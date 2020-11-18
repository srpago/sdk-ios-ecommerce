#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AppSettings.h"
#import "Encription.h"
#import "NSData+Encryption.h"
#import "RSA.h"
#import "SPBase.h"
#import "SPCard.h"
#import "SPCryptedParameters.h"
#import "SPDefinitions.h"
#import "SPError.h"
#import "SPResponse.h"
#import "SPService.h"
#import "SPToken.h"
#import "SPTokenService.h"
#import "SPUserAgentModel.h"
#import "SPUserAgentService.h"
#import "SrPago.h"
#import "SrPagoClient.h"
#import "SrPagoDefinitions.h"

FOUNDATION_EXPORT double SrPago_EcommerceVersionNumber;
FOUNDATION_EXPORT const unsigned char SrPago_EcommerceVersionString[];

