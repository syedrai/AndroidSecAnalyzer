.class public Lorg/bouncycastle/jce/PKCS12Util;
.super Ljava/lang/Object;
.source "PKCS12Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculatePbeMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[C[BLjava/lang/String;)[B
    .locals 6
    .param p0, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "salt"    # [B
    .param p2, "itCount"    # I
    .param p3, "password"    # [C
    .param p4, "data"    # [B
    .param p5, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oid",
            "salt",
            "itCount",
            "password",
            "data",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 98
    .local v0, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 99
    .local v1, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v2, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 100
    .local v2, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v0, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 102
    .local v3, "key":Ljavax/crypto/SecretKey;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 103
    .local v4, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v4, v3, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 104
    invoke-virtual {v4, p4}, Ljavax/crypto/Mac;->update([B)V

    .line 106
    invoke-virtual {v4}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    return-object v5
.end method

.method public static convertToDefiniteLength([B)[B
    .locals 2
    .param p0, "berPKCS12File"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "berPKCS12File"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v0

    .line 40
    .local v0, "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static convertToDefiniteLength([B[CLjava/lang/String;)[B
    .locals 14
    .param p0, "berPKCS12File"    # [B
    .param p1, "passwd"    # [C
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "berPKCS12File",
            "passwd",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v1

    .line 57
    .local v1, "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    .line 59
    .local v0, "info":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    .line 60
    .local v2, "content":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 62
    .local v3, "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    .line 64
    .local v5, "derEncoding":[B
    new-instance v6, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v8, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 66
    .end local v0    # "info":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .local v6, "info":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v7

    .line 69
    .local v7, "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    :try_start_0
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    move v10, v0

    .line 70
    .local v10, "itCount":I
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v12

    .line 71
    .local v12, "data":[B
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/MacData;->getMac()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v9

    move-object v11, p1

    move-object/from16 v13, p2

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/jce/PKCS12Util;->calculatePbeMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[C[BLjava/lang/String;)[B

    move-result-object v0

    .line 73
    .local v0, "res":[B
    new-instance v8, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/MacData;->getMac()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    sget-object v11, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v8, v9, v11}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 74
    .local v8, "algId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v9, Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-direct {v9, v8, v0}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 76
    .local v9, "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    new-instance v11, Lorg/bouncycastle/asn1/pkcs/MacData;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v13

    invoke-direct {v11, v9, v13, v10}, Lorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "res":[B
    .end local v7    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    .end local v8    # "algId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v9    # "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    .end local v10    # "itCount":I
    .end local v12    # "data":[B
    .local v11, "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    nop

    .line 83
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-direct {v0, v6, v11}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    .line 85
    .end local v1    # "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    .local v0, "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 78
    .end local v0    # "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    .end local v11    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    .restart local v1    # "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    .restart local v7    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error constructing MAC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
