.class public Lorg/bouncycastle/jce/ECNamedCurveTable;
.super Ljava/lang/Object;
.source "ECNamedCurveTable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    .line 77
    invoke-static {}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterSpec(Ljava/lang/String;)Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 27
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/jce/ECNamedCurveTable;->possibleOID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 32
    .local v0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_0
    goto :goto_1

    .line 29
    .end local v0    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    move-object v0, v2

    .line 35
    .local v0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_1
    if-eqz v0, :cond_1

    .line 37
    invoke-static {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .local v2, "ecP":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_2

    .line 41
    .end local v2    # "ecP":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 44
    .restart local v2    # "ecP":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    :goto_2
    if-nez v2, :cond_3

    .line 46
    if-eqz v0, :cond_2

    .line 48
    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    goto :goto_3

    .line 52
    :cond_2
    invoke-static {p0}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 56
    :cond_3
    :goto_3
    if-nez v2, :cond_4

    .line 58
    return-object v1

    .line 61
    :cond_4
    new-instance v3, Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    .line 63
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    .line 64
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 65
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 66
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v8

    .line 67
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v9

    move-object v4, p0

    .end local p0    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 61
    return-object v3
.end method

.method private static possibleOID(Ljava/lang/String;)Z
    .locals 4
    .param p0, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "identifier"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 89
    .local v1, "first":C
    const/16 v3, 0x30

    if-lt v1, v3, :cond_2

    const/16 v3, 0x32

    if-le v1, v3, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    return v0

    .line 91
    :cond_2
    :goto_0
    return v2

    .line 85
    .end local v1    # "first":C
    :cond_3
    :goto_1
    return v2
.end method
