.class public interface abstract Lcom/google/android/setupcompat/portal/PortalHelper$RegisterCallback;
.super Ljava/lang/Object;
.source "PortalHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/portal/PortalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RegisterCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation
.end method

.method public abstract onSuccess(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPortalNow"
        }
    .end annotation
.end method
