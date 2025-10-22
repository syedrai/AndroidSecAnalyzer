.class Lorg/bouncycastle/asn1/x9/X962NamedCurves$19;
.super Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "X962NamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/x9/X962NamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 519
    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 10

    .line 522
    const-string v0, "0100FAF51354E0E39E4892DF6E319C72C8161603FA45AA7B998A167B8F1E629521"

    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    .line 523
    .local v8, "n":Ljava/math/BigInteger;
    const-wide/32 v0, 0xff06

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 525
    .local v9, "h":Ljava/math/BigInteger;
    new-instance v1, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    .line 528
    const-string v0, "91A091F03B5FBA4AB2CCF49C4EDD220FB028712D42BE752B2C40094DBACDB586FB20"

    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    .line 529
    const-string v0, "7167EFC92BB2E3CE7C8AAAFF34E12A9C557003D7C73A6FAF003F99F6CC8482E540F7"

    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const/16 v2, 0x110

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/16 v5, 0x38

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 525
    invoke-static {v1}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smconfigureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method protected createParameters()Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 6

    .line 535
    const/4 v5, 0x0

    .line 536
    .local v5, "S":[B
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves$19;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 538
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    const-string v0, "026108BABB2CEEBCF787058A056CBE0CFE622D7723A289E08A07AE13EF0D10D171DD8D"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smconfigureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    .line 541
    .local v2, "G":Lorg/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v0, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
