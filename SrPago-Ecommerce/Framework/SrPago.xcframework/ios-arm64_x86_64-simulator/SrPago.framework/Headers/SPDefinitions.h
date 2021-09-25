//
//  SPDefinitions.h
//  SrPago
//


#ifndef SrPago_SPDefinitions_h
#define SrPago_SPDefinitions_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SPResponse.h"




#define RSA_PUBLIC_KEY @"-----BEGIN PUBLIC KEY-----\
MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAv0utLFjwHQk+1aLjxl9t\
Ojvt/qFD1HfMFzjYa4d3iFKrQtvxaWM/B/6ltPn6+Pez+dOd59zFmzNHg33h8S0p\
aZ6wmNv3mwp4hCJttGzFvl2hhw8Z+OU9KwGSXgQ+5FNyRyDLp0qt75ayvV0vV8oX\
0Pgubd/NTHzRKk0ubXO8WVWkNhMdsv0HGrhIMDXAWLAQBzDewmICVH9MIJzjoZym\
R7AuNpefD4hoVK8cBMjZ0xRKSPyd3zI6uJyERcR3+N9nxvg4guShP27cnD9qpLt4\
L6YtU0BU+husFXoHL6Y2CsxyzxT9mtorAGe5oRiTC7Z/S9u7pxGN4iozgmAei0MZ\
VbKows/qa9/q0PPzbF/PHSZKou1DJvsJ2PKY3ZPYAT7/u4x8NRiJ/6cssuzsIPUd\
Q9HBzA1ZBMHkpOmkipu1G7ks/GwTfQJkHPW5xHu1EOYvgv/PHr3BJnCMNYKFvf5c\
4Qd0COnnU3jDel1OKl7lUzr+ioqUedX393D/fszdK4hjvtUjo6ThTRNm3y4avY/r\
m+oLu8sZWpyBm4PfN2xGOnFco9SiyCT03XOEuOXokid6BDMi0aue9LKJaQR+KGVc\
/H2p2d2Yu4GdgXS1vq1syaf7V0QPOmamTOyJRZ45UoLfBRB8nYBGDo0mPR7GIon6\
M8SmGGsTo3V0L+Ni9bNJHa8CAwEAAQ==\
-----END PUBLIC KEY-----"


#define SP_API_VERSION @"v1"


#define SP_URL_CREATE_TOKEN @"v1/token"



typedef void (^SPWebServiceResponse)(NSDictionary *json, NSError *error, NSInteger statusCode);

typedef void (^SPWebServiceResult)(SPResponse *response, int spError, NSError *error, NSInteger statusCode);

#endif
