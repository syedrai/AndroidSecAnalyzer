.class public final Lorg/bouncycastle/crypto/engines/Zuc256Engine;
.super Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;
.source "Zuc256Engine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "pLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pLength"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(I)V

    .line 28
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/crypto/engines/Zuc256Engine;)V
    .locals 0
    .param p1, "pSource"    # Lorg/bouncycastle/crypto/engines/Zuc256Engine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pSource"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;)V

    .line 38
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 47
    new-instance v0, Lorg/bouncycastle/crypto/engines/Zuc256Engine;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/Zuc256Engine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc256Engine;)V

    return-object v0
.end method
