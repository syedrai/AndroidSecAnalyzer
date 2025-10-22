.class Lorg/bouncycastle/crypto/util/PublicKeyFactory$DSTUConverter;
.super Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DSTUConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$DSTUConverter;-><init>()V

    return-void
.end method

.method private reverseBytes([B)V
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 506
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 508
    aget-byte v1, p1, v0

    .line 509
    .local v1, "tmp":B
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    .line 510
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aput-byte v1, p1, v2

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "i":I
    .end local v1    # "tmp":B
    :cond_0
    return-void
.end method


# virtual methods
.method getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 19
    .param p1, "keyInfo"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "defaultParams"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyInfo",
            "defaultParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 452
    .local v2, "algID":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 453
    .local v3, "algOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145Params;

    move-result-object v4

    .line 458
    .local v4, "dstuParams":Lorg/bouncycastle/asn1/ua/DSTU4145Params;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .local v0, "key":Lorg/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 465
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    .line 467
    .local v5, "keyEnc":[B
    sget-object v6, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145le:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    invoke-direct {v1, v5}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$DSTUConverter;->reverseBytes([B)V

    .line 473
    :cond_0
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->isNamedCurve()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 475
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->getNamedCurve()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v6

    .local v6, "ecDomain":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_0

    .line 479
    .end local v6    # "ecDomain":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ua/DSTU4145Params;->getECBinary()Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;

    move-result-object v6

    .line 480
    .local v6, "binary":Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->getB()[B

    move-result-object v7

    .line 481
    .local v7, "b_bytes":[B
    sget-object v8, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145le:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 483
    invoke-direct {v1, v7}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$DSTUConverter;->reverseBytes([B)V

    .line 485
    :cond_2
    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v16, v8

    .line 486
    .local v16, "b":Ljava/math/BigInteger;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->getField()Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;

    move-result-object v8

    .line 487
    .local v8, "field":Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;
    new-instance v10, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;->getM()I

    move-result v11

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;->getK1()I

    move-result v12

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;->getK2()I

    move-result v13

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;->getK3()I

    move-result v14

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->getA()Ljava/math/BigInteger;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v18}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 488
    .local v10, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->getG()[B

    move-result-object v9

    .line 489
    .local v9, "g_bytes":[B
    sget-object v11, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145le:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 491
    invoke-direct {v1, v9}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$DSTUConverter;->reverseBytes([B)V

    .line 493
    :cond_3
    invoke-static {v10, v9}, Lorg/bouncycastle/asn1/ua/DSTU4145PointEncoder;->decodePoint(Lorg/bouncycastle/math/ec/ECCurve;[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 494
    .local v11, "g":Lorg/bouncycastle/math/ec/ECPoint;
    new-instance v12, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ua/DSTU4145ECBinary;->getN()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v12, v10, v11, v13}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    move-object v6, v12

    .line 497
    .end local v7    # "b_bytes":[B
    .end local v8    # "field":Lorg/bouncycastle/asn1/ua/DSTU4145BinaryField;
    .end local v9    # "g_bytes":[B
    .end local v10    # "curve":Lorg/bouncycastle/math/ec/ECCurve;
    .end local v11    # "g":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v16    # "b":Ljava/math/BigInteger;
    .local v6, "ecDomain":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    :goto_0
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-static {v7, v5}, Lorg/bouncycastle/asn1/ua/DSTU4145PointEncoder;->decodePoint(Lorg/bouncycastle/math/ec/ECCurve;[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 499
    .local v7, "q":Lorg/bouncycastle/math/ec/ECPoint;
    new-instance v8, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-direct {v8, v7, v6}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v8

    .line 460
    .end local v0    # "key":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v5    # "keyEnc":[B
    .end local v6    # "ecDomain":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .end local v7    # "q":Lorg/bouncycastle/math/ec/ECPoint;
    :catch_0
    move-exception v0

    .line 462
    .local v0, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "error recovering DSTU public key"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
