.class public abstract Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
.super Ljava/lang/Object;
.source "ReceivedKeyedAppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/ReceivedKeyedAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ReceivedKeyedAppStateBuilder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Landroidx/enterprise/feedback/ReceivedKeyedAppState;
.end method

.method public abstract setData(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public abstract setKey(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract setMessage(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract setPackageName(Ljava/lang/String;)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation
.end method

.method public abstract setSeverity(I)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "severity"
        }
    .end annotation
.end method

.method public abstract setTimestamp(J)Landroidx/enterprise/feedback/ReceivedKeyedAppState$ReceivedKeyedAppStateBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation
.end method
