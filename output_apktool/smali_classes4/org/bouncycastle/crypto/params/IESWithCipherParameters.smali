.class public Lorg/bouncycastle/crypto/params/IESWithCipherParameters;
.super Lorg/bouncycastle/crypto/params/IESParameters;
.source "IESWithCipherParameters.java"


# instance fields
.field private cipherKeySize:I


# direct methods
.method public constructor <init>([B[BII)V
    .locals 0
    .param p1, "derivation"    # [B
    .param p2, "encoding"    # [B
    .param p3, "macKeySize"    # I
    .param p4, "cipherKeySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "derivation",
            "encoding",
            "macKeySize",
            "cipherKeySize"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/params/IESParameters;-><init>([B[BI)V

    .line 23
    iput p4, p0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->cipherKeySize:I

    .line 24
    return-void
.end method


# virtual methods
.method public getCipherKeySize()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->cipherKeySize:I

    return v0
.end method
