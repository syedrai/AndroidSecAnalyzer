.class public Lcom/afwsamples/testdpc/policy/utils/CertificateUtils;
.super Ljava/lang/Object;
.source "CertificateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCertificate(Ljava/security/KeyPair;Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)Ljava/security/cert/X509Certificate;
    .locals 15
    .param p0, "keyPair"    # Ljava/security/KeyPair;
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "issuer"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyPair",
            "subject",
            "issuer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const-wide/32 v0, 0x5265c00

    .line 43
    .local v0, "millisPerDay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 44
    .local v2, "now":J
    new-instance v4, Ljava/util/Date;

    sub-long v5, v2, v0

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    move-object v10, v4

    .line 45
    .local v10, "start":Ljava/util/Date;
    new-instance v11, Ljava/util/Date;

    add-long v4, v2, v0

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 48
    .local v11, "end":Ljava/util/Date;
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 49
    .local v4, "serialBytes":[B
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 50
    new-instance v9, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v9, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 53
    .local v9, "serialNumber":Ljava/math/BigInteger;
    new-instance v7, Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    .line 55
    invoke-virtual/range {p2 .. p2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    .line 59
    invoke-virtual/range {p1 .. p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    .line 60
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 63
    .local v7, "x509cg":Lorg/bouncycastle/cert/X509v3CertificateBuilder;
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "keyAlgorithm":Ljava/lang/String;
    const-string v6, "RSA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    const-string v6, "SHA256withRSA"

    .local v6, "signatureAlgorithm":Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v6    # "signatureAlgorithm":Ljava/lang/String;
    :cond_0
    const-string v6, "EC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    const-string v6, "SHA256withECDSA"

    .line 74
    .restart local v6    # "signatureAlgorithm":Ljava/lang/String;
    :goto_0
    new-instance v8, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    invoke-direct {v8, v6}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v8

    .line 76
    .local v8, "x509holder":Lorg/bouncycastle/cert/X509CertificateHolder;
    const-string v12, "X.509"

    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v12

    .line 77
    .local v12, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v13, Ljava/io/ByteArrayInputStream;

    .line 79
    invoke-virtual {v8}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v12, v13}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 80
    .local v13, "x509c":Ljava/security/cert/X509Certificate;
    return-object v13

    .line 70
    .end local v6    # "signatureAlgorithm":Ljava/lang/String;
    .end local v8    # "x509holder":Lorg/bouncycastle/cert/X509CertificateHolder;
    .end local v12    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v13    # "x509c":Ljava/security/cert/X509Certificate;
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown key algorithm "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
