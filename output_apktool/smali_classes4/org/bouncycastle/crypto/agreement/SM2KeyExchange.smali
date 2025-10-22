.class public Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;
.super Ljava/lang/Object;
.source "SM2KeyExchange.java"


# instance fields
.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

.field private ephemeralKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private ephemeralPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

.field private initiator:Z

.field private staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private staticPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

.field private userID:[B

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 45
    return-void
.end method

.method private S1(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B
    .locals 2
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "u"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p3, "inner"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "u",
            "inner"
        }
    .end annotation

    .line 233
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 234
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 235
    const/4 v0, 0x0

    array-length v1, p3

    invoke-interface {p1, p3, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 237
    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digestDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method private S2(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B
    .locals 2
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "u"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p3, "inner"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "u",
            "inner"
        }
    .end annotation

    .line 255
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 256
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 257
    const/4 v0, 0x0

    array-length v1, p3

    invoke-interface {p1, p3, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 259
    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digestDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method private addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 3
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "v"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digest",
            "v"
        }
    .end annotation

    .line 287
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v0

    .line 288
    .local v0, "p":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 289
    return-void
.end method

.method private addUserID(Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 3
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "userID"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digest",
            "userID"
        }
    .end annotation

    .line 278
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    .line 280
    .local v0, "len":I
    ushr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 281
    int-to-byte v1, v0

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 282
    const/4 v1, 0x0

    array-length v2, p2

    invoke-interface {p1, p2, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 283
    return-void
.end method

.method private calculateInnerHash(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B[BLorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)[B
    .locals 2
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "u"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p3, "za"    # [B
    .param p4, "zb"    # [B
    .param p5, "p1"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p6, "p2"    # Lorg/bouncycastle/math/ec/ECPoint;
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
            "digest",
            "u",
            "za",
            "zb",
            "p1",
            "p2"
        }
    .end annotation

    .line 242
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 243
    array-length v0, p3

    const/4 v1, 0x0

    invoke-interface {p1, p3, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 244
    array-length v0, p4

    invoke-interface {p1, p4, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 245
    invoke-virtual {p5}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 246
    invoke-virtual {p5}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 247
    invoke-virtual {p6}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 248
    invoke-virtual {p6}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 250
    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digestDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method private calculateU(Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 9
    .param p1, "otherPub"    # Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherPub"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 165
    .local v0, "params":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 166
    .local v1, "p1":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 168
    .local v2, "p2":Lorg/bouncycastle/math/ec/ECPoint;
    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->reduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 169
    .local v3, "x1":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->reduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 170
    .local v4, "x2":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 171
    .local v5, "tA":Ljava/math/BigInteger;
    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 172
    .local v6, "k1":Ljava/math/BigInteger;
    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 174
    .local v7, "k2":Ljava/math/BigInteger;
    invoke-static {v1, v6, v2, v7}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    return-object v8
.end method

.method private digestDoFinal()[B
    .locals 3

    .line 293
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 294
    .local v0, "result":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 295
    return-object v0
.end method

.method private getZ(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/ECPoint;)[B
    .locals 1
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "userID"    # [B
    .param p3, "pubPoint"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "userID",
            "pubPoint"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addUserID(Lorg/bouncycastle/crypto/Digest;[B)V

    .line 266
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 267
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 268
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 269
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 270
    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 271
    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 273
    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digestDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method private kdf(Lorg/bouncycastle/math/ec/ECPoint;[B[BI)[B
    .locals 11
    .param p1, "u"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "za"    # [B
    .param p3, "zb"    # [B
    .param p4, "klen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "za",
            "zb",
            "klen"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 180
    .local v0, "digestSize":I
    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    .line 181
    .local v2, "buf":[B
    add-int/lit8 v3, p4, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    .line 182
    .local v3, "rv":[B
    const/4 v4, 0x0

    .line 184
    .local v4, "off":I
    const/4 v5, 0x0

    .line 185
    .local v5, "memo":Lorg/bouncycastle/util/Memoable;
    const/4 v6, 0x0

    .line 187
    .local v6, "copy":Lorg/bouncycastle/util/Memoable;
    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    instance-of v7, v7, Lorg/bouncycastle/util/Memoable;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 189
    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 190
    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 191
    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v9, p2

    invoke-interface {v7, p2, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 192
    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v9, p3

    invoke-interface {v7, p3, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 193
    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object v5, v7

    check-cast v5, Lorg/bouncycastle/util/Memoable;

    .line 194
    invoke-interface {v5}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v6

    .line 197
    :cond_0
    const/4 v7, 0x0

    .line 199
    .local v7, "ct":I
    :goto_0
    array-length v9, v3

    if-ge v4, v9, :cond_2

    .line 201
    if-eqz v5, :cond_1

    .line 203
    invoke-interface {v5, v6}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    goto :goto_1

    .line 207
    :cond_1
    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 208
    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 209
    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v10, p2

    invoke-interface {v9, p2, v8, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 210
    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v10, p3

    invoke-interface {v9, p3, v8, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 213
    :goto_1
    add-int/lit8 v7, v7, 0x1

    invoke-static {v7, v2, v8}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 214
    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v9, v2, v8, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 215
    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v9, v2, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 217
    array-length v9, v3

    sub-int/2addr v9, v4

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 218
    .local v9, "copyLen":I
    invoke-static {v2, v8, v3, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    add-int/2addr v4, v9

    .line 220
    .end local v9    # "copyLen":I
    goto :goto_0

    .line 222
    :cond_2
    return-object v3
.end method

.method private reduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 228
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->w:I

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->w:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public calculateKey(ILorg/bouncycastle/crypto/CipherParameters;)[B
    .locals 6
    .param p1, "kLen"    # I
    .param p2, "pubParam"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kLen",
            "pubParam"
        }
    .end annotation

    .line 80
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithID;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;

    .line 83
    .local v0, "otherPub":Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object v1

    .local v1, "otherUserID":[B
    goto :goto_0

    .line 87
    .end local v0    # "otherPub":Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;
    .end local v1    # "otherUserID":[B
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;

    .line 88
    .restart local v0    # "otherPub":Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 91
    .restart local v1    # "otherUserID":[B
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v2

    .line 92
    .local v2, "za":[B
    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-direct {p0, v3, v1, v4}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v3

    .line 94
    .local v3, "zb":[B
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->calculateU(Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 97
    .local v4, "U":Lorg/bouncycastle/math/ec/ECPoint;
    iget-boolean v5, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    if-eqz v5, :cond_1

    .line 99
    invoke-direct {p0, v4, v2, v3, p1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/bouncycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v5

    .local v5, "rv":[B
    goto :goto_1

    .line 103
    .end local v5    # "rv":[B
    :cond_1
    invoke-direct {p0, v4, v3, v2, p1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/bouncycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v5

    .line 106
    .restart local v5    # "rv":[B
    :goto_1
    return-object v5
.end method

.method public calculateKeyWithConfirmation(I[BLorg/bouncycastle/crypto/CipherParameters;)[[B
    .locals 18
    .param p1, "kLen"    # I
    .param p2, "confirmationTag"    # [B
    .param p3, "pubParam"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "kLen",
            "confirmationTag",
            "pubParam"
        }
    .end annotation

    .line 114
    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    instance-of v1, v9, Lorg/bouncycastle/crypto/params/ParametersWithID;

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 116
    move-object v1, v9

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;

    .line 117
    .local v1, "otherPub":Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;
    move-object v2, v9

    check-cast v2, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object v2

    move-object v11, v1

    move-object v12, v2

    .local v2, "otherUserID":[B
    goto :goto_0

    .line 121
    .end local v1    # "otherPub":Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;
    .end local v2    # "otherUserID":[B
    :cond_0
    move-object v1, v9

    check-cast v1, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;

    .line 122
    .restart local v1    # "otherPub":Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;
    new-array v2, v10, [B

    move-object v11, v1

    move-object v12, v2

    .line 125
    .end local v1    # "otherPub":Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;
    .local v11, "otherPub":Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;
    .local v12, "otherUserID":[B
    :goto_0
    iget-boolean v1, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    if-eqz v1, :cond_2

    if-eqz v8, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "if initiating, confirmationTag must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_2
    :goto_1
    iget-object v1, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    iget-object v3, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v3

    .line 131
    .local v3, "za":[B
    iget-object v1, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v11}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-direct {v0, v1, v12, v2}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v4

    .line 133
    .local v4, "zb":[B
    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->calculateU(Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 136
    .local v2, "U":Lorg/bouncycastle/math/ec/ECPoint;
    iget-boolean v1, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v1, :cond_4

    .line 138
    invoke-direct {v0, v2, v3, v4, v7}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/bouncycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v15

    .line 140
    .local v15, "rv":[B
    iget-object v1, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v11}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->calculateInnerHash(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B[BLorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v1

    .line 142
    .local v1, "inner":[B
    iget-object v5, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v5, v2, v1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->S1(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object v5

    .line 144
    .local v5, "s1":[B
    invoke-static {v5, v8}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 149
    iget-object v6, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v6, v2, v1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->S2(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object v6

    new-array v13, v13, [[B

    aput-object v15, v13, v10

    aput-object v6, v13, v14

    return-object v13

    .line 146
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v10, "confirmation tag mismatch"

    invoke-direct {v6, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 153
    .end local v1    # "inner":[B
    .end local v5    # "s1":[B
    .end local v15    # "rv":[B
    :cond_4
    invoke-direct {v0, v2, v4, v3, v7}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/bouncycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v15

    .line 155
    .restart local v15    # "rv":[B
    iget-object v1, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v11}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    move-object/from16 v17, v4

    move-object v4, v3

    move-object/from16 v3, v17

    .local v3, "zb":[B
    .local v4, "za":[B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->calculateInnerHash(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B[BLorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v1

    .line 157
    move-object/from16 v17, v4

    move-object v4, v3

    move-object/from16 v3, v17

    .restart local v1    # "inner":[B
    .local v3, "za":[B
    .local v4, "zb":[B
    iget-object v5, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v5, v2, v1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->S1(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v6, v2, v1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->S2(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object v6

    const/16 v16, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [[B

    aput-object v15, v10, v16

    aput-object v5, v10, v14

    aput-object v6, v10, v13

    return-object v10
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "privParam"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privParam"
        }
    .end annotation

    .line 52
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithID;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;

    .line 55
    .local v0, "baseParam":Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    goto :goto_0

    .line 59
    .end local v0    # "baseParam":Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;

    .line 60
    .restart local v0    # "baseParam":Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    .line 63
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->isInitiator()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    .line 64
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 65
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->getEphemeralPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 66
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 67
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->getStaticPublicPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    .line 68
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->getEphemeralPublicPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    .line 70
    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->w:I

    .line 72
    const-string v1, "SM2KE"

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/agreement/Utils;->getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECKeyParameters;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 73
    return-void
.end method
