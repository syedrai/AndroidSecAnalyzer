.class public Lorg/bouncycastle/tsp/TimeStampRequest;
.super Ljava/lang/Object;
.source "TimeStampRequest.java"


# static fields
.field private static EMPTY_SET:Ljava/util/Set;


# instance fields
.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tsp/TimeStampRequest;->EMPTY_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
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
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->loadRequest(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/TimeStampRequest;-><init>(Lorg/bouncycastle/asn1/tsp/TimeStampReq;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/TimeStampReq;)V
    .locals 1
    .param p1, "req"    # Lorg/bouncycastle/asn1/tsp/TimeStampReq;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "req"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    .line 36
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 37
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "req"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "req"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/TimeStampRequest;-><init>(Ljava/io/InputStream;)V

    .line 49
    return-void
.end method

.method private convert(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .param p1, "orig"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orig"
        }
    .end annotation

    .line 250
    if-nez p1, :cond_0

    .line 252
    return-object p1

    .line 255
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 257
    .local v0, "con":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 261
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 263
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v2    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 271
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method private static loadRequest(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/tsp/TimeStampReq;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
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
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const-string v0, "malformed request: "

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 74
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/IOException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/io/IOException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getCertReq()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getCertReq()Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getCertReq()Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    return v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 2

    .line 240
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lorg/bouncycastle/tsp/TimeStampRequest;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 245
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getCriticalExtensionOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getEncoded()[B

    move-result-object v0

    return-object v0
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

    .line 207
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtensionOIDs()Ljava/util/List;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/tsp/TSPUtil;->getExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getMessageImprintAlgID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getMessageImprintDigest()[B
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 2

    .line 226
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lorg/bouncycastle/tsp/TimeStampRequest;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getNonCriticalExtensionOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getNonce()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getNonce()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public hasExtensions()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validate(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .param p1, "algorithms"    # Ljava/util/Set;
    .param p2, "policies"    # Ljava/util/Set;
    .param p3, "extensions"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithms",
            "policies",
            "extensions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 152
    invoke-direct {p0, p2}, Lorg/bouncycastle/tsp/TimeStampRequest;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 153
    invoke-direct {p0, p3}, Lorg/bouncycastle/tsp/TimeStampRequest;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    .line 155
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "request contains unknown policy"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 165
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 167
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 168
    .local v0, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 171
    .local v1, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    .end local v1    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_1

    .line 173
    .restart local v1    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    new-instance v2, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v3, "request contains unknown extension"

    const/high16 v4, 0x800000

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 178
    .end local v0    # "en":Ljava/util/Enumeration;
    .end local v1    # "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tsp/TSPUtil;->getDigestLength(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "digestLength":I
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintDigest()[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_4

    .line 184
    return-void

    .line 182
    :cond_4
    new-instance v1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v2, "imprint digest the wrong length"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 157
    .end local v0    # "digestLength":I
    :cond_5
    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "request contains unknown algorithm"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
