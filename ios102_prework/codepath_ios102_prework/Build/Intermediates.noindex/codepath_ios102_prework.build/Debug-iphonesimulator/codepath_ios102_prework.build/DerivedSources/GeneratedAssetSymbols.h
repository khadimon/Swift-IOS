#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "usm_logo" asset catalog image resource.
static NSString * const ACImageNameUsmLogo AC_SWIFT_PRIVATE = @"usm_logo";

#undef AC_SWIFT_PRIVATE