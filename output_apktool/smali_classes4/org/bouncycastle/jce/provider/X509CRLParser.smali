.class public Lorg/bouncycastle/jce/provider/X509CRLParser;
.super Lorg/bouncycastle/x509/X509StreamParserSpi;
.source "X509CRLParser.java"


# static fields
.field private static final PEM_PARSER:Lorg/bouncycastle/jce/provider/PEMUtil;


# instance fields
.field private currentStream:Ljava/io/InputStream;

.field private sData:Lorg/bouncycastle/asn1/ASN1Set;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lorg/bouncycastle/jce/provider/PEMUtil;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/X509CRLParser;->PEM_PARSER:Lorg/bouncycastle/jce/provider/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/x509/X509StreamParserSpi;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sData:Lorg/bouncycastle/asn1/ASN1Set;

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sDataObjectCount:I

    .line 30
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    return-void
.end method

.method private getCRL()Ljava/security/cert/CRL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sData:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sDataObjectCount:I

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sData:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lorg/bouncycastle/jce/provider/X509CRLObject;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sData:Lorg/bouncycastle/asn1/ASN1Set;

    iget v2, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sDataObjectCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sDataObjectCount:I

    .line 64
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    .line 62
    return-object v0

    .line 59
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private readDERCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    .local v0, "dIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 39
    .local v1, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_0

    .line 42
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 45
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 44
    invoke-static {v4, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/pkcs/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 45
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sData:Lorg/bouncycastle/asn1/ASN1Set;

    .line 47
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/X509CRLParser;->getCRL()Ljava/security/cert/CRL;

    move-result-object v2

    return-object v2

    .line 51
    :cond_0
    new-instance v2, Lorg/bouncycastle/jce/provider/X509CRLObject;

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    return-object v2
.end method

.method private readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 71
    sget-object v0, Lorg/bouncycastle/jce/provider/X509CRLParser;->PEM_PARSER:Lorg/bouncycastle/jce/provider/PEMUtil;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/PEMUtil;->readPEMObject(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 73
    .local v0, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lorg/bouncycastle/jce/provider/X509CRLObject;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    return-object v1

    .line 78
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public engineInit(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sData:Lorg/bouncycastle/asn1/ASN1Set;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sDataObjectCount:I

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    .line 91
    :cond_0
    return-void
.end method

.method public engineRead()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sData:Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 100
    iget v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sDataObjectCount:I

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sData:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 102
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/X509CRLParser;->getCRL()Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    iput-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sData:Lorg/bouncycastle/asn1/ASN1Set;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->sDataObjectCount:I

    .line 108
    return-object v1

    .line 112
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 115
    .local v0, "tag":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 117
    return-object v1

    .line 120
    :cond_2
    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    .line 122
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 123
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/X509CRLParser;->readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v1

    return-object v1

    .line 127
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 128
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/X509CRLParser;->readDERCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 131
    .end local v0    # "tag":I
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/x509/util/StreamParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/x509/util/StreamParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineReadAll()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "certs":Ljava/util/List;
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLParser;->engineRead()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CRL;

    move-object v2, v1

    .local v2, "crl":Ljava/security/cert/CRL;
    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_0
    return-object v0
.end method
