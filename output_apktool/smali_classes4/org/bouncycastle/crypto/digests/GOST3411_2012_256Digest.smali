.class public final Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;
.super Lorg/bouncycastle/crypto/digests/GOST3411_2012Digest;
.source "GOST3411_2012_256Digest.java"


# static fields
.field private static final IV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;->IV:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    sget-object v0, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;->IV:[B

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411_2012Digest;-><init>([BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1
    .param p1, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purpose"
        }
    .end annotation

    .line 25
    sget-object v0, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;->IV:[B

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/GOST3411_2012Digest;-><init>([BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;)V
    .locals 2
    .param p1, "other"    # Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 34
    sget-object v0, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;->IV:[B

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411_2012Digest;-><init>([BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 35
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 36
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 60
    new-instance v0, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;-><init>(Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 50
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 51
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411_2012Digest;->doFinal([BI)I

    .line 53
    const/16 v1, 0x20

    invoke-static {v0, v1, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "GOST3411-2012-256"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 45
    const/16 v0, 0x20

    return v0
.end method
