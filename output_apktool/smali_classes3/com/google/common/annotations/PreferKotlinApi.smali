.class public interface abstract annotation Lcom/google/common/annotations/PreferKotlinApi;
.super Ljava/lang/Object;
.source "PreferKotlinApi.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/common/annotations/PreferKotlinApi;
        comment = ""
        imports = {}
        replacement = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract comment()Ljava/lang/String;
.end method

.method public abstract imports()[Ljava/lang/String;
.end method

.method public abstract replacement()Ljava/lang/String;
.end method
