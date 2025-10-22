.class Lorg/bouncycastle/crypto/util/PublicKeyFactory$DHPublicNumberConverter;
.super Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DHPublicNumberConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$DHPublicNumberConverter;-><init>()V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/DHPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/DHPublicKey;

    move-result-object v0

    .line 202
    .local v0, "dhPublicKey":Lorg/bouncycastle/asn1/x9/DHPublicKey;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    .line 204
    .local v1, "y":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/DomainParameters;

    move-result-object v2

    .line 206
    .local v2, "dhParams":Lorg/bouncycastle/asn1/x9/DomainParameters;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 207
    .local v4, "p":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    move-result-object v5

    .line 208
    .local v5, "g":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 210
    .local v6, "q":Ljava/math/BigInteger;
    const/4 v3, 0x0

    .line 211
    .local v3, "j":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 213
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v3

    move-object v7, v3

    goto :goto_0

    .line 211
    :cond_0
    move-object v7, v3

    .line 216
    .end local v3    # "j":Ljava/math/BigInteger;
    .local v7, "j":Ljava/math/BigInteger;
    :goto_0
    const/4 v3, 0x0

    .line 217
    .local v3, "validation":Lorg/bouncycastle/crypto/params/DHValidationParameters;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/DomainParameters;->getValidationParams()Lorg/bouncycastle/asn1/x9/ValidationParams;

    move-result-object v9

    .line 218
    .local v9, "dhValidationParms":Lorg/bouncycastle/asn1/x9/ValidationParams;
    if-eqz v9, :cond_1

    .line 220
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x9/ValidationParams;->getSeed()[B

    move-result-object v8

    .line 221
    .local v8, "seed":[B
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x9/ValidationParams;->getPgenCounter()Ljava/math/BigInteger;

    move-result-object v10

    .line 225
    .local v10, "pgenCounter":Ljava/math/BigInteger;
    new-instance v11, Lorg/bouncycastle/crypto/params/DHValidationParameters;

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    invoke-direct {v11, v8, v12}, Lorg/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    move-object v3, v11

    move-object v8, v3

    goto :goto_1

    .line 218
    .end local v8    # "seed":[B
    .end local v10    # "pgenCounter":Ljava/math/BigInteger;
    :cond_1
    move-object v8, v3

    .line 228
    .end local v3    # "validation":Lorg/bouncycastle/crypto/params/DHValidationParameters;
    .local v8, "validation":Lorg/bouncycastle/crypto/params/DHValidationParameters;
    :goto_1
    new-instance v10, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    new-instance v3, Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHValidationParameters;)V

    invoke-direct {v10, v1, v3}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    return-object v10
.end method
