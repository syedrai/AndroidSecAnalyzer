.class Lorg/bouncycastle/asn1/sec/SECNamedCurves$12;
.super Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/sec/SECNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 17

    .line 413
    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    .line 414
    .local v2, "p":Ljava/math/BigInteger;
    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 415
    .local v3, "a":Ljava/math/BigInteger;
    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 416
    .local v4, "b":Ljava/math/BigInteger;
    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    .line 417
    .local v5, "n":Ljava/math/BigInteger;
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 419
    .local v6, "h":Ljava/math/BigInteger;
    new-instance v0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v7, "7ae96a2b657c07106e64479eac3434e99cf0497512f58995c1396c28719501ee"

    const/16 v8, 0x10

    invoke-direct {v1, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v9, "5363ad4cc05c30e0a5261c028812645a122e22ea20816678df02967c1b23bd72"

    invoke-direct {v7, v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/math/BigInteger;

    new-instance v12, Ljava/math/BigInteger;

    const-string v13, "3086d221a7d46bcde86c90e49284eb15"

    invoke-direct {v12, v13, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v14, 0x0

    aput-object v12, v11, v14

    new-instance v12, Ljava/math/BigInteger;

    const-string v15, "-e4437ed6010e88286f547fa90abfe4c3"

    invoke-direct {v12, v15, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v15, 0x1

    aput-object v12, v11, v15

    new-array v12, v9, [Ljava/math/BigInteger;

    new-instance v9, Ljava/math/BigInteger;

    const/16 v16, 0x0

    const-string v14, "114ca50f7a8e2f3f657c1108d9d44cfd8"

    invoke-direct {v9, v14, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v12, v16

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v13, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v12, v15

    new-instance v13, Ljava/math/BigInteger;

    const-string v9, "3086d221a7d46bcde86c90e49284eb153dab"

    invoke-direct {v13, v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljava/math/BigInteger;

    const-string v9, "e4437ed6010e88286f547fa90abfe4c42212"

    invoke-direct {v14, v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v15, 0x110

    invoke-direct/range {v10 .. v15}, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v7, v10}, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;)V

    .line 433
    .local v0, "glv":Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v1, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureCurveGLV(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    return-object v1
.end method

.method protected createParameters()Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 6

    .line 438
    const/4 v5, 0x0

    .line 439
    .local v5, "S":[B
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$12;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 441
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    const-string v0, "0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    .line 444
    .local v2, "G":Lorg/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v0, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
