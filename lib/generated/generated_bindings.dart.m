#include <stdint.h>

#import <UIKit/UIApplication.h>
typedef void  (^ListenerBlock)(NSDictionary* , struct _NSRange , BOOL * );
ListenerBlock wrapListenerBlock_ObjCBlock_ffiVoid_NSDictionary_NSRange_bool(ListenerBlock block) {
  ListenerBlock wrapper = [^void(NSDictionary* arg0, struct _NSRange arg1, BOOL * arg2) {
    block([arg0 retain], arg1, arg2);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock1)(id , struct _NSRange , BOOL * );
ListenerBlock1 wrapListenerBlock_ObjCBlock_ffiVoid_objcObjCObject_NSRange_bool(ListenerBlock1 block) {
  ListenerBlock1 wrapper = [^void(id arg0, struct _NSRange arg1, BOOL * arg2) {
    block([arg0 retain], arg1, arg2);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock2)(NSDate* , BOOL , BOOL * );
ListenerBlock2 wrapListenerBlock_ObjCBlock_ffiVoid_NSDate_bool_bool(ListenerBlock2 block) {
  ListenerBlock2 wrapper = [^void(NSDate* arg0, BOOL arg1, BOOL * arg2) {
    block([arg0 retain], arg1, arg2);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock3)(NSTimer* );
ListenerBlock3 wrapListenerBlock_ObjCBlock_ffiVoid_NSTimer(ListenerBlock3 block) {
  ListenerBlock3 wrapper = [^void(NSTimer* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock4)(NSFileHandle* );
ListenerBlock4 wrapListenerBlock_ObjCBlock_ffiVoid_NSFileHandle(ListenerBlock4 block) {
  ListenerBlock4 wrapper = [^void(NSFileHandle* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock5)(NSError* );
ListenerBlock5 wrapListenerBlock_ObjCBlock_ffiVoid_NSError(ListenerBlock5 block) {
  ListenerBlock5 wrapper = [^void(NSError* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock6)(NSDictionary* , NSError* );
ListenerBlock6 wrapListenerBlock_ObjCBlock_ffiVoid_NSDictionary_NSError(ListenerBlock6 block) {
  ListenerBlock6 wrapper = [^void(NSDictionary* arg0, NSError* arg1) {
    block([arg0 retain], [arg1 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock7)(NSArray* );
ListenerBlock7 wrapListenerBlock_ObjCBlock_ffiVoid_NSArray(ListenerBlock7 block) {
  ListenerBlock7 wrapper = [^void(NSArray* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock8)(NSTextCheckingResult* , NSMatchingFlags , BOOL * );
ListenerBlock8 wrapListenerBlock_ObjCBlock_ffiVoid_NSTextCheckingResult_NSMatchingFlags_bool(ListenerBlock8 block) {
  ListenerBlock8 wrapper = [^void(NSTextCheckingResult* arg0, NSMatchingFlags arg1, BOOL * arg2) {
    block([arg0 retain], arg1, arg2);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock9)(NSCachedURLResponse* );
ListenerBlock9 wrapListenerBlock_ObjCBlock_ffiVoid_NSCachedURLResponse(ListenerBlock9 block) {
  ListenerBlock9 wrapper = [^void(NSCachedURLResponse* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock10)(NSURLResponse* , NSData* , NSError* );
ListenerBlock10 wrapListenerBlock_ObjCBlock_ffiVoid_NSURLResponse_NSData_NSError(ListenerBlock10 block) {
  ListenerBlock10 wrapper = [^void(NSURLResponse* arg0, NSData* arg1, NSError* arg2) {
    block([arg0 retain], [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock11)(NSDictionary* );
ListenerBlock11 wrapListenerBlock_ObjCBlock_ffiVoid_NSDictionary(ListenerBlock11 block) {
  ListenerBlock11 wrapper = [^void(NSDictionary* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock12)(NSURLCredential* );
ListenerBlock12 wrapListenerBlock_ObjCBlock_ffiVoid_NSURLCredential(ListenerBlock12 block) {
  ListenerBlock12 wrapper = [^void(NSURLCredential* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock13)(NSArray* , NSArray* , NSArray* );
ListenerBlock13 wrapListenerBlock_ObjCBlock_ffiVoid_NSArray_NSArray_NSArray(ListenerBlock13 block) {
  ListenerBlock13 wrapper = [^void(NSArray* arg0, NSArray* arg1, NSArray* arg2) {
    block([arg0 retain], [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock14)(NSArray* );
ListenerBlock14 wrapListenerBlock_ObjCBlock_ffiVoid_NSArray1(ListenerBlock14 block) {
  ListenerBlock14 wrapper = [^void(NSArray* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock15)(NSData* );
ListenerBlock15 wrapListenerBlock_ObjCBlock_ffiVoid_NSData(ListenerBlock15 block) {
  ListenerBlock15 wrapper = [^void(NSData* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock16)(NSData* , BOOL , NSError* );
ListenerBlock16 wrapListenerBlock_ObjCBlock_ffiVoid_NSData_bool_NSError(ListenerBlock16 block) {
  ListenerBlock16 wrapper = [^void(NSData* arg0, BOOL arg1, NSError* arg2) {
    block([arg0 retain], arg1, [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock17)(NSURLSessionWebSocketMessage* , NSError* );
ListenerBlock17 wrapListenerBlock_ObjCBlock_ffiVoid_NSURLSessionWebSocketMessage_NSError(ListenerBlock17 block) {
  ListenerBlock17 wrapper = [^void(NSURLSessionWebSocketMessage* arg0, NSError* arg1) {
    block([arg0 retain], [arg1 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock18)(NSData* , NSURLResponse* , NSError* );
ListenerBlock18 wrapListenerBlock_ObjCBlock_ffiVoid_NSData_NSURLResponse_NSError(ListenerBlock18 block) {
  ListenerBlock18 wrapper = [^void(NSData* arg0, NSURLResponse* arg1, NSError* arg2) {
    block([arg0 retain], [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock19)(NSURL* , NSURLResponse* , NSError* );
ListenerBlock19 wrapListenerBlock_ObjCBlock_ffiVoid_NSURL_NSURLResponse_NSError(ListenerBlock19 block) {
  ListenerBlock19 wrapper = [^void(NSURL* arg0, NSURLResponse* arg1, NSError* arg2) {
    block([arg0 retain], [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock20)(NSTask* );
ListenerBlock20 wrapListenerBlock_ObjCBlock_ffiVoid_NSTask(ListenerBlock20 block) {
  ListenerBlock20 wrapper = [^void(NSTask* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock21)(NSError* );
ListenerBlock21 wrapListenerBlock_ObjCBlock_ffiVoid_NSError1(ListenerBlock21 block) {
  ListenerBlock21 wrapper = [^void(NSError* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock22)(NSInputStream* , NSOutputStream* , NSError* );
ListenerBlock22 wrapListenerBlock_ObjCBlock_ffiVoid_NSInputStream_NSOutputStream_NSError(ListenerBlock22 block) {
  ListenerBlock22 wrapper = [^void(NSInputStream* arg0, NSOutputStream* arg1, NSError* arg2) {
    block([arg0 retain], [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock23)(void * , UIApplication* );
ListenerBlock23 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication(ListenerBlock23 block) {
  ListenerBlock23 wrapper = [^void(void * arg0, UIApplication* arg1) {
    block(arg0, [arg1 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock24)(void * , UIApplication* , id , double );
ListenerBlock24 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_objcObjCObject_ffiDouble(ListenerBlock24 block) {
  ListenerBlock24 wrapper = [^void(void * arg0, UIApplication* arg1, id arg2, double arg3) {
    block(arg0, [arg1 retain], [arg2 retain], arg3);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock25)(void * , UIApplication* , id );
ListenerBlock25 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_objcObjCObject(ListenerBlock25 block) {
  ListenerBlock25 wrapper = [^void(void * arg0, UIApplication* arg1, id arg2) {
    block(arg0, [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock26)(void * , UIApplication* , struct CGRect );
ListenerBlock26 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_CGRect(ListenerBlock26 block) {
  ListenerBlock26 wrapper = [^void(void * arg0, UIApplication* arg1, struct CGRect arg2) {
    block(arg0, [arg1 retain], arg2);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock27)(void * , UIApplication* , UIUserNotificationSettings* );
ListenerBlock27 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_UIUserNotificationSettings(ListenerBlock27 block) {
  ListenerBlock27 wrapper = [^void(void * arg0, UIApplication* arg1, UIUserNotificationSettings* arg2) {
    block(arg0, [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock28)(void * , UIApplication* , NSData* );
ListenerBlock28 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSData(ListenerBlock28 block) {
  ListenerBlock28 wrapper = [^void(void * arg0, UIApplication* arg1, NSData* arg2) {
    block(arg0, [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock29)(void * , UIApplication* , NSError* );
ListenerBlock29 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSError(ListenerBlock29 block) {
  ListenerBlock29 wrapper = [^void(void * arg0, UIApplication* arg1, NSError* arg2) {
    block(arg0, [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock30)(void * , UIApplication* , NSDictionary* );
ListenerBlock30 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSDictionary(ListenerBlock30 block) {
  ListenerBlock30 wrapper = [^void(void * arg0, UIApplication* arg1, NSDictionary* arg2) {
    block(arg0, [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock31)(void * , UIApplication* , UILocalNotification* );
ListenerBlock31 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_UILocalNotification(ListenerBlock31 block) {
  ListenerBlock31 wrapper = [^void(void * arg0, UIApplication* arg1, UILocalNotification* arg2) {
    block(arg0, [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock32)(void * , UIApplication* , NSString* , UILocalNotification* , void  (^)());
ListenerBlock32 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSString_UILocalNotification_ffiVoid(ListenerBlock32 block) {
  ListenerBlock32 wrapper = [^void(void * arg0, UIApplication* arg1, NSString* arg2, UILocalNotification* arg3, void  (^arg4)()) {
    block(arg0, [arg1 retain], [arg2 retain], [arg3 retain], [arg4 copy]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock33)(void * , UIApplication* , NSString* , NSDictionary* , NSDictionary* , void  (^)());
ListenerBlock33 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSString_NSDictionary_NSDictionary_ffiVoid(ListenerBlock33 block) {
  ListenerBlock33 wrapper = [^void(void * arg0, UIApplication* arg1, NSString* arg2, NSDictionary* arg3, NSDictionary* arg4, void  (^arg5)()) {
    block(arg0, [arg1 retain], [arg2 retain], [arg3 retain], [arg4 retain], [arg5 copy]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock34)(void * , UIApplication* , NSString* , NSDictionary* , void  (^)());
ListenerBlock34 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSString_NSDictionary_ffiVoid(ListenerBlock34 block) {
  ListenerBlock34 wrapper = [^void(void * arg0, UIApplication* arg1, NSString* arg2, NSDictionary* arg3, void  (^arg4)()) {
    block(arg0, [arg1 retain], [arg2 retain], [arg3 retain], [arg4 copy]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock35)(void * , UIApplication* , NSString* , UILocalNotification* , NSDictionary* , void  (^)());
ListenerBlock35 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSString_UILocalNotification_NSDictionary_ffiVoid(ListenerBlock35 block) {
  ListenerBlock35 wrapper = [^void(void * arg0, UIApplication* arg1, NSString* arg2, UILocalNotification* arg3, NSDictionary* arg4, void  (^arg5)()) {
    block(arg0, [arg1 retain], [arg2 retain], [arg3 retain], [arg4 retain], [arg5 copy]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock36)(void * , UIApplication* , NSDictionary* , void  (^)(UIBackgroundFetchResult ));
ListenerBlock36 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSDictionary_ffiVoidUIBackgroundFetchResult(ListenerBlock36 block) {
  ListenerBlock36 wrapper = [^void(void * arg0, UIApplication* arg1, NSDictionary* arg2, void  (^arg3)(UIBackgroundFetchResult )) {
    block(arg0, [arg1 retain], [arg2 retain], [arg3 copy]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock37)(void * , UIApplication* , void  (^)(UIBackgroundFetchResult ));
ListenerBlock37 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_ffiVoidUIBackgroundFetchResult(ListenerBlock37 block) {
  ListenerBlock37 wrapper = [^void(void * arg0, UIApplication* arg1, void  (^arg2)(UIBackgroundFetchResult )) {
    block(arg0, [arg1 retain], [arg2 copy]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock38)(void * , UIApplication* , UIApplicationShortcutItem* , void  (^)(BOOL ));
ListenerBlock38 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_UIApplicationShortcutItem_ffiVoidbool(ListenerBlock38 block) {
  ListenerBlock38 wrapper = [^void(void * arg0, UIApplication* arg1, UIApplicationShortcutItem* arg2, void  (^arg3)(BOOL )) {
    block(arg0, [arg1 retain], [arg2 retain], [arg3 copy]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock39)(void * , UIApplication* , NSString* , void  (^)());
ListenerBlock39 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSString_ffiVoid(ListenerBlock39 block) {
  ListenerBlock39 wrapper = [^void(void * arg0, UIApplication* arg1, NSString* arg2, void  (^arg3)()) {
    block(arg0, [arg1 retain], [arg2 retain], [arg3 copy]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock40)(void * , UIApplication* , NSDictionary* , void  (^)(NSDictionary* ));
ListenerBlock40 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSDictionary_ffiVoidNSDictionary(ListenerBlock40 block) {
  ListenerBlock40 wrapper = [^void(void * arg0, UIApplication* arg1, NSDictionary* arg2, void  (^arg3)(NSDictionary* )) {
    block(arg0, [arg1 retain], [arg2 retain], [arg3 copy]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock41)(INIntentResponse* );
ListenerBlock41 wrapListenerBlock_ObjCBlock_ffiVoid_INIntentResponse(ListenerBlock41 block) {
  ListenerBlock41 wrapper = [^void(INIntentResponse* arg0) {
    block([arg0 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock42)(void * , UIApplication* , INIntent* , void  (^)(INIntentResponse* ));
ListenerBlock42 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_INIntent_ffiVoidINIntentResponse(ListenerBlock42 block) {
  ListenerBlock42 wrapper = [^void(void * arg0, UIApplication* arg1, INIntent* arg2, void  (^arg3)(INIntentResponse* )) {
    block(arg0, [arg1 retain], [arg2 retain], [arg3 copy]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock43)(void * , UIApplication* , NSCoder* );
ListenerBlock43 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSCoder(ListenerBlock43 block) {
  ListenerBlock43 wrapper = [^void(void * arg0, UIApplication* arg1, NSCoder* arg2) {
    block(arg0, [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock44)(void * , UIApplication* , NSString* , NSError* );
ListenerBlock44 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSString_NSError(ListenerBlock44 block) {
  ListenerBlock44 wrapper = [^void(void * arg0, UIApplication* arg1, NSString* arg2, NSError* arg3) {
    block(arg0, [arg1 retain], [arg2 retain], [arg3 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock45)(void * , UIApplication* , NSUserActivity* );
ListenerBlock45 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSUserActivity(ListenerBlock45 block) {
  ListenerBlock45 wrapper = [^void(void * arg0, UIApplication* arg1, NSUserActivity* arg2) {
    block(arg0, [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock46)(void * , UIApplication* , CKShareMetadata* );
ListenerBlock46 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_CKShareMetadata(ListenerBlock46 block) {
  ListenerBlock46 wrapper = [^void(void * arg0, UIApplication* arg1, CKShareMetadata* arg2) {
    block(arg0, [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock47)(void * , UIApplication* , NSSet* );
ListenerBlock47 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIApplication_NSSet(ListenerBlock47 block) {
  ListenerBlock47 wrapper = [^void(void * arg0, UIApplication* arg1, NSSet* arg2) {
    block(arg0, [arg1 retain], [arg2 retain]);
  } copy];
  [block release];
  return wrapper;
}

typedef void  (^ListenerBlock48)(void * , UIWindow* );
ListenerBlock48 wrapListenerBlock_ObjCBlock_ffiVoid_ffiVoid_UIWindow(ListenerBlock48 block) {
  ListenerBlock48 wrapper = [^void(void * arg0, UIWindow* arg1) {
    block(arg0, [arg1 retain]);
  } copy];
  [block release];
  return wrapper;
}
