.class public Lorg/bouncycastle/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "PrivateKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inStr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 15
    .param p0, "keyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    if-eqz p0, :cond_1a

    .line 107
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 108
    .local v0, "algId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 110
    .local v1, "algOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 111
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 123
    :cond_0
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object v2

    .line 126
    .local v2, "params":Lorg/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 128
    .local v3, "derX":Lorg/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v4

    .line 129
    .local v4, "lVal":Ljava/math/BigInteger;
    if-nez v4, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 130
    .local v5, "l":I
    :goto_0
    new-instance v6, Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v5}, Lorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 132
    .local v6, "dhParams":Lorg/bouncycastle/crypto/params/DHParameters;
    new-instance v7, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    return-object v7

    .line 134
    .end local v2    # "params":Lorg/bouncycastle/asn1/pkcs/DHParameter;
    .end local v3    # "derX":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v4    # "lVal":Ljava/math/BigInteger;
    .end local v5    # "l":I
    .end local v6    # "dhParams":Lorg/bouncycastle/crypto/params/DHParameters;
    :cond_2
    sget-object v2, Lorg/bouncycastle/internal/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/internal/asn1/oiw/ElGamalParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/internal/asn1/oiw/ElGamalParameter;

    move-result-object v2

    .line 137
    .local v2, "params":Lorg/bouncycastle/internal/asn1/oiw/ElGamalParameter;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 139
    .restart local v3    # "derX":Lorg/bouncycastle/asn1/ASN1Integer;
    new-instance v4, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/crypto/params/ElGamalParameters;

    .line 140
    invoke-virtual {v2}, Lorg/bouncycastle/internal/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lorg/bouncycastle/internal/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ElGamalParameters;)V

    .line 139
    return-object v4

    .line 142
    .end local v2    # "params":Lorg/bouncycastle/internal/asn1/oiw/ElGamalParameter;
    .end local v3    # "derX":Lorg/bouncycastle/asn1/ASN1Integer;
    :cond_3
    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 145
    .local v2, "derX":Lorg/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 147
    .local v3, "algParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    const/4 v4, 0x0

    .line 148
    .local v4, "parameters":Lorg/bouncycastle/crypto/params/DSAParameters;
    if-eqz v3, :cond_4

    .line 150
    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v5

    .line 151
    .local v5, "params":Lorg/bouncycastle/asn1/x509/DSAParameter;
    new-instance v6, Lorg/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v4, v6

    .line 154
    .end local v5    # "params":Lorg/bouncycastle/asn1/x509/DSAParameter;
    :cond_4
    new-instance v5, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAParameters;)V

    return-object v5

    .line 156
    .end local v2    # "derX":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v3    # "algParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v4    # "parameters":Lorg/bouncycastle/crypto/params/DSAParameters;
    :cond_5
    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 158
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v2

    .line 163
    .local v2, "params":Lorg/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 165
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 167
    .local v3, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v3}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v4

    .line 168
    .local v4, "x9":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v4, :cond_6

    .line 170
    invoke-static {v3}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v4

    .line 172
    :cond_6
    new-instance v5, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v5, v3, v4}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 173
    .end local v3    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v5, "dParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_1

    .line 176
    .end local v4    # "x9":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .end local v5    # "dParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    :cond_7
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v4

    .line 177
    .restart local v4    # "x9":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v5, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 178
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 181
    .restart local v5    # "dParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/sec/ECPrivateKey;

    move-result-object v3

    .line 182
    .local v3, "ec":Lorg/bouncycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v6

    .line 184
    .local v6, "d":Ljava/math/BigInteger;
    new-instance v7, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-direct {v7, v6, v5}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v7

    .line 186
    .end local v2    # "params":Lorg/bouncycastle/asn1/x9/X962Parameters;
    .end local v3    # "ec":Lorg/bouncycastle/asn1/sec/ECPrivateKey;
    .end local v4    # "x9":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .end local v5    # "dParams":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .end local v6    # "d":Ljava/math/BigInteger;
    :cond_8
    sget-object v2, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_a

    .line 189
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyLength()I

    move-result v2

    if-ne v3, v2, :cond_9

    .line 191
    new-instance v2, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>([B)V

    return-object v2

    .line 194
    :cond_9
    new-instance v2, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/PrivateKeyFactory;->getRawKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>([B)V

    return-object v2

    .line 196
    :cond_a
    sget-object v2, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 199
    const/16 v2, 0x38

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyLength()I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 201
    new-instance v2, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;-><init>([B)V

    return-object v2

    .line 204
    :cond_b
    new-instance v2, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/PrivateKeyFactory;->getRawKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;-><init>([B)V

    return-object v2

    .line 206
    :cond_c
    sget-object v2, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 208
    new-instance v2, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/PrivateKeyFactory;->getRawKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;-><init>([B)V

    return-object v2

    .line 210
    :cond_d
    sget-object v2, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 212
    new-instance v2, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/PrivateKeyFactory;->getRawKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;-><init>([B)V

    return-object v2

    .line 214
    :cond_e
    sget-object v2, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 215
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 216
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Lorg/bouncycastle/internal/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 217
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_2

    .line 307
    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "algorithm identifier in private key not recognised"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_10
    :goto_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 220
    .local v2, "algParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v2}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    move-result-object v4

    .line 221
    .local v4, "gostParams":Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
    const/4 v5, 0x0

    .line 222
    .local v5, "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    const/4 v6, 0x0

    .line 223
    .restart local v6    # "d":Ljava/math/BigInteger;
    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 224
    .local v7, "p":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v8, v7, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v8, :cond_15

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_11

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_15

    .line 226
    :cond_11
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByOIDX9(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 228
    .local v8, "ecP":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v9, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;

    new-instance v10, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    .line 230
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 231
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    .line 232
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDigestParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    .line 233
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 235
    .end local v5    # "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    .local v9, "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyLength()I

    move-result v5

    .line 237
    .local v5, "privateKeyLength":I
    const/4 v10, 0x1

    if-eq v5, v3, :cond_14

    const/16 v3, 0x40

    if-ne v5, v3, :cond_12

    goto :goto_3

    .line 243
    :cond_12
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 244
    .local v3, "privKey":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v11, v3, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v11, :cond_13

    .line 246
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_4

    .line 250
    :cond_13
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/util/Arrays;->reverse([B)[B

    move-result-object v11

    .line 251
    .local v11, "dVal":[B
    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v10, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v6, v12

    goto :goto_4

    .line 239
    .end local v3    # "privKey":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v11    # "dVal":[B
    :cond_14
    :goto_3
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/util/Arrays;->reverse([B)[B

    move-result-object v11

    invoke-direct {v3, v10, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v6, v3

    .line 254
    .end local v5    # "privateKeyLength":I
    .end local v8    # "ecP":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    :goto_4
    goto/16 :goto_6

    .line 257
    .end local v9    # "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    .local v5, "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    :cond_15
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v3

    .line 259
    .local v3, "params":Lorg/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 261
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    .line 262
    .local v8, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v8}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v9

    .line 264
    .local v9, "ecP":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v10, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;

    new-instance v11, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v11, v8, v9}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 265
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDigestParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    .line 266
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 267
    .end local v5    # "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    .end local v8    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v9    # "ecP":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .local v10, "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    move-object v9, v10

    goto :goto_5

    .line 268
    .end local v10    # "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    .restart local v5    # "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    :cond_16
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 270
    const/4 v5, 0x0

    move-object v9, v5

    goto :goto_5

    .line 274
    :cond_17
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 275
    .local v8, "ecP":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v9, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;

    new-instance v10, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v10, v1, v8}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .line 276
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDigestParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    .line 277
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 280
    .end local v5    # "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    .end local v8    # "ecP":Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .local v9, "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    :goto_5
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 281
    .local v5, "privKey":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v8, v5, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v8, :cond_18

    .line 283
    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v8

    .line 285
    .local v8, "derD":Lorg/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    .line 286
    .end local v8    # "derD":Lorg/bouncycastle/asn1/ASN1Integer;
    goto :goto_6

    .line 289
    :cond_18
    invoke-static {v5}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/sec/ECPrivateKey;

    move-result-object v8

    .line 291
    .local v8, "ec":Lorg/bouncycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v6

    .line 296
    .end local v3    # "params":Lorg/bouncycastle/asn1/x9/X962Parameters;
    .end local v5    # "privKey":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v8    # "ec":Lorg/bouncycastle/asn1/sec/ECPrivateKey;
    :goto_6
    new-instance v3, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    new-instance v5, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;

    .line 300
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    .line 301
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDigestParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    .line 302
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    invoke-direct {v5, v9, v8, v10, v11}, Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v3, v6, v5}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 296
    return-object v3

    .line 114
    .end local v2    # "algParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v4    # "gostParams":Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
    .end local v6    # "d":Ljava/math/BigInteger;
    .end local v7    # "p":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v9    # "ecSpec":Lorg/bouncycastle/crypto/params/ECGOST3410Parameters;
    :cond_19
    :goto_7
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v2

    .line 116
    .local v2, "keyStructure":Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;
    new-instance v3, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    .line 117
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v6

    .line 118
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v9

    .line 119
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 116
    return-object v3

    .line 104
    .end local v0    # "algId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v1    # "algOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v2    # "keyStructure":Lorg/bouncycastle/asn1/pkcs/RSAPrivateKey;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyInfo argument null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 2
    .param p0, "privateKeyInfoData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKeyInfoData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    if-eqz p0, :cond_1

    .line 71
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "privateKeyInfoData array empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "privateKeyInfoData array null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getRawKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)[B
    .locals 1
    .param p0, "keyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method
