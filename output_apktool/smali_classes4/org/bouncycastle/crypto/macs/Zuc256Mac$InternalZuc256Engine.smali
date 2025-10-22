.class Lorg/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;
.super Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;
.source "Zuc256Mac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/macs/Zuc256Mac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalZuc256Engine"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "pLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pLength"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(I)V

    .line 267
    return-void
.end method


# virtual methods
.method createKeyStreamWord()I
    .locals 1

    .line 271
    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->makeKeyStreamWord()I

    move-result v0

    return v0
.end method
