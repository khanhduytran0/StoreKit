#include <stdint.h>

uint64_t swift_getTypeByMangledNameInContext(const char *typeNameStart, uint64_t typeNameLength, const void *context, const void * const *genericArgs);
uint64_t swift_getTypeByMangledNameInContextInMetadataState(uint64_t metadataState, const char *typeNameStart, uint64_t typeNameLength, const void *context, const void * const *genericArgs);

void $sSa12_endMutationyyFyXl_Ts5() {
    // real implementation is also empty
}

uint64_t swift_getTypeByMangledNameInContext2(const char *typeNameStart, uint64_t typeNameLength, const void *context, const void * const *genericArgs) {
    return swift_getTypeByMangledNameInContext(typeNameStart, typeNameLength, context, genericArgs);
}

uint64_t swift_getTypeByMangledNameInContextInMetadataState2(uint64_t metadataState, const char *typeNameStart, uint64_t typeNameLength, const void *context, const void * const *genericArgs) {
    return swift_getTypeByMangledNameInContextInMetadataState(metadataState, typeNameStart, typeNameLength, context, genericArgs);
}
