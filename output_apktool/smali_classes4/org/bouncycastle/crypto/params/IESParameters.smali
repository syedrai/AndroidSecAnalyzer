.class public Lorg/bouncycastle/crypto/params/IESParameters;
.super Ljava/lang/Object;
.source "IESParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private derivation:[B

.field private encoding:[B

.field private macKeySize:I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 1
    .param p1, "derivation"    # [B
    .param p2, "encoding"    # [B
    .param p3, "macKeySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "derivation",
            "encoding",
            "macKeySize"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/IESParameters;->derivation:[B

    .line 27
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/IESParameters;->encoding:[B

    .line 28
    iput p3, p0, Lorg/bouncycastle/crypto/params/IESParameters;->macKeySize:I

    .line 29
    return-void
.end method


# virtual methods
.method public getDerivationV()[B
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/IESParameters;->derivation:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodingV()[B
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/IESParameters;->encoding:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacKeySize()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/bouncycastle/crypto/params/IESParameters;->macKeySize:I

    return v0
.end method
