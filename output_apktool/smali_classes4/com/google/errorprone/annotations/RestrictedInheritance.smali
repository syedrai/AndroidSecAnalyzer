.class public interface abstract annotation Lcom/google/errorprone/annotations/RestrictedInheritance;
.super Ljava/lang/Object;
.source "RestrictedInheritance.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/errorprone/annotations/RestrictedInheritance;
        allowedInTestonlyTargets = false
        allowedOnPath = ""
        allowlistAnnotations = {}
        link = ""
        suggestedAllowlistAnnotation = Lcom/google/errorprone/annotations/DontSuggestFixes;
        warningOnlyForRefactoring = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract allowedInTestonlyTargets()Z
.end method

.method public abstract allowedOnPath()Ljava/lang/String;
.end method

.method public abstract allowlistAnnotations()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract explanation()Ljava/lang/String;
.end method

.method public abstract link()Ljava/lang/String;
.end method

.method public abstract suggestedAllowlistAnnotation()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract warningOnlyForRefactoring()Z
.end method
