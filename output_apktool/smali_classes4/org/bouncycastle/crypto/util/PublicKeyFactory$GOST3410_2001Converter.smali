.class Lorg/bouncycastle/crypto/util/PublicKeyFactory$GOST3410_2001Converter;
.super Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GOST3410_2001Converter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$GOST3410_2001Converter;-><init>()V

    return-void
.end method


# virtual methods
.method getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 12
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

    .line 348
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 350
    .local v0, "algID":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    move-result-object v1

    .line 351
    .local v1, "gostParams":Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 353
    .local v2, "publicKeyParamSet":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;

    new-instance v4, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    .line 354
    invoke-static {v2}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByOIDX9(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 356
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDigestParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    .line 357
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-direct {v3, v4, v2, v5, v6}, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 362
    .local v3, "ecDomainParameters":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .local v4, "key":Lorg/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 369
    const/16 v5, 0x20

    .line 370
    .local v5, "fieldSize":I
    mul-int/lit8 v6, v5, 0x2

    .line 372
    .local v6, "keySize":I
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 373
    .local v7, "keyEnc":[B
    array-length v8, v7

    if-ne v8, v6, :cond_1

    .line 378
    add-int/lit8 v8, v6, 0x1

    new-array v8, v8, [B

    .line 379
    .local v8, "x9Encoding":[B
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput-byte v10, v8, v9

    .line 380
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    if-gt v9, v5, :cond_0

    .line 382
    sub-int v10, v5, v9

    aget-byte v10, v7, v10

    aput-byte v10, v8, v9

    .line 383
    add-int v10, v9, v5

    sub-int v11, v6, v9

    aget-byte v11, v7, v11

    aput-byte v11, v8, v10

    .line 380
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 386
    .end local v9    # "i":I
    :cond_0
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 388
    .local v9, "q":Lorg/bouncycastle/math/ec/ECPoint;
    new-instance v10, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-direct {v10, v9, v3}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v10

    .line 375
    .end local v8    # "x9Encoding":[B
    .end local v9    # "q":Lorg/bouncycastle/math/ec/ECPoint;
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "invalid length for GOST3410_2001 public key"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 364
    .end local v4    # "key":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v5    # "fieldSize":I
    .end local v6    # "keySize":I
    .end local v7    # "keyEnc":[B
    :catch_0
    move-exception v4

    .line 366
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "error recovering GOST3410_2001 public key"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
