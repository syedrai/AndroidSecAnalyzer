.class public final Lorg/bouncycastle/crypto/engines/Zuc128Engine;
.super Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;
.source "Zuc128Engine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>()V

    .line 18
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/crypto/engines/Zuc128Engine;)V
    .locals 0
    .param p1, "pSource"    # Lorg/bouncycastle/crypto/engines/Zuc128Engine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pSource"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;)V

    .line 28
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 37
    new-instance v0, Lorg/bouncycastle/crypto/engines/Zuc128Engine;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/Zuc128Engine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc128Engine;)V

    return-object v0
.end method
