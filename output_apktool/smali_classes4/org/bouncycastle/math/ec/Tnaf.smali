.class Lorg/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger;

.field private static final MINUS_THREE:Ljava/math/BigInteger;

.field private static final MINUS_TWO:Ljava/math/BigInteger;

.field public static final WIDTH:B = 0x4t

.field public static final alpha0:[Lorg/bouncycastle/math/ec/ZTauElement;

.field public static final alpha0Tnaf:[[B

.field public static final alpha1:[Lorg/bouncycastle/math/ec/ZTauElement;

.field public static final alpha1Tnaf:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 16
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 17
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 18
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    .line 36
    const/16 v0, 0x10

    new-array v1, v0, [Lorg/bouncycastle/math/ec/ZTauElement;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    new-instance v4, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v6, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-instance v6, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v7, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v8, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-instance v8, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v9, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v10, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-instance v10, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v11, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v12, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v10, v11, v12}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v11, 0x7

    aput-object v10, v1, v11

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-instance v12, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v13, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v14, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v13, 0x9

    aput-object v12, v1, v13

    const/16 v12, 0xa

    aput-object v3, v1, v12

    new-instance v14, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v15, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/16 v16, 0x0

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v14, v15, v2}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v2, 0xb

    aput-object v14, v1, v2

    const/16 v14, 0xc

    aput-object v3, v1, v14

    new-instance v15, Lorg/bouncycastle/math/ec/ZTauElement;

    const/16 v17, 0xb

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    move-object/from16 v18, v3

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v15, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v2, 0xd

    aput-object v15, v1, v2

    const/16 v3, 0xe

    aput-object v18, v1, v3

    new-instance v15, Lorg/bouncycastle/math/ec/ZTauElement;

    const/16 v19, 0xd

    sget-object v2, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    const/16 v20, 0xe

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v15, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v2, 0xf

    aput-object v15, v1, v2

    sput-object v1, Lorg/bouncycastle/math/ec/Tnaf;->alpha0:[Lorg/bouncycastle/math/ec/ZTauElement;

    .line 52
    new-array v1, v7, [B

    fill-array-data v1, :array_0

    new-array v3, v7, [B

    fill-array-data v3, :array_1

    new-array v15, v6, [B

    fill-array-data v15, :array_2

    const/16 v21, 0xf

    new-array v2, v10, [[B

    aput-object v18, v2, v16

    const/16 v22, 0x2

    new-array v4, v5, [B

    aput-byte v5, v4, v16

    aput-object v4, v2, v5

    aput-object v18, v2, v22

    aput-object v1, v2, v7

    aput-object v18, v2, v6

    aput-object v3, v2, v9

    aput-object v18, v2, v8

    aput-object v15, v2, v11

    sput-object v2, Lorg/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 60
    new-array v0, v0, [Lorg/bouncycastle/math/ec/ZTauElement;

    aput-object v18, v0, v16

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v5

    aput-object v18, v0, v22

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v18, v0, v6

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v9

    aput-object v18, v0, v8

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v11

    aput-object v18, v0, v10

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v13

    aput-object v18, v0, v12

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v17

    aput-object v18, v0, v14

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v19

    aput-object v18, v0, v20

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v21

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha1:[Lorg/bouncycastle/math/ec/ZTauElement;

    .line 76
    new-array v0, v7, [B

    fill-array-data v0, :array_3

    new-array v1, v7, [B

    fill-array-data v1, :array_4

    new-array v2, v6, [B

    fill-array-data v2, :array_5

    new-array v3, v10, [[B

    aput-object v18, v3, v16

    new-array v4, v5, [B

    aput-byte v5, v4, v16

    aput-object v4, v3, v5

    aput-object v18, v3, v22

    aput-object v0, v3, v7

    aput-object v18, v3, v6

    aput-object v1, v3, v9

    aput-object v18, v3, v8

    aput-object v2, v3, v11

    sput-object v3, Lorg/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 8
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "vm"    # Ljava/math/BigInteger;
    .param p3, "a"    # B
    .param p4, "m"    # I
    .param p5, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "k",
            "s",
            "vm",
            "a",
            "m",
            "c"
        }
    .end annotation

    .line 290
    add-int/lit8 v0, p4, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    .line 291
    .local v0, "_k":I
    sub-int v1, p4, v0

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 293
    .local v1, "ns":Ljava/math/BigInteger;
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 295
    .local v2, "gs":Ljava/math/BigInteger;
    invoke-virtual {v2, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 297
    .local v3, "hs":Ljava/math/BigInteger;
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 299
    .local v4, "js":Ljava/math/BigInteger;
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 300
    .local v5, "gsPlusJs":Ljava/math/BigInteger;
    sub-int v6, v0, p5

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 301
    .local v6, "ls":Ljava/math/BigInteger;
    sub-int v7, v0, p5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 304
    sget-object v7, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 307
    :cond_0
    new-instance v7, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v7, v6, p5}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v7
.end method

.method public static getLucas(BIZ)[Ljava/math/BigInteger;
    .locals 6
    .param p0, "mu"    # B
    .param p1, "k"    # I
    .param p2, "doV"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mu",
            "k",
            "doV"
        }
    .end annotation

    .line 453
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 461
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 462
    .local v1, "u0":Ljava/math/BigInteger;
    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .local v2, "u1":Ljava/math/BigInteger;
    goto :goto_1

    .line 466
    .end local v1    # "u0":Ljava/math/BigInteger;
    .end local v2    # "u1":Ljava/math/BigInteger;
    :cond_2
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 467
    .restart local v1    # "u0":Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 470
    .restart local v2    # "u1":Ljava/math/BigInteger;
    :goto_1
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, p1, :cond_4

    .line 473
    move-object v4, v2

    .line 474
    .local v4, "s":Ljava/math/BigInteger;
    if-gez p0, :cond_3

    .line 476
    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    .line 479
    :cond_3
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 480
    .local v5, "u2":Ljava/math/BigInteger;
    move-object v1, v2

    .line 481
    move-object v2, v5

    .line 470
    .end local v4    # "s":Ljava/math/BigInteger;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 484
    .end local v3    # "i":I
    .end local v5    # "u2":Ljava/math/BigInteger;
    :cond_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v0

    return-object v3
.end method

.method public static getMu(I)B
    .locals 1
    .param p0, "curveA"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveA"
        }
    .end annotation

    .line 434
    if-nez p0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    return v0
.end method

.method public static getMu(Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;)B
    .locals 2
    .param p0, "curve"    # Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const/4 v0, -0x1

    return v0

    .line 424
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 416
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMu(Lorg/bouncycastle/math/ec/ECFieldElement;)B
    .locals 1
    .param p0, "curveA"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveA"
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    return v0
.end method

.method public static getPreComp(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 7
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "a"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "a"
        }
    .end annotation

    .line 812
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 813
    .local v0, "pNeg":Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    if-nez p1, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .line 815
    .local v1, "alphaTnaf":[[B
    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 816
    .local v2, "pu":[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 818
    array-length v3, v1

    .line 819
    .local v3, "precompLen":I
    const/4 v4, 0x3

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 821
    ushr-int/lit8 v5, v4, 0x1

    aget-object v6, v1, v4

    invoke-static {p0, v0, v6}, Lorg/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v6

    aput-object v6, v2, v5

    .line 819
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 824
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 826
    return-object v2
.end method

.method protected static getShiftsForCofactor(Ljava/math/BigInteger;)I
    .locals 2
    .param p0, "h"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    .line 557
    if-eqz p0, :cond_1

    .line 559
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x1

    return v0

    .line 563
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    const/4 v0, 0x2

    return v0

    .line 569
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "h (Cofactor) must be 2 or 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 9
    .param p0, "fieldSize"    # I
    .param p1, "curveA"    # I
    .param p2, "cofactor"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldSize",
            "curveA",
            "cofactor"
        }
    .end annotation

    .line 539
    invoke-static {p1}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v0

    .line 540
    .local v0, "mu":B
    invoke-static {p2}, Lorg/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result v1

    .line 541
    .local v1, "shifts":I
    add-int/lit8 v2, p0, 0x3

    sub-int/2addr v2, p1

    .line 542
    .local v2, "index":I
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v4

    .line 543
    .local v4, "ui":[Ljava/math/BigInteger;
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 545
    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v4, v3

    .line 546
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v4, v5

    .line 549
    :cond_0
    sget-object v6, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 550
    .local v6, "dividend0":Ljava/math/BigInteger;
    sget-object v7, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    .line 552
    .local v7, "dividend1":Ljava/math/BigInteger;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/math/BigInteger;

    aput-object v6, v8, v3

    aput-object v7, v8, v5

    return-object v8
.end method

.method public static getSi(Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "curve"    # Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .line 529
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCofactor()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/Tnaf;->getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "si is defined for Koblitz curves only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTw(BI)Ljava/math/BigInteger;
    .locals 5
    .param p0, "mu"    # B
    .param p1, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mu",
            "w"
        }
    .end annotation

    .line 497
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 499
    if-ne p0, v1, :cond_0

    .line 501
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 506
    :cond_0
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 512
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v2

    .line 513
    .local v2, "us":[Ljava/math/BigInteger;
    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 514
    .local v3, "twoToW":Ljava/math/BigInteger;
    aget-object v4, v2, v1

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 515
    .local v4, "u1invert":Ljava/math/BigInteger;
    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static multiplyFromTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 7
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "pNeg"    # Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p2, "u"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "pNeg",
            "u"
        }
    .end annotation

    .line 680
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 681
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 682
    .local v1, "q":Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v2, 0x0

    .line 683
    .local v2, "tauCount":I
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 685
    add-int/lit8 v2, v2, 0x1

    .line 686
    aget-byte v4, p2, v3

    .line 687
    .local v4, "ui":B
    if-eqz v4, :cond_1

    .line 689
    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v1

    .line 690
    const/4 v2, 0x0

    .line 692
    if-lez v4, :cond_0

    move-object v5, p0

    goto :goto_1

    :cond_0
    move-object v5, p1

    .line 693
    .local v5, "x":Lorg/bouncycastle/math/ec/ECPoint;
    :goto_1
    invoke-virtual {v1, v5}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 683
    .end local v4    # "ui":B
    .end local v5    # "x":Lorg/bouncycastle/math/ec/ECPoint;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 696
    .end local v3    # "i":I
    :cond_2
    if-lez v2, :cond_3

    .line 698
    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v1

    .line 700
    :cond_3
    return-object v1
.end method

.method public static multiplyRTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 5
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "k"
        }
    .end annotation

    .line 641
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 642
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 643
    .local v1, "a":I
    invoke-static {v1}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v2

    .line 645
    .local v2, "mu":B
    int-to-byte v3, v1

    const/16 v4, 0xa

    invoke-static {v0, p1, v3, v2, v4}, Lorg/bouncycastle/math/ec/Tnaf;->partModReduction(Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;Ljava/math/BigInteger;BBB)Lorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v3

    .line 647
    .local v3, "rho":Lorg/bouncycastle/math/ec/ZTauElement;
    invoke-static {p0, v3}, Lorg/bouncycastle/math/ec/Tnaf;->multiplyTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ZTauElement;)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v4

    return-object v4
.end method

.method public static multiplyTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ZTauElement;)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 5
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "lambda"    # Lorg/bouncycastle/math/ec/ZTauElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "lambda"
        }
    .end annotation

    .line 661
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 662
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 663
    .local v1, "pNeg":Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(Lorg/bouncycastle/math/ec/ECFieldElement;)B

    move-result v2

    .line 664
    .local v2, "mu":B
    invoke-static {v2, p1}, Lorg/bouncycastle/math/ec/Tnaf;->tauAdicNaf(BLorg/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v3

    .line 666
    .local v3, "u":[B
    invoke-static {p0, v1, v3}, Lorg/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v4

    return-object v4
.end method

.method public static norm(BLorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lorg/bouncycastle/math/ec/ZTauElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "mu",
            "lambda"
        }
    .end annotation

    .line 91
    iget-object v0, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 99
    .local v0, "s1":Ljava/math/BigInteger;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 102
    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 104
    :cond_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    .line 107
    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 111
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mu must be 1 or -1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static norm(BLorg/bouncycastle/math/ec/SimpleBigDecimal;Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 5
    .param p0, "mu"    # B
    .param p1, "u"    # Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "v"    # Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "mu",
            "u",
            "v"
        }
    .end annotation

    .line 133
    invoke-virtual {p1, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .line 136
    .local v0, "s1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 139
    .local v1, "s2":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p2, p2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->shiftLeft(I)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 141
    .local v2, "s3":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne p0, v3, :cond_0

    .line 143
    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .local v3, "norm":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_0

    .line 145
    .end local v3    # "norm":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_0
    const/4 v3, -0x1

    if-ne p0, v3, :cond_1

    .line 147
    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 154
    .restart local v3    # "norm":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_0
    return-object v3

    .line 151
    .end local v3    # "norm":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "mu must be 1 or -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static partModReduction(Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;Ljava/math/BigInteger;BBB)Lorg/bouncycastle/math/ec/ZTauElement;
    .locals 14
    .param p0, "curve"    # Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "a"    # B
    .param p3, "mu"    # B
    .param p4, "c"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "curve",
            "k",
            "a",
            "mu",
            "c"
        }
    .end annotation

    .line 587
    move/from16 v0, p3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v5

    .line 588
    .local v5, "m":I
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v7

    .line 592
    .local v7, "s":[Ljava/math/BigInteger;
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    .line 594
    aget-object v1, v7, v8

    aget-object v2, v7, v9

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v10, v1

    .local v1, "d0":Ljava/math/BigInteger;
    goto :goto_0

    .line 598
    .end local v1    # "d0":Ljava/math/BigInteger;
    :cond_0
    aget-object v1, v7, v8

    aget-object v2, v7, v9

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v10, v1

    .line 602
    .local v10, "d0":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 608
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCofactor()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 607
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v3, v1

    .local v1, "vm":Ljava/math/BigInteger;
    goto :goto_1

    .line 612
    .end local v1    # "vm":Ljava/math/BigInteger;
    :cond_1
    invoke-static {v0, v5, v9}, Lorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v1

    .line 613
    .local v1, "v":[Ljava/math/BigInteger;
    aget-object v2, v1, v9

    move-object v3, v2

    .line 616
    .end local v1    # "v":[Ljava/math/BigInteger;
    .local v3, "vm":Ljava/math/BigInteger;
    :goto_1
    aget-object v2, v7, v8

    move-object v1, p1

    move/from16 v4, p2

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v11

    .line 617
    .local v11, "lambda0":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    aget-object v2, v7, v9

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 619
    .local v2, "lambda1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-static {v11, v2, v0}, Lorg/bouncycastle/math/ec/Tnaf;->round(Lorg/bouncycastle/math/ec/SimpleBigDecimal;Lorg/bouncycastle/math/ec/SimpleBigDecimal;B)Lorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v4

    .line 622
    .local v4, "q":Lorg/bouncycastle/math/ec/ZTauElement;
    iget-object v6, v4, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v10, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aget-object v12, v7, v9

    iget-object v13, v4, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 623
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    .line 622
    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 626
    .local v6, "r0":Ljava/math/BigInteger;
    aget-object v9, v7, v9

    iget-object v12, v4, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    aget-object v8, v7, v8

    iget-object v12, v4, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 628
    .local v8, "r1":Ljava/math/BigInteger;
    new-instance v9, Lorg/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v9, v6, v8}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method public static round(Lorg/bouncycastle/math/ec/SimpleBigDecimal;Lorg/bouncycastle/math/ec/SimpleBigDecimal;B)Lorg/bouncycastle/math/ec/ZTauElement;
    .locals 17
    .param p0, "lambda0"    # Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .param p1, "lambda1"    # Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "mu"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lambda0",
            "lambda1",
            "mu"
        }
    .end annotation

    .line 173
    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v1

    .line 174
    .local v1, "scale":I
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v2

    if-ne v2, v1, :cond_a

    .line 180
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mu must be 1 or -1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v3

    .line 186
    .local v3, "f0":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v4

    .line 188
    .local v4, "f1":Ljava/math/BigInteger;
    move-object/from16 v5, p0

    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v6

    .line 189
    .local v6, "eta0":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    move-object/from16 v7, p1

    invoke-virtual {v7, v4}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    .line 192
    .local v8, "eta1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v6, v6}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 193
    .local v9, "eta":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne v0, v2, :cond_2

    .line 195
    invoke-virtual {v9, v8}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {v9, v8}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 205
    :goto_1
    invoke-virtual {v8, v8}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    .line 206
    .local v10, "threeEta1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v10, v8}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v11

    .line 209
    .local v11, "fourEta1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne v0, v2, :cond_3

    .line 211
    invoke-virtual {v6, v10}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 212
    .local v2, "check1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v6, v11}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v12

    .local v12, "check2":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_2

    .line 217
    .end local v2    # "check1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v12    # "check2":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_3
    invoke-virtual {v6, v10}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 218
    .restart local v2    # "check1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v6, v11}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v12

    .line 221
    .restart local v12    # "check2":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_2
    const/4 v13, 0x0

    .line 222
    .local v13, "h0":B
    const/4 v14, 0x0

    .line 225
    .local v14, "h1":B
    sget-object v15, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v15}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_5

    .line 227
    sget-object v15, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_4

    .line 229
    move/from16 v14, p2

    goto :goto_3

    .line 233
    :cond_4
    const/4 v13, 0x1

    goto :goto_3

    .line 239
    :cond_5
    sget-object v15, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v15}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_6

    .line 241
    move/from16 v14, p2

    .line 246
    :cond_6
    :goto_3
    sget-object v15, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v15}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_8

    .line 248
    sget-object v15, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_7

    .line 250
    neg-int v15, v0

    int-to-byte v14, v15

    goto :goto_4

    .line 254
    :cond_7
    const/4 v13, -0x1

    goto :goto_4

    .line 260
    :cond_8
    sget-object v15, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v15}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_9

    .line 262
    neg-int v15, v0

    int-to-byte v14, v15

    .line 266
    :cond_9
    :goto_4
    move v15, v1

    .end local v1    # "scale":I
    .local v15, "scale":I
    int-to-long v0, v13

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 267
    .local v0, "q0":Ljava/math/BigInteger;
    move-object/from16 v16, v2

    .end local v2    # "check1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .local v16, "check1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    int-to-long v1, v14

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 268
    .local v1, "q1":Ljava/math/BigInteger;
    new-instance v2, Lorg/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    .line 176
    .end local v0    # "q0":Ljava/math/BigInteger;
    .end local v3    # "f0":Ljava/math/BigInteger;
    .end local v4    # "f1":Ljava/math/BigInteger;
    .end local v6    # "eta0":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v8    # "eta1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v9    # "eta":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v10    # "threeEta1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v11    # "fourEta1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v12    # "check2":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v13    # "h0":B
    .end local v14    # "h1":B
    .end local v15    # "scale":I
    .end local v16    # "check1":Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .local v1, "scale":I
    :cond_a
    move v15, v1

    .end local v1    # "scale":I
    .restart local v15    # "scale":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tau(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 1
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tau()Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0
.end method

.method public static tauAdicNaf(BLorg/bouncycastle/math/ec/ZTauElement;)[B
    .locals 13
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lorg/bouncycastle/math/ec/ZTauElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mu",
            "lambda"
        }
    .end annotation

    .line 320
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/Tnaf;->norm(BLorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v1

    .line 328
    .local v1, "norm":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 331
    .local v2, "log2Norm":I
    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x4

    goto :goto_1

    :cond_2
    const/16 v3, 0x22

    .line 334
    .local v3, "maxLength":I
    :goto_1
    new-array v4, v3, [B

    .line 335
    .local v4, "u":[B
    const/4 v5, 0x0

    .line 338
    .local v5, "i":I
    const/4 v6, 0x0

    .line 340
    .local v6, "length":I
    iget-object v7, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 341
    .local v7, "r0":Ljava/math/BigInteger;
    iget-object v8, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 343
    .local v8, "r1":Ljava/math/BigInteger;
    :goto_2
    sget-object v9, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    sget-object v9, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    .line 383
    :cond_3
    add-int/2addr v6, v0

    .line 386
    new-array v0, v6, [B

    .line 387
    .local v0, "tnaf":[B
    invoke-static {v4, v10, v0, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    return-object v0

    .line 346
    .end local v0    # "tnaf":[B
    :cond_4
    :goto_3
    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 348
    sget-object v9, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    sget-object v12, Lorg/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v4, v5

    .line 351
    aget-byte v9, v4, v5

    if-ne v9, v0, :cond_5

    .line 353
    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_4

    .line 358
    :cond_5
    sget-object v9, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 360
    :goto_4
    move v6, v5

    goto :goto_5

    .line 364
    :cond_6
    aput-byte v10, v4, v5

    .line 367
    :goto_5
    move-object v9, v7

    .line 368
    .local v9, "t":Ljava/math/BigInteger;
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 369
    .local v10, "s":Ljava/math/BigInteger;
    if-ne p0, v0, :cond_7

    .line 371
    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_6

    .line 376
    :cond_7
    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 379
    :goto_6
    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    .line 380
    nop

    .end local v9    # "t":Ljava/math/BigInteger;
    .end local v10    # "s":Ljava/math/BigInteger;
    add-int/lit8 v5, v5, 0x1

    .line 381
    goto :goto_2
.end method

.method public static tauAdicWNaf(BLorg/bouncycastle/math/ec/ZTauElement;II[Lorg/bouncycastle/math/ec/ZTauElement;)[B
    .locals 24
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lorg/bouncycastle/math/ec/ZTauElement;
    .param p2, "width"    # I
    .param p3, "tw"    # I
    .param p4, "alpha"    # [Lorg/bouncycastle/math/ec/ZTauElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mu",
            "lambda",
            "width",
            "tw",
            "alpha"
        }
    .end annotation

    .line 719
    move/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 721
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mu must be 1 or -1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 724
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p1}, Lorg/bouncycastle/math/ec/Tnaf;->norm(BLorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v3

    .line 727
    .local v3, "norm":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 730
    .local v4, "log2Norm":I
    const/16 v5, 0x1e

    if-le v4, v5, :cond_2

    add-int/lit8 v5, v4, 0x4

    add-int v5, v5, p2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, p2, 0x22

    .line 733
    .local v5, "maxLength":I
    :goto_1
    new-array v6, v5, [B

    .line 735
    .local v6, "u":[B
    shl-int v7, v2, p2

    .line 736
    .local v7, "pow2Width":I
    add-int/lit8 v8, v7, -0x1

    .line 737
    .local v8, "pow2Mask":I
    rsub-int/lit8 v9, p2, 0x20

    .line 740
    .local v9, "s":I
    iget-object v10, v1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 741
    .local v10, "R0":Ljava/math/BigInteger;
    iget-object v11, v1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 742
    .local v11, "R1":Ljava/math/BigInteger;
    const/4 v12, 0x0

    .line 745
    .local v12, "uPos":I
    :goto_2
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    const/16 v14, 0x3e

    if-gt v13, v14, :cond_7

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-le v13, v14, :cond_3

    move-object/from16 v16, v3

    goto :goto_6

    .line 771
    :cond_3
    invoke-static {v10}, Lorg/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v13

    .line 772
    .local v13, "r0_64":J
    invoke-static {v11}, Lorg/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v15

    move-wide/from16 v22, v15

    move-object/from16 v16, v3

    move-wide/from16 v2, v22

    const/4 v15, 0x1

    .line 775
    .end local v3    # "norm":Ljava/math/BigInteger;
    .local v2, "r1_64":J
    .local v16, "norm":Ljava/math/BigInteger;
    :goto_3
    or-long v17, v13, v2

    const-wide/16 v19, 0x0

    cmp-long v21, v17, v19

    if-eqz v21, :cond_6

    .line 777
    const-wide/16 v17, 0x1

    and-long v17, v13, v17

    cmp-long v21, v17, v19

    if-eqz v21, :cond_4

    .line 779
    const/16 v17, 0x1

    long-to-int v15, v13

    long-to-int v1, v2

    mul-int v1, v1, p3

    add-int/2addr v15, v1

    .line 780
    .local v15, "uVal":I
    and-int v1, v15, v8

    .line 782
    .local v1, "alphaPos":I
    shl-int v18, v15, v9

    move/from16 v19, v1

    .end local v1    # "alphaPos":I
    .local v19, "alphaPos":I
    shr-int v1, v18, v9

    int-to-byte v1, v1

    aput-byte v1, v6, v12

    .line 783
    aget-object v1, p4, v19

    iget-object v1, v1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    move-wide/from16 v20, v2

    .end local v2    # "r1_64":J
    .local v20, "r1_64":J
    int-to-long v1, v1

    sub-long/2addr v13, v1

    .line 784
    aget-object v1, p4, v19

    iget-object v1, v1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, v20, v1

    move-wide v2, v1

    .end local v20    # "r1_64":J
    .local v1, "r1_64":J
    goto :goto_4

    .line 777
    .end local v1    # "r1_64":J
    .end local v15    # "uVal":I
    .end local v19    # "alphaPos":I
    .restart local v2    # "r1_64":J
    :cond_4
    move-wide/from16 v20, v2

    const/16 v17, 0x1

    .line 787
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 789
    move-wide/from16 v18, v2

    .end local v2    # "r1_64":J
    .local v18, "r1_64":J
    shr-long v1, v13, v17

    .line 790
    .local v1, "t_64":J
    const/4 v15, 0x1

    if-ne v0, v15, :cond_5

    .line 792
    add-long v13, v18, v1

    goto :goto_5

    .line 796
    :cond_5
    sub-long v13, v18, v1

    .line 798
    :goto_5
    neg-long v2, v1

    .line 799
    .end local v1    # "t_64":J
    .end local v18    # "r1_64":J
    .restart local v2    # "r1_64":J
    move-object/from16 v1, p1

    const/4 v15, 0x1

    goto :goto_3

    .line 801
    :cond_6
    return-object v6

    .line 745
    .end local v2    # "r1_64":J
    .end local v13    # "r0_64":J
    .end local v16    # "norm":Ljava/math/BigInteger;
    .restart local v3    # "norm":Ljava/math/BigInteger;
    :cond_7
    move-object/from16 v16, v3

    .line 747
    .end local v3    # "norm":Ljava/math/BigInteger;
    .restart local v16    # "norm":Ljava/math/BigInteger;
    :goto_6
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 749
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    mul-int v2, v2, p3

    add-int/2addr v1, v2

    .line 750
    .local v1, "uVal":I
    and-int v2, v1, v8

    .line 752
    .local v2, "alphaPos":I
    shl-int v3, v1, v9

    shr-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v6, v12

    .line 753
    aget-object v3, p4, v2

    iget-object v3, v3, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 754
    aget-object v3, p4, v2

    iget-object v3, v3, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 757
    .end local v1    # "uVal":I
    .end local v2    # "alphaPos":I
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 759
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 760
    .local v1, "t":Ljava/math/BigInteger;
    if-ne v0, v15, :cond_9

    .line 762
    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v10, v2

    .end local v10    # "R0":Ljava/math/BigInteger;
    .local v2, "R0":Ljava/math/BigInteger;
    goto :goto_7

    .line 766
    .end local v2    # "R0":Ljava/math/BigInteger;
    .restart local v10    # "R0":Ljava/math/BigInteger;
    :cond_9
    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v10, v2

    .line 768
    :goto_7
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v11

    .line 769
    .end local v1    # "t":Ljava/math/BigInteger;
    move-object/from16 v1, p1

    move-object/from16 v3, v16

    const/4 v2, 0x1

    goto/16 :goto_2
.end method
