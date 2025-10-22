.class Lorg/bouncycastle/crypto/util/PublicKeyFactory$ECConverter;
.super Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ECConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$ECConverter;-><init>()V

    return-void
.end method


# virtual methods
.method getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 9
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

    .line 288
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    .line 291
    .local v0, "params":Lorg/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 295
    .local v1, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 296
    .local v2, "x9":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v2, :cond_0

    .line 298
    invoke-static {v1}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 300
    :cond_0
    new-instance v3, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 301
    .end local v1    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v2    # "x9":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .local v3, "dParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_0

    .line 302
    .end local v3    # "dParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    move-object v3, p2

    check-cast v3, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .restart local v3    # "dParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_0

    .line 308
    .end local v3    # "dParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 309
    .local v1, "x9":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v2, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    move-object v3, v2

    .line 312
    .end local v1    # "x9":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v3    # "dParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    .line 313
    .local v1, "bits":Lorg/bouncycastle/asn1/ASN1BitString;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    .line 314
    .local v2, "data":[B
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 319
    .local v4, "key":Lorg/bouncycastle/asn1/ASN1OctetString;
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    array-length v6, v2

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_4

    aget-byte v5, v2, v7

    const/4 v6, 0x3

    if-eq v5, v7, :cond_3

    aget-byte v5, v2, v7

    if-ne v5, v6, :cond_4

    .line 322
    :cond_3
    new-instance v5, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v5

    .line 324
    .local v5, "qLength":I
    array-length v7, v2

    sub-int/2addr v7, v6

    if-lt v5, v7, :cond_4

    .line 328
    :try_start_0
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 333
    goto :goto_1

    .line 330
    :catch_0
    move-exception v6

    .line 332
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "error recovering public key"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 337
    .end local v5    # "qLength":I
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_4
    :goto_1
    new-instance v5, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 339
    .local v5, "derQ":Lorg/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v6, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v6
.end method
