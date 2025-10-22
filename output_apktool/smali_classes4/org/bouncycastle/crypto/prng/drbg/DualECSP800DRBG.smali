.class public Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;
.super Ljava/lang/Object;
.source "DualECSP800DRBG.java"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final MAX_ADDITIONAL_INPUT:I = 0x1000

.field private static final MAX_ENTROPY_LENGTH:I = 0x1000

.field private static final MAX_PERSONALIZATION_STRING:I = 0x1000

.field private static final RESEED_MAX:J = 0x80000000L

.field private static final nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

.field private static final p256_Px:Ljava/math/BigInteger;

.field private static final p256_Py:Ljava/math/BigInteger;

.field private static final p256_Qx:Ljava/math/BigInteger;

.field private static final p256_Qy:Ljava/math/BigInteger;

.field private static final p384_Px:Ljava/math/BigInteger;

.field private static final p384_Py:Ljava/math/BigInteger;

.field private static final p384_Qx:Ljava/math/BigInteger;

.field private static final p384_Qy:Ljava/math/BigInteger;

.field private static final p521_Px:Ljava/math/BigInteger;

.field private static final p521_Py:Ljava/math/BigInteger;

.field private static final p521_Qx:Ljava/math/BigInteger;

.field private static final p521_Qy:Ljava/math/BigInteger;


# instance fields
.field private _P:Lorg/bouncycastle/math/ec/ECPoint;

.field private _Q:Lorg/bouncycastle/math/ec/ECPoint;

.field private _curve:Lorg/bouncycastle/math/ec/ECCurve$Fp;

.field private _digest:Lorg/bouncycastle/crypto/Digest;

.field private _entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private _fixedPointMultiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

.field private _outlen:I

.field private _reseedCounter:J

