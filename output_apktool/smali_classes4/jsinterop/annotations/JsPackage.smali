.class public interface abstract annotation Ljsinterop/annotations/JsPackage;
.super Ljava/lang/Object;
.source "JsPackage.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final GLOBAL:Ljava/lang/String; = "<global>"


# virtual methods
.method public abstract namespace()Ljava/lang/String;
.end method
