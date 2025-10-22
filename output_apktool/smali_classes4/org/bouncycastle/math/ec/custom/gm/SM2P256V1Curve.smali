.class public Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;
.super Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;
.source "SM2P256V1Curve.java"


# static fields
.field private static final SM2P256V1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

.field private static final SM2P256V1_DEFAULT_COORDS:I = 0x2

.field public static final q:Ljava/math/BigInteger;


# instance fields
.field protected infinity:Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Point;


# direct methods
.method static bridge synthetic -$$Nest$sfgetSM2P256V1_AFFINE_ZS()[Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->SM2P256V1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    sget-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;->Q:Ljava/math/BigInteger;

    sput-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->q:Ljava/math/BigInteger;

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ECFieldElement;

    new-instance v1, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->SM2P256V1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    sget-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->q:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 28
    new-instance v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Point;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Point;

    .line 30
    new-instance v0, Ljava/math/BigInteger;

    .line 31
    const-string v1, "FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 30
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 32
    new-instance v0, Ljava/math/BigInteger;

    .line 33
    const-string v1, "28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 32
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 34
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->order:Ljava/math/BigInteger;

    .line 35
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->cofactor:Ljava/math/BigInteger;

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->coord:I

    .line 38
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    .line 42
    new-instance v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;-><init>()V

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

    .line 88
    const/16 v0, 0x8

    .line 90
    .local v0, "FE_INTS":I
    mul-int/lit8 v1, p3, 0x8

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 92
    .local v1, "table":[I
    const/4 v2, 0x0

    .line 93
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 95
    add-int v4, p2, v3

    aget-object v4, p1, v4

    .line 96
    .local v4, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v2}, Lorg/bouncycastle/math/raw/Nat256;->copy([II[II)V

    add-int/lit8 v2, v2, 0x8

    .line 97
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v5, v6, v1, v2}, Lorg/bouncycastle/math/raw/Nat256;->copy([II[II)V

    .end local v4    # "p":Lorg/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v2, v2, 0x8

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "pos":I
    .end local v3    # "i":I
    :cond_0
    new-instance v2, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve$1;

    invoke-direct {v2, p0, p3, v1}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve$1;-><init>(Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;I[I)V

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

    .line 73
    new-instance v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Point;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

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

    .line 78
    new-instance v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

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

    .line 68
    new-instance v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v0, p1}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 63
    sget-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getInfinity()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Point;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 58
    sget-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Curve;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public randomFieldElement(Ljava/security/SecureRandom;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "r"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 152
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 153
    .local v0, "x":[I
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 154
    new-instance v1, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public randomFieldElementMult(Ljava/security/SecureRandom;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "r"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 159
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 160
    .local v0, "x":[I
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->randomMult(Ljava/security/SecureRandom;[I)V

    .line 161
    new-instance v1, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>([I)V

    return-object v1
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
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
