.class public Lorg/bouncycastle/asn1/x9/X9IntegerConverter;
.super Ljava/lang/Object;
.source "X9IntegerConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getByteLength(Lorg/bouncycastle/math/ec/ECCurve;)I
    .locals 1
    .param p1, "c"    # Lorg/bouncycastle/math/ec/ECCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getByteLength(Lorg/bouncycastle/math/ec/ECFieldElement;)I
    .locals 1
    .param p1, "fe"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fe"
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public integerToBytes(Ljava/math/BigInteger;I)[B
    .locals 5
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "qLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "qLength"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 51
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 53
    new-array v1, p2, [B

    .line 55
    .local v1, "tmp":[B
    array-length v3, v0

    array-length v4, v1

    sub-int/2addr v3, v4

    array-length v4, v1

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-object v1

    .line 59
    .end local v1    # "tmp":[B
    :cond_0
    array-length v1, v0

    if-le p2, v1, :cond_1

    .line 61
    new-array v1, p2, [B

    .line 63
    .restart local v1    # "tmp":[B
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-object v1

    .line 68
    .end local v1    # "tmp":[B
    :cond_1
    return-object v0
.end method
