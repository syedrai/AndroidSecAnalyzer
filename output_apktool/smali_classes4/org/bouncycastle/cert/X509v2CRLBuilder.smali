.class public Lorg/bouncycastle/cert/X509v2CRLBuilder;
.super Ljava/lang/Object;
.source "X509v2CRLBuilder.java"


# instance fields
.field private extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

.field private tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/util/Date;)V
    .locals 2
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "thisUpdate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuer",
            "thisUpdate"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/util/Date;Ljava/util/Locale;)V
    .locals 2
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "thisUpdate"    # Ljava/util/Date;
    .param p3, "dateLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "issuer",
            "thisUpdate",
            "dateLocale"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    .line 71
    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p2, p3}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 1
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "thisUpdate"    # Lorg/bouncycastle/asn1/x509/Time;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuer",
            "thisUpdate"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    .line 88
    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/X509CRLHolder;)V
    .locals 6
    .param p1, "template"    # Lorg/bouncycastle/cert/X509CRLHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getThisUpdate()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 104
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    .line 105
    .local v0, "nextUpdate":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v2, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->addCRL(Lorg/bouncycastle/cert/X509CRLHolder;)Lorg/bouncycastle/cert/X509v2CRLBuilder;

    .line 112
    new-instance v1, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 114
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 115
    .local v1, "exts":Lorg/bouncycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "en":Ljava/util/Enumeration;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 122
    .local v3, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->altSignatureAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    goto :goto_0

    .line 126
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    .line 128
    .end local v3    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_0

    .line 130
    .end local v2    # "en":Ljava/util/Enumeration;
    :cond_3
    return-void
.end method

.method private doGetExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 2
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 163
    .local v0, "exts":Lorg/bouncycastle/asn1/x509/Extensions;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    return-object v1
.end method

.method private static generateCRLStructure(Lorg/bouncycastle/asn1/x509/TBSCertList;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/asn1/x509/CertificateList;
    .locals 2
    .param p0, "tbsCertList"    # Lorg/bouncycastle/asn1/x509/TBSCertList;
    .param p1, "sigAlgId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tbsCertList",
            "sigAlgId",
            "signature"
        }
    .end annotation

    .line 530
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 532
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 533
    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 534
    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 536
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v1

    return-object v1
.end method

