.class public Lkotlin/jvm/internal/InlineMarker;
.super Ljava/lang/Object;
.source "InlineMarker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterInlineCall()V
    .locals 0

    .line 19
    return-void
.end method

.method public static beforeInlineCall()V
    .locals 0

    .line 16
    return-void
.end method

.method public static finallyEnd(I)V
    .locals 0
    .param p0, "finallyDepth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finallyDepth"
        }
    .end annotation

    .line 25
    return-void
.end method

.method public static finallyStart(I)V
    .locals 0
    .param p0, "finallyDepth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finallyDepth"
        }
    .end annotation

    .line 22
    return-void
.end method

.method public static mark(I)V
    .locals 0
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 10
    return-void
.end method

.method public static mark(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 13
    return-void
.end method
