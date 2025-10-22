.class Lorg/bouncycastle/crypto/util/PublicKeyFactory$GOST3410_2012Converter;
.super Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GOST3410_2012Converter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$GOST3410_2012Converter;-><init>()V

    return-void
.end method


# virtual methods
.method getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 13
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

    .line 397
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 398
    .local v0, "algID":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 399
    .local v1, "algOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    move-result-object v2

    .line 400
    .local v2, "gostParams":Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 402
    .local v3, "publicKeyParamSet":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v4, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;

    new-instance v5, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    .line 403
    invoke-static {v3}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByOIDX9(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 405
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDigestParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    .line 406
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-direct {v4, v5, v3, v6, v7}, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 411
    .local v4, "ecDomainParameters":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .local v5, "key":Lorg/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 418
    const/16 v6, 0x20

    .line 419
    .local v6, "fieldSize":I
    sget-object v7, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 421
    const/16 v6, 0x40

    .line 423
    :cond_0
    mul-int/lit8 v7, v6, 0x2

    .line 425
    .local v7, "keySize":I
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 426
    .local v8, "keyEnc":[B
    array-length v9, v8

    if-ne v9, v7, :cond_2

    .line 431
    add-int/lit8 v9, v7, 0x1

    new-array v9, v9, [B

    .line 432
    .local v9, "x9Encoding":[B
    const/4 v10, 0x0

    const/4 v11, 0x4

    aput-byte v11, v9, v10

    .line 433
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    if-gt v10, v6, :cond_1

    .line 435
    sub-int v11, v6, v10

    aget-byte v11, v8, v11

    aput-byte v11, v9, v10

    .line 436
    add-int v11, v10, v6

    sub-int v12, v7, v10

    aget-byte v12, v8, v12

    aput-byte v12, v9, v11

    .line 433
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 439
    .end local v10    # "i":I
    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    .line 441
    .local v10, "q":Lorg/bouncycastle/math/ec/ECPoint;
    new-instance v11, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-direct {v11, v10, v4}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v11

    .line 428
    .end local v9    # "x9Encoding":[B
    .end local v10    # "q":Lorg/bouncycastle/math/ec/ECPoint;
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "invalid length for GOST3410_2012 public key"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 413
    .end local v5    # "key":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "fieldSize":I
    .end local v7    # "keySize":I
    .end local v8    # "keyEnc":[B
    :catch_0
    move-exception v5

    .line 415
    .local v5, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "error recovering GOST3410_2012 public key"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
