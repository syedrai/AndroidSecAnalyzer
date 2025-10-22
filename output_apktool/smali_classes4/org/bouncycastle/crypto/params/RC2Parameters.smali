.class public Lorg/bouncycastle/crypto/params/RC2Parameters;
.super Lorg/bouncycastle/crypto/params/KeyParameter;
.source "RC2Parameters.java"


# instance fields
.field private bits:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 11
    array-length v0, p1

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    const/16 v0, 0x400

    goto :goto_0

    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    .line 12
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "key"    # [B
    .param p2, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "bits"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 19
    iput p2, p0, Lorg/bouncycastle/crypto/params/RC2Parameters;->bits:I

    .line 20
    return-void
.end method


# virtual methods
.method public getEffectiveKeyBits()I
    .locals 1

    .line 24
    iget v0, p0, Lorg/bouncycastle/crypto/params/RC2Parameters;->bits:I

    return v0
.end method
