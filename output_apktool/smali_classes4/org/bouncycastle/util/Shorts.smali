.class public Lorg/bouncycastle/util/Shorts;
.super Ljava/lang/Object;
.source "Shorts.java"


# static fields
.field public static final BYTES:I = 0x2

.field public static final SIZE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(S)Ljava/lang/Short;
    .locals 1
    .param p0, "value"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method
