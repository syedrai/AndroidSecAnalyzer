.class public Lorg/bouncycastle/jce/ECPointUtil;
.super Ljava/lang/Object;
.source "ECPointUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodePoint(Ljava/security/spec/EllipticCurve;[B)Ljava/security/spec/ECPoint;
    .locals 14
    .param p0, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curve",
            "encoded"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "c":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    instance-of v1, v1, Ljava/security/spec/ECFieldFp;

    if-eqz v1, :cond_0

    .line 34
    new-instance v2, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    .line 35
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v1}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .end local v0    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .local v2, "c":Lorg/bouncycastle/math/ec/ECCurve;
    goto :goto_0

    .line 39
    .end local v2    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .restart local v0    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    :cond_0
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v1}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object v1

    .line 41
    .local v1, "k":[I
    array-length v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 43
    new-instance v5, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    .line 44
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v2

    check-cast v2, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v2}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v6

    const/4 v2, 0x2

    aget v7, v1, v2

    const/4 v2, 0x1

    aget v8, v1, v2

    aget v9, v1, v4

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v13}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v2, v5

    .end local v0    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .restart local v2    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    goto :goto_0

    .line 48
    .end local v2    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .restart local v0    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    :cond_1
    new-instance v3, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    .line 49
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v2

    check-cast v2, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v2}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v2

    aget v5, v1, v4

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, v2

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v2, v3

    .line 53
    .end local v0    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .end local v1    # "k":[I
    .restart local v2    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    :goto_0
    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lorg/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method
