.class public Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;
.super Ljava/lang/Object;
.source "PlainDSAEncoding.java"

# interfaces
.implements Lorg/bouncycastle/crypto/signers/DSAEncoding;


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;->INSTANCE:Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeValue(Ljava/math/BigInteger;Ljava/math/BigInteger;[BII)V
    .locals 6
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "x"    # Ljava/math/BigInteger;
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "x",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;->checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 55
    .local v0, "bs":[B
    array-length v1, v0

    sub-int/2addr v1, p5

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 56
    .local v1, "bsOff":I
    array-length v3, v0

    sub-int/2addr v3, v1

    .line 58
    .local v3, "bsLen":I
    sub-int v4, p5, v3

    .line 59
    .local v4, "pos":I
    add-int v5, p4, v4

    invoke-static {p3, p4, v5, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 60
    add-int v2, p4, v4

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    return-void
.end method


# virtual methods
.method protected checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "x"
        }
    .end annotation

    .line 38
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 43
    return-object p2

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;
    .locals 4
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "encoding"
        }
    .end annotation

    .line 24
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->getUnsignedByteLength(Ljava/math/BigInteger;)I

    move-result v0

    .line 25
    .local v0, "valueLength":I
    array-length v1, p2

    mul-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_0

    .line 30
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/math/BigInteger;

    .line 31
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, v0}, Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;->decodeValue(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v1, v2

    .line 32
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;->decodeValue(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 30
    return-object v1

    .line 27
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Encoding has incorrect length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected decodeValue(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;
    .locals 3
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 48
    add-int v0, p3, p4

    invoke-static {p2, p3, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 49
    .local v0, "bs":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;->checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 6
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "r",
            "s"
        }
    .end annotation

    .line 15
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->getUnsignedByteLength(Ljava/math/BigInteger;)I

    move-result v4

    .line 16
    .local v4, "valueLength":I
    mul-int/lit8 v0, v4, 0x2

    new-array v3, v0, [B

    .line 17
    .local v3, "result":[B
    move v5, v4

    .end local v4    # "valueLength":I
    .local v5, "valueLength":I
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "n":Ljava/math/BigInteger;
    .end local p2    # "r":Ljava/math/BigInteger;
    .local v1, "n":Ljava/math/BigInteger;
    .local v2, "r":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;->encodeValue(Ljava/math/BigInteger;Ljava/math/BigInteger;[BII)V

    .line 18
    move-object p1, v2

    .end local v2    # "r":Ljava/math/BigInteger;
    .local p1, "r":Ljava/math/BigInteger;
    move v4, v5

    .end local v5    # "valueLength":I
    .restart local v4    # "valueLength":I
    move-object v2, p3

    .end local p3    # "s":Ljava/math/BigInteger;
    .local v2, "s":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;->encodeValue(Ljava/math/BigInteger;Ljava/math/BigInteger;[BII)V

    .line 19
    .end local v4    # "valueLength":I
    .restart local v5    # "valueLength":I
    return-object v3
.end method
