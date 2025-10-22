.class public Lorg/bouncycastle/math/ec/WTauNafMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;
.source "WTauNafMultiplier.java"


# static fields
.field static final PRECOMP_NAME:Ljava/lang/String; = "bc_wtnaf"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method

.method private static multiplyFromWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 11
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "u"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "p",
            "u"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 73
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    .line 75
    .local v1, "a":B
    new-instance v2, Lorg/bouncycastle/math/ec/WTauNafMultiplier$1;

    invoke-direct {v2, p0, v1}, Lorg/bouncycastle/math/ec/WTauNafMultiplier$1;-><init>(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;B)V

    const-string v3, "bc_wtnaf"

    invoke-virtual {v0, p0, v3, v2}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->precompute(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompCallback;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    .line 90
    .local v2, "preCompInfo":Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    .line 93
    .local v3, "pu":[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    array-length v4, v3

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 94
    .local v4, "puNeg":[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 96
    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    aput-object v6, v4, v5

    .line 94
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 101
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 103
    .local v5, "q":Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v6, 0x0

    .line 104
    .local v6, "tauCount":I
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_3

    .line 106
    add-int/lit8 v6, v6, 0x1

    .line 107
    aget-byte v8, p1, v7

    .line 108
    .local v8, "ui":I
    if-eqz v8, :cond_2

    .line 110
    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    .line 111
    const/4 v6, 0x0

    .line 113
    if-lez v8, :cond_1

    ushr-int/lit8 v9, v8, 0x1

    aget-object v9, v3, v9

    goto :goto_2

    :cond_1
    neg-int v9, v8

    ushr-int/lit8 v9, v9, 0x1

    aget-object v9, v4, v9

    .line 114
    .local v9, "x":Lorg/bouncycastle/math/ec/ECPoint;
    :goto_2
    invoke-virtual {v5, v9}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    move-object v5, v10

    check-cast v5, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 104
    .end local v8    # "ui":I
    .end local v9    # "x":Lorg/bouncycastle/math/ec/ECPoint;
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 117
    .end local v7    # "i":I
    :cond_3
    if-lez v6, :cond_4

    .line 119
    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    .line 121
    :cond_4
    return-object v5
.end method

.method private multiplyWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ZTauElement;BB)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 4
    .param p1, "p"    # Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p2, "lambda"    # Lorg/bouncycastle/math/ec/ZTauElement;
    .param p3, "a"    # B
    .param p4, "mu"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "lambda",
            "a",
            "mu"
        }
    .end annotation

    .line 52
    if-nez p3, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha0:[Lorg/bouncycastle/math/ec/ZTauElement;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha1:[Lorg/bouncycastle/math/ec/ZTauElement;

    .line 54
    .local v0, "alpha":[Lorg/bouncycastle/math/ec/ZTauElement;
    :goto_0
    const/4 v1, 0x4

    invoke-static {p4, v1}, Lorg/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v2

    .line 56
    .local v2, "tw":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-static {p4, p2, v1, v3, v0}, Lorg/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLorg/bouncycastle/math/ec/ZTauElement;II[Lorg/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v1

    .line 58
    .local v1, "u":[B
    invoke-static {p1, v1}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "point"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "point",
            "k"
        }
    .end annotation

    .line 24
    instance-of v0, p1, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 31
    .local v0, "p":Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 32
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->byteValue()B

    move-result v2

    .line 33
    .local v2, "a":B
    invoke-static {v2}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v3

    .line 35
    .local v3, "mu":B
    const/16 v4, 0xa

    invoke-static {v1, p2, v2, v3, v4}, Lorg/bouncycastle/math/ec/Tnaf;->partModReduction(Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;Ljava/math/BigInteger;BBB)Lorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v4

    .line 37
    .local v4, "rho":Lorg/bouncycastle/math/ec/ZTauElement;
    invoke-direct {p0, v0, v4, v2, v3}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ZTauElement;BB)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    return-object v5

    .line 26
    .end local v0    # "p":Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .end local v1    # "curve":Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
    .end local v2    # "a":B
    .end local v3    # "mu":B
    .end local v4    # "rho":Lorg/bouncycastle/math/ec/ZTauElement;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only ECPoint.AbstractF2m can be used in WTauNafMultiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