.field private _s:[B

.field private _sLength:I

.field private _securityStrength:I

.field private _seedlen:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Px:Ljava/math/BigInteger;

    .line 25
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Py:Ljava/math/BigInteger;

    .line 26
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "c97445f45cdef9f0d3e05e1e585fc297235b82b5be8ff3efca67c59852018192"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qx:Ljava/math/BigInteger;

    .line 27
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "b28ef557ba31dfcbdd21ac46e2a91e3c304f44cb87058ada2cb815151e610046"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qy:Ljava/math/BigInteger;

    .line 29
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Px:Ljava/math/BigInteger;

    .line 30
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Py:Ljava/math/BigInteger;

    .line 31
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8e722de3125bddb05580164bfe20b8b432216a62926c57502ceede31c47816edd1e89769124179d0b695106428815065"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qx:Ljava/math/BigInteger;

    .line 32
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "023b1660dd701d0839fd45eec36f9ee7b32e13b315dc02610aa1b636e346df671f790f84c5e09b05674dbb7e45c803dd"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qy:Ljava/math/BigInteger;

    .line 34
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Px:Ljava/math/BigInteger;

    .line 35
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Py:Ljava/math/BigInteger;

    .line 36
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1b9fa3e518d683c6b65763694ac8efbaec6fab44f2276171a42726507dd08add4c3b3f4c1ebc5b1222ddba077f722943b24c3edfa0f85fe24d0c8c01591f0be6f63"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qx:Ljava/math/BigInteger;

    .line 37
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1f3bdba585295d9a1110d1df1f9430ef8442c5018976ff3437ef91b81dc0b8132c8d5c39c32d0e004a3092b7d327c0e7a4d26d2c7b69b58f9066652911e457779de"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qy:Ljava/math/BigInteger;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    .line 45
    const-string v0, "P-256"

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByNameLazy(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    .line 47
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve$Fp;
    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    new-instance v2, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    sget-object v3, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Px:Ljava/math/BigInteger;

    sget-object v4, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Py:Ljava/math/BigInteger;

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qx:Ljava/math/BigInteger;

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p256_Qy:Ljava/math/BigInteger;

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    const/16 v5, 0x80

    const/4 v6, 0x1

    invoke-direct {v2, v5, v3, v4, v6}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;-><init>(ILorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 49
    const-string v1, "P-384"

    invoke-static {v1}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByNameLazy(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    .line 51
    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    new-instance v2, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    sget-object v3, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Px:Ljava/math/BigInteger;

    sget-object v4, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Py:Ljava/math/BigInteger;

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qx:Ljava/math/BigInteger;

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p384_Qy:Ljava/math/BigInteger;

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    const/16 v5, 0xc0

    invoke-direct {v2, v5, v3, v4, v6}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;-><init>(ILorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;I)V

    aput-object v2, v1, v6

    .line 53
    const-string v1, "P-521"

    invoke-static {v1}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByNameLazy(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    .line 55
    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    new-instance v2, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    sget-object v3, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Px:Ljava/math/BigInteger;

    sget-object v4, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Py:Ljava/math/BigInteger;

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qx:Ljava/math/BigInteger;

    sget-object v5, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->p521_Qy:Ljava/math/BigInteger;

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    const/16 v5, 0x100

    invoke-direct {v2, v5, v3, v4, v6}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;-><init>(ILorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 56
    .end local v0    # "curve":Lorg/bouncycastle/math/ec/ECCurve$Fp;
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .locals 7
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "securityStrength"    # I
    .param p3, "entropySource"    # Lorg/bouncycastle/crypto/prng/EntropySource;
    .param p4, "personalizationString"    # [B
    .param p5, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "securityStrength",
            "entropySource",
            "personalizationString",
            "nonce"
        }
    .end annotation

    .line 90
    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->nistPoints:[Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "digest":Lorg/bouncycastle/crypto/Digest;
    .end local p2    # "securityStrength":I
    .end local p3    # "entropySource":Lorg/bouncycastle/crypto/prng/EntropySource;
    .end local p4    # "personalizationString":[B
    .end local p5    # "nonce":[B
    .local v2, "digest":Lorg/bouncycastle/crypto/Digest;
    .local v3, "securityStrength":I
    .local v4, "entropySource":Lorg/bouncycastle/crypto/prng/EntropySource;
    .local v5, "personalizationString":[B
    .local v6, "nonce":[B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;-><init>([Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V

    .line 91
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .locals 5
    .param p1, "pointSet"    # [Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "securityStrength"    # I
    .param p4, "entropySource"    # Lorg/bouncycastle/crypto/prng/EntropySource;
    .param p5, "personalizationString"    # [B
    .param p6, "nonce"    # [B
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
            "pointSet",
            "digest",
            "securityStrength",
            "entropySource",
            "personalizationString",
            "nonce"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_fixedPointMultiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    .line 107
    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    .line 108
    iput-object p4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    .line 109
    iput p3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_securityStrength:I

    .line 111
    const/16 v0, 0x200

    invoke-static {p5, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-nez v0, :cond_5

    .line 116
    invoke-interface {p4}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-lt v0, p3, :cond_4

    invoke-interface {p4}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_4

    .line 121
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getEntropy()[B

    move-result-object v0

    .line 122
    .local v0, "entropy":[B
    invoke-static {v0, p6, p5}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    .line 124
    .local v1, "seedMaterial":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_2

    .line 126
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getSecurityStrength()I

    move-result v3

    if-gt p3, v3, :cond_1

    .line 128
    invoke-static {p2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/Digest;)I

    move-result v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getSecurityStrength()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 132
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getSeedLen()I

    move-result v3

    iput v3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    .line 133
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getMaxOutlen()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    iput v3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    .line 134
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getP()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    .line 135
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/prng/drbg/DualECPoints;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_Q:Lorg/bouncycastle/math/ec/ECPoint;

    .line 136
    goto :goto_1

    .line 130
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Requested security strength is not supported by digest"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "i":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    if-eqz v2, :cond_3

    .line 145
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    .line 146
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    array-length v2, v2

    iput v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_sLength:I

    .line 148
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    .line 149
    return-void

    .line 142
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security strength cannot be greater than 256 bits"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    .end local v0    # "entropy":[B
    .end local v1    # "seedMaterial":[B
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EntropySource must provide between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and 4096 bits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Personalization string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEntropy()[B
    .locals 3

    .line 280
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    .line 281
    .local v0, "entropy":[B
    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_securityStrength:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_0

    .line 285
    return-object v0

    .line 283
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Insufficient entropy provided by entropy source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "s"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "s"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_fixedPointMultiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private pad8([BI)[B
    .locals 6
    .param p1, "s"    # [B
    .param p2, "seedlen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "seedlen"
        }
    .end annotation

    .line 308
    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    .line 310
    return-object p1

    .line 313
    :cond_0
    rem-int/lit8 v0, p2, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 314
    .local v0, "shift":I
    const/4 v1, 0x0

    .line 316
    .local v1, "carry":I
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 318
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 319
    .local v3, "b":I
    shl-int v4, v3, v0

    rsub-int/lit8 v5, v0, 0x8

    shr-int v5, v1, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 320
    move v1, v3

    .line 316
    .end local v3    # "b":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 323
    .end local v2    # "i":I
    :cond_1
    return-object p1
.end method

.method private xor([B[B)[B
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 290
    if-nez p2, :cond_0

    .line 292
    return-object p1

    .line 295
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    .line 297
    .local v0, "rv":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 299
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public generate([B[BZ)I
    .locals 11
    .param p1, "output"    # [B
    .param p2, "additionalInput"    # [B
    .param p3, "predictionResistant"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "additionalInput",
            "predictionResistant"
        }
    .end annotation

    .line 172
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 173
    .local v0, "numberOfBits":I
    array-length v1, p1

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    div-int/2addr v1, v2

    .line 175
    .local v1, "m":I
    const/16 v2, 0x200

    invoke-static {p2, v2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v2

    if-nez v2, :cond_7

    .line 180
    iget-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide v4, 0x80000000L

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 182
    const/4 v2, -0x1

    return v2

    .line 185
    :cond_0
    if-eqz p3, :cond_1

    .line 187
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->reseed([B)V

    .line 188
    const/4 p2, 0x0

    .line 193
    :cond_1
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 196
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-static {v3, p2, v4}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object p2

    .line 197
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    invoke-direct {p0, v4, p2}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->xor([B[B)[B

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .local v3, "s":Ljava/math/BigInteger;
    goto :goto_0

    .line 201
    .end local v3    # "s":Ljava/math/BigInteger;
    :cond_2
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    invoke-direct {v3, v2, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 205
    .restart local v3    # "s":Ljava/math/BigInteger;
    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 207
    const/4 v4, 0x0

    .line 209
    .local v4, "outOffset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const-wide/16 v6, 0x1

    if-ge v5, v1, :cond_4

    .line 211
    iget-object v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v8, v3}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 215
    iget-object v8, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_Q:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v8, v3}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    .line 217
    .local v8, "r":[B
    array-length v9, v8

    iget v10, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    if-le v9, v10, :cond_3

    .line 219
    array-length v9, v8

    iget v10, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    invoke-static {v8, v9, p1, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 223
    :cond_3
    iget v9, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    array-length v10, v8

    sub-int/2addr v9, v10

    add-int/2addr v9, v4

    array-length v10, v8

    invoke-static {v8, v2, p1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :goto_2
    iget v9, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    add-int/2addr v4, v9

    .line 229
    iget-wide v9, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    add-long/2addr v9, v6

    iput-wide v9, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    .line 209
    .end local v8    # "r":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 232
    .end local v5    # "i":I
    :cond_4
    array-length v5, p1

    if-ge v4, v5, :cond_6

    .line 234
    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v5, v3}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 236
    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_Q:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v5, v3}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 238
    .local v5, "r":[B
    array-length v8, p1

    sub-int/2addr v8, v4

    .line 240
    .local v8, "required":I
    array-length v9, v5

    iget v10, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    if-le v9, v10, :cond_5

    .line 242
    array-length v2, v5

    iget v9, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    sub-int/2addr v2, v9

    invoke-static {v5, v2, p1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 246
    :cond_5
    iget v9, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    array-length v10, v5

    sub-int/2addr v9, v10

    add-int/2addr v9, v4

    invoke-static {v5, v2, p1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    :goto_3
    iget-wide v9, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    add-long/2addr v9, v6

    iput-wide v9, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    .line 253
    .end local v5    # "r":[B
    .end local v8    # "required":I
    :cond_6
    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_sLength:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_P:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v5, v3}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getScalarMultipleXCoord(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    .line 255
    return v0

    .line 177
    .end local v3    # "s":Ljava/math/BigInteger;
    .end local v4    # "outOffset":I
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Additional input too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getBlockSize()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_outlen:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 4
    .param p1, "additionalInput"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additionalInput"
        }
    .end annotation

    .line 265
    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->getEntropy()[B

    move-result-object v0

    .line 271
    .local v0, "entropy":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->pad8([BI)[B

    move-result-object v1

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    .line 273
    .local v1, "seedMaterial":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_seedlen:I

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_s:[B

    .line 275
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/DualECSP800DRBG;->_reseedCounter:J

    .line 276
    return-void

    .line 267
    .end local v0    # "entropy":[B
    .end local v1    # "seedMaterial":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Additional input string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
