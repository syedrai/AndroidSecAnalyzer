.class public interface abstract Landroidx/enterprise/feedback/KeyedAppStatesCallback;
.super Ljava/lang/Object;
.source "KeyedAppStatesCallback.java"


# static fields
.field public static final STATUS_EXCEEDED_BUFFER_ERROR:I = 0x3

.field public static final STATUS_SUCCESS:I = 0x0

.field public static final STATUS_TRANSACTION_TOO_LARGE_ERROR:I = 0x2

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1


# virtual methods
.method public abstract onResult(ILjava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "throwable"
        }
    .end annotation
.end method
