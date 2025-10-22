.class Lorg/bouncycastle/asn1/sec/SECNamedCurves$8;
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

    .line 265
    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 17

    .line 269
    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    .line 270
    .local v2, "p":Ljava/math/BigInteger;
    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 271
    .local v3, "a":Ljava/math/BigInteger;
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 272
    .local v4, "b":Ljava/math/BigInteger;
    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8D"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    .line 273
    .local v5, "n":Ljava/math/BigInteger;
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 275
    .local v6, "h":Ljava/math/BigInteger;
    new-instance v0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v7, "bb85691939b869c1d087f601554b96b80cb4f55b35f433c2"

    const/16 v8, 0x10

    invoke-direct {v1, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v9, "3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1"

    invoke-direct {v7, v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/math/BigInteger;

    new-instance v12, Ljava/math/BigInteger;

    const-string v13, "71169be7330b3038edb025f1"

    invoke-direct {v12, v13, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v14, 0x0

    aput-object v12, v11, v14

    new-instance v12, Ljava/math/BigInteger;

    const-string v15, "-b3fb3400dec5c4adceb8655c"

    invoke-direct {v12, v15, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v15, 0x1

    aput-object v12, v11, v15

    new-array v12, v9, [Ljava/math/BigInteger;

    new-instance v9, Ljava/math/BigInteger;

    const/16 v16, 0x0

    const-string v14, "12511cfe811d0f4e6bc688b4d"

    invoke-direct {v9, v14, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v12, v16

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v13, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v9, v12, v15

    new-instance v13, Ljava/math/BigInteger;

    const-string v9, "71169be7330b3038edb025f1d0f9"

    invoke-direct {v13, v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljava/math/BigInteger;

    const-string v9, "b3fb3400dec5c4adceb8655d4c94"

    invoke-direct {v14, v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v15, 0xd0

    invoke-direct/range {v10 .. v15}, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v7, v10}, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;)V

    .line 289
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

    .line 294
    const/4 v5, 0x0

    .line 295
    .local v5, "S":[B
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves$8;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 297
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    const-string v0, "04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    .line 300
    .local v2, "G":Lorg/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v0, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
