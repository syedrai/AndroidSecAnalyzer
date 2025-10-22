.class public Lorg/bouncycastle/openssl/MiscPEMGenerator;
.super Ljava/lang/Object;
.source "MiscPEMGenerator.java"

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectGenerator;


# static fields
.field private static final dsaOids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final hexEncodingTable:[B


# instance fields
.field private final encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

.field private final obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->dsaOids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->hexEncodingTable:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/bouncycastle/openssl/PEMEncryptor;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "encryptor"    # Lorg/bouncycastle/openssl/PEMEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "encryptor"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    .line 61
    return-void
.end method

.method private createPemObject(Ljava/lang/Object;)Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    instance-of v0, p1, Lorg/bouncycastle/util/io/pem/PemObject;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/util/io/pem/PemObject;

    return-object v0

    .line 73
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/util/io/pem/PemObjectGenerator;

    if-eqz v0, :cond_1

    .line 75
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/util/io/pem/PemObjectGenerator;

    invoke-interface {v0}, Lorg/bouncycastle/util/io/pem/PemObjectGenerator;->generate()Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    if-eqz v0, :cond_2

    .line 79
    const-string v0, "CERTIFICATE"

    .line 81
    .local v0, "type":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v1

    .local v1, "encoding":[B
    goto/16 :goto_2

    .line 83
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "encoding":[B
    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CRLHolder;

    if-eqz v0, :cond_3

    .line 85
    const-string v0, "X509 CRL"

    .line 87
    .restart local v0    # "type":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/cert/X509CRLHolder;

    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509CRLHolder;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto/16 :goto_2

    .line 89
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "encoding":[B
    :cond_3
    instance-of v0, p1, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;

    if-eqz v0, :cond_4

    .line 91
    const-string v0, "TRUSTED CERTIFICATE"

    .line 93
    .restart local v0    # "type":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;

    invoke-virtual {v1}, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto/16 :goto_2

    .line 95
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "encoding":[B
    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v0, :cond_9

    .line 97
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 98
    .local v0, "info":Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 100
    .local v1, "algOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    const-string v2, "RSA PRIVATE KEY"

    .line 104
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v3

    move-object v0, v2

    move-object v1, v3

    .local v3, "encoding":[B
    goto/16 :goto_1

    .line 106
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "encoding":[B
    :cond_5
    sget-object v2, Lorg/bouncycastle/openssl/MiscPEMGenerator;->dsaOids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lorg/bouncycastle/openssl/MiscPEMGenerator;->dsaOids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 126
    :cond_6
    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 128
    const-string v2, "EC PRIVATE KEY"

    .line 130
    .restart local v2    # "type":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v3

    move-object v0, v2

    move-object v1, v3

    .restart local v3    # "encoding":[B
    goto/16 :goto_1

    .line 134
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "encoding":[B
    :cond_7
    const-string v2, "PRIVATE KEY"

    .line 136
    .restart local v2    # "type":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v3

    move-object v0, v2

    move-object v1, v3

    .restart local v3    # "encoding":[B
    goto :goto_1

    .line 108
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "encoding":[B
    :cond_8
    :goto_0
    const-string v2, "DSA PRIVATE KEY"

    .line 110
    .restart local v2    # "type":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v3

    .line 111
    .local v3, "p":Lorg/bouncycastle/asn1/x509/DSAParameter;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 113
    .local v4, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 116
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 118
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 119
    .local v5, "x":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 121
    .local v6, "y":Ljava/math/BigInteger;
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 122
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v7, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 124
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v3

    .line 125
    .end local v4    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v5    # "x":Ljava/math/BigInteger;
    .end local v6    # "y":Ljava/math/BigInteger;
    .local v3, "encoding":[B
    move-object v0, v2

    move-object v1, v3

    .line 138
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "encoding":[B
    .local v0, "type":Ljava/lang/String;
    .local v1, "encoding":[B
    :goto_1
    goto :goto_2

    .line 139
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "encoding":[B
    :cond_9
    instance-of v0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_a

    .line 141
    const-string v0, "PUBLIC KEY"

    .line 143
    .restart local v0    # "type":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto :goto_2

    .line 145
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "encoding":[B
    :cond_a
    instance-of v0, p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    if-eqz v0, :cond_b

    .line 147
    const-string v0, "ATTRIBUTE CERTIFICATE"

    .line 148
    .restart local v0    # "type":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto :goto_2

    .line 150
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "encoding":[B
    :cond_b
    instance-of v0, p1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    if-eqz v0, :cond_c

    .line 152
    const-string v0, "CERTIFICATE REQUEST"

    .line 153
    .restart local v0    # "type":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto :goto_2

    .line 155
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "encoding":[B
    :cond_c
    instance-of v0, p1, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_d

    .line 157
    const-string v0, "ENCRYPTED PRIVATE KEY"

    .line 158
    .restart local v0    # "type":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto :goto_2

    .line 160
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "encoding":[B
    :cond_d
    instance-of v0, p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    if-eqz v0, :cond_10

    .line 162
    const-string v0, "PKCS7"

    .line 163
    .restart local v0    # "type":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v1

    .line 170
    .restart local v1    # "encoding":[B
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    if-eqz v2, :cond_f

    .line 172
    iget-object v2, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    invoke-interface {v2}, Lorg/bouncycastle/openssl/PEMEncryptor;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "dekAlgName":Ljava/lang/String;
    const-string v3, "DESEDE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 177
    const-string v2, "DES-EDE3-CBC"

    .line 181
    :cond_e
    iget-object v3, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    invoke-interface {v3}, Lorg/bouncycastle/openssl/PEMEncryptor;->getIV()[B

    move-result-object v3

    .line 183
    .local v3, "iv":[B
    iget-object v4, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->encryptor:Lorg/bouncycastle/openssl/PEMEncryptor;

    invoke-interface {v4, v1}, Lorg/bouncycastle/openssl/PEMEncryptor;->encrypt([B)[B

    move-result-object v4

    .line 185
    .local v4, "encData":[B
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v5, "headers":Ljava/util/List;
    new-instance v6, Lorg/bouncycastle/util/io/pem/PemHeader;

    const-string v7, "Proc-Type"

    const-string v8, "4,ENCRYPTED"

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v6, Lorg/bouncycastle/util/io/pem/PemHeader;

    invoke-direct {p0, v3}, Lorg/bouncycastle/openssl/MiscPEMGenerator;->getHexEncoded([B)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEK-Info"

    invoke-direct {v6, v8, v7}, Lorg/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v6, Lorg/bouncycastle/util/io/pem/PemObject;

    invoke-direct {v6, v0, v5, v4}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    return-object v6

    .line 192
    .end local v2    # "dekAlgName":Ljava/lang/String;
    .end local v3    # "iv":[B
    .end local v4    # "encData":[B
    .end local v5    # "headers":Ljava/util/List;
    :cond_f
    new-instance v2, Lorg/bouncycastle/util/io/pem/PemObject;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    return-object v2

    .line 167
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "encoding":[B
    :cond_10
    new-instance v0, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    const-string/jumbo v1, "unknown object passed - can\'t encode."

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getHexEncoded([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 200
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 202
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 204
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lorg/bouncycastle/openssl/MiscPEMGenerator;->hexEncodingTable:[B

    ushr-int/lit8 v5, v2, 0x4

    aget-byte v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 205
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lorg/bouncycastle/openssl/MiscPEMGenerator;->hexEncodingTable:[B

    and-int/lit8 v5, v2, 0xf

    aget-byte v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 200
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    .line 216
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/bouncycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;)Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoding exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
