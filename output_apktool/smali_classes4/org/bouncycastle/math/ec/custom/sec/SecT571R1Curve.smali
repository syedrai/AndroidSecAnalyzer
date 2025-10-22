.class public Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;
.super Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
.source "SecT571R1Curve.java"


# static fields
.field private static final SECT571R1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

.field private static final SECT571R1_DEFAULT_COORDS:I = 0x6

.field static final SecT571R1_B:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

.field static final SecT571R1_B_SQRT:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;


# instance fields
.field protected infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;


# direct methods
.method static bridge synthetic -$$Nest$sfgetSECT571R1_AFFINE_ZS()[Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SECT571R1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 18
    const/4 v0, 0x1

    new-array v1, v0, [Lorg/bouncycastle/math/ec/ECFieldElement;

    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>(Ljava/math/BigInteger;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SECT571R1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 22
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    new-instance v2, Ljava/math/BigInteger;

    .line 23
    const-string v3, "02F40E7E2221F295DE297117B7F3D62F5C6A97FFCB8CEFF1CD6BA8CE4A9A18AD84FFABBD8EFA59332BE7AD6756A66E294AFD185A78FF12AA520E4DE739BACA0C7FFEFF7F2955727A"

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>(Ljava/math/BigInteger;)V

    sput-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 24
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 28
    const/4 v0, 0x5

    const/16 v1, 0xa

    const/16 v2, 0x23b

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 30
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    .line 32
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 33
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 34
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE661CE18FF55987308059B186823851EC7DD9CA1161DE93D5174D66E8382E9BB2FE84E47"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->order:Ljava/math/BigInteger;

    .line 35
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->cofactor:Ljava/math/BigInteger;

    .line 37
    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->coord:I

    .line 38
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    .line 42
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;-><init>()V

    return-object v0
.end method

.method public createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
    .locals 7
    .param p1, "points"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "points",
            "off",
            "len"
        }
    .end annotation

    .line 113
    const/16 v0, 0x9

    .line 115
    .local v0, "FE_LONGS":I
    mul-int/lit8 v1, p3, 0x9

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [J

    .line 117
    .local v1, "table":[J
    const/4 v2, 0x0

    .line 118
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 120
    add-int v4, p2, v3

    aget-object v4, p1, v4

    .line 121
    .local v4, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v2}, Lorg/bouncycastle/math/raw/Nat576;->copy64([JI[JI)V

    add-int/lit8 v2, v2, 0x9

    .line 122
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v5, v6, v1, v2}, Lorg/bouncycastle/math/raw/Nat576;->copy64([JI[JI)V

    .end local v4    # "p":Lorg/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v2, v2, 0x9

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "pos":I
    .end local v3    # "i":I
    :cond_0
    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve$1;

    invoke-direct {v2, p0, p3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve$1;-><init>(Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;I[J)V

    return-object v2
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "zs"
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 58
    const/16 v0, 0x23b

    return v0
.end method

.method public getInfinity()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    return-object v0
.end method

.method public getK1()I
    .locals 1

    .line 98
    const/4 v0, 0x2

    return v0
.end method

.method public getK2()I
    .locals 1

    .line 103
    const/4 v0, 0x5

    return v0
.end method

.method public getK3()I
    .locals 1

    .line 108
    const/16 v0, 0xa

    return v0
.end method

.method public getM()I
    .locals 1

    .line 88
    const/16 v0, 0x23b

    return v0
.end method

.method public isKoblitz()Z
    .locals 1

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isTrinomial()Z
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coord"
        }
    .end annotation

    .line 47
    packed-switch p1, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    return v0

    .line 50
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
