.class Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$9;
.super Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "TeleTrusTNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 8

    .line 255
    const-string v0, "D35E472036BC4FB7E13C785ED201E065F98FCFA5B68F12A32D482EC7EE8658E98691555B44C59311"

    invoke-static {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    .line 256
    .local v5, "n":Ljava/math/BigInteger;
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 258
    .local v6, "h":Ljava/math/BigInteger;
    new-instance v1, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    .line 259
    const-string v0, "D35E472036BC4FB7E13C785ED201E065F98FCFA6F6F40DEF4F92B9EC7893EC28FCD412B1F1B32E27"

    invoke-static {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    .line 260
    const-string v0, "3EE30B568FBAB0F883CCEBD46D3F3BB8A2A73513F5EB79DA66190EB085FFA9F492F375A97D860EB4"

    invoke-static {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    .line 261
    const-string v0, "520883949DFDBC42D3AD198640688A6FE13F41349554B49ACC31DCCD884539816F5EB4AC8FB1F1A6"

    invoke-static {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    .line 258
    invoke-static {v1}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->-$$Nest$smconfigureCurve(Lorg/bouncycastle/math/ec/ECCurve;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method protected createParameters()Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 6

    .line 267
    const/4 v5, 0x0

    .line 268
    .local v5, "S":[B
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves$9;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 270
    .local v1, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    const-string v0, "0443BD7E9AFB53D8B85289BCC48EE5BFE6F20137D10A087EB6E7871E2A10A599C710AF8D0D39E2061114FDD05545EC1CC8AB4093247F77275E0743FFED117182EAA9C77877AAAC6AC7D35245D1692E8EE1"

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->-$$Nest$smconfigureBasepoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    .line 273
    .local v2, "G":Lorg/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v0, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
