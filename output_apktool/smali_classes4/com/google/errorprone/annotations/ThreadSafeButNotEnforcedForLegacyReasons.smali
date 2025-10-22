.class interface abstract annotation Lcom/google/errorprone/annotations/ThreadSafeButNotEnforcedForLegacyReasons;
.super Ljava/lang/Object;
.source "ThreadSafeButNotEnforcedForLegacyReasons.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation
