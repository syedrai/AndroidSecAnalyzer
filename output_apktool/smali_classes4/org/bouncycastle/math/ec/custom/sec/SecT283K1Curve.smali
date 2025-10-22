.class public Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;
.super Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
.source "SecT283K1Curve.java"


# static fields
.field private static final SECT283K1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

.field private static final SECT283K1_DEFAULT_COORDS:I = 0x6


# instance fields
.field protected infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Point;


# direct methods
.method static bridge synthetic -$$Nest$sfgetSECT283K1_AFFINE_ZS()[Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;->SECT283K1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ECFieldElement;

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT283FieldElement;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283FieldElement;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;->SECT283K1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 26
    const/4 v0, 0x7

    const/16 v1, 0xc

    const/16 v2, 0x11b

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 28
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Point;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Point;

    .line 30
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 31
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 32
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;->order:Ljava/math/BigInteger;

    .line 33
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;->cofactor:Ljava/math/BigInteger;

    .line 35
    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;->coord:I

    .line 36
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    .line 40
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;-><init>()V

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

    .line 116
    const/4 v0, 0x5

    .line 118
    .local v0, "FE_LONGS":I
    mul-int/lit8 v1, p3, 0x5

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [J

    .line 120
    .local v1, "table":[J
    const/4 v2, 0x0

    .line 121
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 123
    add-int v4, p2, v3

    aget-object v4, p1, v4

    .line 124
    .local v4, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v2}, Lorg/bouncycastle/math/raw/Nat320;->copy64([JI[JI)V

    add-int/lit8 v2, v2, 0x5

    .line 125
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v5, v6, v1, v2}, Lorg/bouncycastle/math/raw/Nat320;->copy64([JI[JI)V

    .end local v4    # "p":Lorg/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v2, v2, 0x5

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "pos":I
    .end local v3    # "i":I
    :cond_0
    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve$1;

    invoke-direct {v2, p0, p3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve$1;-><init>(Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;I[J)V

    return-object v2
.end method

.method protected createDefaultMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .line 56
    new-instance v0, Lorg/bouncycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;-><init>()V

    return-object v0
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

    .line 71
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Point;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

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

    .line 76
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

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

    .line 66
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 61
    const/16 v0, 0x11b

    return v0
.end method

.method public getInfinity()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT283K1Point;

    return-object v0
.end method

.method public getK1()I
    .locals 1

    .line 101
    const/4 v0, 0x5

    return v0
.end method

.method public getK2()I
    .locals 1

    .line 106
    const/4 v0, 0x7

    return v0
.end method

.method public getK3()I
    .locals 1

    .line 111
    const/16 v0, 0xc

    return v0
.end method

.method public getM()I
    .locals 1

    .line 91
    const/16 v0, 0x11b

    return v0
.end method

.method public isKoblitz()Z
    .locals 1

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public isTrinomial()Z
    .locals 1

    .line 96
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

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 48
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
