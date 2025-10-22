.class public interface abstract annotation Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod;
.super Ljava/lang/Object;
.source "ObjectiveCAdapterMethod.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod;
        adaptations = {}
        selector = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract adaptations()[Lcom/google/j2objc/annotations/ObjectiveCAdapterMethod$Adaptation;
.end method

.method public abstract selector()Ljava/lang/String;
.end method
