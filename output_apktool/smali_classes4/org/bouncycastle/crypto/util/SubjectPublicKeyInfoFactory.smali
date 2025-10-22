.class public Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;
.super Ljava/lang/Object;
.source "SubjectPublicKeyInfoFactory.java"


# static fields
.field private static cryptoProOids:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->cryptoProOids:Ljava/util/Set;

    .line 48
    sget-object v0, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->cryptoProOids:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->cryptoProOids:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->cryptoProOids:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->cryptoProOids:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->cryptoProOids:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static createSubjectPublicKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 13
    .param p0, "publicKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 74
    .local v0, "pub":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/pkcs/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    .line 76
    .end local v0    # "pub":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz v0, :cond_2

    .line 78
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    .line 80
    .local v0, "pub":Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;
    const/4 v1, 0x0

    .line 81
    .local v1, "params":Lorg/bouncycastle/asn1/x509/DSAParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v2

    .line 82
    .local v2, "dsaParams":Lorg/bouncycastle/crypto/params/DSAParameters;
    if-eqz v2, :cond_1

    .line 84
    new-instance v3, Lorg/bouncycastle/asn1/x509/DSAParameter;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/bouncycastle/asn1/x509/DSAParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v1, v3

    .line 87
    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v4, v5, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 89
    .end local v0    # "pub":Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;
    .end local v1    # "params":Lorg/bouncycastle/asn1/x509/DSAParameter;
    .end local v2    # "dsaParams":Lorg/bouncycastle/crypto/params/DSAParameters;
    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_9

    .line 91
    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 92
    .local v1, "pub":Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 95
    .local v2, "domainParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    const/4 v0, 0x0

    if-nez v2, :cond_3

    .line 97
    new-instance v3, Lorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v4, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1Null;)V

    .local v3, "params":Lorg/bouncycastle/asn1/ASN1Encodable;
    goto/16 :goto_2

    .line 99
    .end local v3    # "params":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    instance-of v3, v2, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;

    if-eqz v3, :cond_7

    .line 101
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;

    .line 103
    .local v3, "gostParams":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 104
    .local v4, "bX":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 106
    .local v5, "bY":Ljava/math/BigInteger;
    new-instance v6, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;->getDigestParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 113
    .local v6, "params":Lorg/bouncycastle/asn1/ASN1Encodable;
    sget-object v7, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->cryptoProOids:Ljava/util/Set;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 115
    const/16 v7, 0x40

    .line 116
    .local v7, "encKeySize":I
    const/16 v8, 0x20

    .line 117
    .local v8, "offset":I
    sget-object v9, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .local v9, "algIdentifier":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_1

    .line 121
    .end local v7    # "encKeySize":I
    .end local v8    # "offset":I
    .end local v9    # "algIdentifier":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_4
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x100

    if-le v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    .line 122
    .local v7, "is512":Z
    :goto_0
    if-eqz v7, :cond_6

    .line 124
    const/16 v8, 0x80

    .line 125
    .local v8, "encKeySize":I
    const/16 v9, 0x40

    .line 126
    .local v9, "offset":I
    sget-object v10, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v7, v8

    move v8, v9

    move-object v9, v10

    .local v10, "algIdentifier":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_1

    .line 130
    .end local v8    # "encKeySize":I
    .end local v9    # "offset":I
    .end local v10    # "algIdentifier":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_6
    const/16 v8, 0x40

    .line 131
    .restart local v8    # "encKeySize":I
    const/16 v9, 0x20

    .line 132
    .restart local v9    # "offset":I
    sget-object v10, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v7, v8

    move v8, v9

    move-object v9, v10

    .line 136
    .local v7, "encKeySize":I
    .local v8, "offset":I
    .local v9, "algIdentifier":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_1
    new-array v10, v7, [B

    .line 137
    .local v10, "encKey":[B
    div-int/lit8 v11, v7, 0x2

    invoke-static {v10, v11, v0, v4}, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->extractBytes([BIILjava/math/BigInteger;)V

    .line 138
    div-int/lit8 v0, v7, 0x2

    invoke-static {v10, v0, v8, v5}, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->extractBytes([BIILjava/math/BigInteger;)V

    .line 142
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v11, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v11, v9, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v12, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    const/4 v11, 0x0

    return-object v11

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "gostParams":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    .end local v4    # "bX":Ljava/math/BigInteger;
    .end local v5    # "bY":Ljava/math/BigInteger;
    .end local v6    # "params":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v7    # "encKeySize":I
    .end local v8    # "offset":I
    .end local v9    # "algIdentifier":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v10    # "encKey":[B
    :cond_7
    instance-of v3, v2, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    if-eqz v3, :cond_8

    .line 151
    new-instance v3, Lorg/bouncycastle/asn1/x9/X962Parameters;

    move-object v4, v2

    check-cast v4, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->getName()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .local v3, "params":Lorg/bouncycastle/asn1/ASN1Encodable;
    goto :goto_2

    .line 155
    .end local v3    # "params":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_8
    new-instance v4, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    .line 156
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    .line 158
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-direct {v6, v3, v0}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Z)V

    .line 159
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 160
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v8

    .line 161
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 163
    .local v4, "ecP":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v3, Lorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 167
    .end local v4    # "ecP":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v3    # "params":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_2
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    .line 169
    .local v0, "pubKeyOctets":[B
    new-instance v4, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v5, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v6, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v4

    .line 171
    .end local v0    # "pubKeyOctets":[B
    .end local v1    # "pub":Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .end local v2    # "domainParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .end local v3    # "params":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_9
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    if-eqz v0, :cond_a

    .line 173
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    .line 175
    .local v0, "key":Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;->getEncoded()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v1

    .line 177
    .end local v0    # "key":Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    if-eqz v0, :cond_b

    .line 179
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    .line 181
    .local v0, "key":Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v1

    .line 183
    .end local v0    # "key":Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;
    :cond_b
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    if-eqz v0, :cond_c

    .line 185
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    .line 187
    .local v0, "key":Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->getEncoded()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v1

    .line 189
    .end local v0    # "key":Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;
    :cond_c
    instance-of v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    if-eqz v0, :cond_d

    .line 191
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    .line 193
    .local v0, "key":Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->getEncoded()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v1

    .line 197
    .end local v0    # "key":Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "key parameters not recognized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extractBytes([BIILjava/math/BigInteger;)V
    .locals 5
    .param p0, "encKey"    # [B
    .param p1, "size"    # I
    .param p2, "offSet"    # I
    .param p3, "bI"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encKey",
            "size",
            "offSet",
            "bI"
        }
    .end annotation

    .line 203
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 204
    .local v0, "val":[B
    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 206
    new-array v1, p1, [B

    .line 207
    .local v1, "tmp":[B
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    move-object v0, v1

    .line 211
    .end local v1    # "tmp":[B
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, p1, :cond_1

    .line 213
    add-int v2, p2, v1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, v0, v3

    aput-byte v3, p0, v2

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