.method private static generateFullCRL(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/x509/TBSCertList;)Lorg/bouncycastle/cert/X509CRLHolder;
    .locals 3
    .param p0, "signer"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p1, "tbsCertList"    # Lorg/bouncycastle/asn1/x509/TBSCertList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signer",
            "tbsCertList"
        }
    .end annotation

    .line 520
    :try_start_0
    new-instance v0, Lorg/bouncycastle/cert/X509CRLHolder;

    invoke-interface {p0}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->generateSig(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/ASN1Object;)[B

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->generateCRLStructure(Lorg/bouncycastle/asn1/x509/TBSCertList;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/X509CRLHolder;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 522
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "cannot produce certificate signature"

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method private static generateSig(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/ASN1Object;)[B
    .locals 2
    .param p0, "signer"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p1, "tbsObj"    # Lorg/bouncycastle/asn1/ASN1Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signer",
            "tbsObj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    invoke-interface {p0}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 543
    .local v0, "sOut":Ljava/io/OutputStream;
    const-string v1, "DER"

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 546
    invoke-interface {p0}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addCRL(Lorg/bouncycastle/cert/X509CRLHolder;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 4
    .param p1, "other"    # Lorg/bouncycastle/cert/X509CRLHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 301
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    .line 303
    .local v0, "revocations":Lorg/bouncycastle/asn1/x509/TBSCertList;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    .line 311
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_0
    return-object p0
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;I)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 3
    .param p1, "userCertificateSerial"    # Ljava/math/BigInteger;
    .param p2, "revocationDate"    # Ljava/util/Date;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userCertificateSerial",
            "revocationDate",
            "reason"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, v2, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;I)V

    .line 258
    return-object p0
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;ILjava/util/Date;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 4
    .param p1, "userCertificateSerial"    # Ljava/math/BigInteger;
    .param p2, "revocationDate"    # Ljava/util/Date;
    .param p3, "reason"    # I
    .param p4, "invalidityDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userCertificateSerial",
            "revocationDate",
            "reason",
            "invalidityDate"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v3, p4}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, v2, p3, v3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    .line 275
    return-object p0
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 3
    .param p1, "userCertificateSerial"    # Ljava/math/BigInteger;
    .param p2, "revocationDate"    # Ljava/util/Date;
    .param p3, "extensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userCertificateSerial",
            "revocationDate",
            "extensions"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, v2, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 290
    return-object p0
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oid",
            "isCritical",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/cert/CertUtils;->addExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 330
    return-object p0
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "encodedValue"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oid",
            "isCritical",
            "encodedValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 350
    return-object p0
.end method

.method public addExtension(Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1
    .param p1, "extension"    # Lorg/bouncycastle/asn1/x509/Extension;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    .line 365
    return-object p0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CRLHolder;
    .locals 2
    .param p1, "signer"    # Lorg/bouncycastle/operator/ContentSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signer"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 463
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    iget-object v1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->generateTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->generateFullCRL(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/x509/TBSCertList;)Lorg/bouncycastle/cert/X509CRLHolder;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;ZLorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CRLHolder;
    .locals 4
    .param p1, "signer"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p2, "isCritical"    # Z
    .param p3, "altSigner"    # Lorg/bouncycastle/operator/ContentSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "signer",
            "isCritical",
            "altSigner"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 489
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->altSignatureAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p3}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 494
    nop

    .line 496
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    iget-object v1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 500
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v3, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->generatePreTBSCertList()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {p3, v3}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->generateSig(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/ASN1Object;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1, p2, v2}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 502
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 504
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    iget-object v1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 506
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->generateTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    .line 508
    .local v0, "tbsCert":Lorg/bouncycastle/asn1/x509/TBSCertList;
    new-instance v1, Lorg/bouncycastle/cert/X509CRLHolder;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-static {p1, v0}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->generateSig(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/ASN1Object;)[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->generateCRLStructure(Lorg/bouncycastle/asn1/x509/TBSCertList;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/X509CRLHolder;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 510
    .end local v0    # "tbsCert":Lorg/bouncycastle/asn1/x509/TBSCertList;
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "cannot produce certificate signature"

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalArgumentException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 491
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 493
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "cannot add altSignatureAlgorithm extension"

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->doGetExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0
.end method

.method public hasExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->doGetExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1}, Lorg/bouncycastle/cert/CertUtils;->doRemoveExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 448
    return-object p0
.end method

.method public replaceExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 5
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oid",
            "isCritical",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 387
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Extension;

    invoke-interface {p3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    invoke-static {v0, v1}, Lorg/bouncycastle/cert/CertUtils;->doReplaceExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    nop

    .line 394
    return-object p0

    .line 389
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot encode extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replaceExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 2
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "encodedValue"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oid",
            "isCritical",
            "encodedValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Extension;

    invoke-direct {v1, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    invoke-static {v0, v1}, Lorg/bouncycastle/cert/CertUtils;->doReplaceExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 434
    return-object p0
.end method

.method public replaceExtension(Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1
    .param p1, "extension"    # Lorg/bouncycastle/asn1/x509/Extension;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1}, Lorg/bouncycastle/cert/CertUtils;->doReplaceExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 412
    return-object p0
.end method

.method public setNextUpdate(Ljava/util/Date;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 215
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)Lorg/bouncycastle/cert/X509v2CRLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setNextUpdate(Ljava/util/Date;Ljava/util/Locale;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "dateLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "date",
            "dateLocale"
        }
    .end annotation

    .line 229
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)Lorg/bouncycastle/cert/X509v2CRLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1
    .param p1, "date"    # Lorg/bouncycastle/asn1/x509/Time;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 243
    return-object p0
.end method

.method public setThisUpdate(Ljava/util/Date;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 175
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)Lorg/bouncycastle/cert/X509v2CRLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setThisUpdate(Ljava/util/Date;Ljava/util/Locale;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "dateLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "date",
            "dateLocale"
        }
    .end annotation

    .line 189
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)Lorg/bouncycastle/cert/X509v2CRLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1
    .param p1, "date"    # Lorg/bouncycastle/asn1/x509/Time;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 203
    return-object p0
.end method
