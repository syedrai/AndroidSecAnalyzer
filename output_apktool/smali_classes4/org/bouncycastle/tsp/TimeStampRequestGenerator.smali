.class public Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
.super Ljava/lang/Object;
.source "TimeStampRequestGenerator.java"


# static fields
.field private static final dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;


# instance fields
.field private certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

.field private reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 31
    return-void
.end method


# virtual methods
.method public addExtension(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "OID"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "OID",
            "critical",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-interface {p3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->addExtension(Ljava/lang/String;Z[B)V

    .line 67
    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .locals 2
    .param p1, "OID"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "OID",
            "critical",
            "value"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 81
    return-void
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
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
            Lorg/bouncycastle/tsp/TSPIOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/tsp/TSPUtil;->addExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    return-void
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p3, "value"    # [B
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

    .line 106
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 107
    return-void
.end method

.method public generate(Ljava/lang/String;[B)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1
    .param p1, "digestAlgorithm"    # Ljava/lang/String;
    .param p2, "digest"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestAlgorithm",
            "digest"
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Ljava/lang/String;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/lang/String;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 9
    .param p1, "digestAlgorithmOID"    # Ljava/lang/String;
    .param p2, "digest"    # [B
    .param p3, "nonce"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestAlgorithmOID",
            "digest",
            "nonce"
        }
    .end annotation

    .line 127
    if-eqz p1, :cond_2

    .line 132
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "digestAlgOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v1, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 135
    .local v1, "algID":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v2, Lorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-direct {v2, v1, p2}, Lorg/bouncycastle/asn1/tsp/MessageImprint;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    move-object v4, v2

    .line 137
    .local v4, "messageImprint":Lorg/bouncycastle/asn1/tsp/MessageImprint;
    const/4 v2, 0x0

    .line 139
    .local v2, "ext":Lorg/bouncycastle/asn1/x509/Extensions;
    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    .line 139
    :cond_0
    move-object v8, v2

    .line 144
    .end local v2    # "ext":Lorg/bouncycastle/asn1/x509/Extensions;
    .local v8, "ext":Lorg/bouncycastle/asn1/x509/Extensions;
    :goto_0
    if-eqz p3, :cond_1

    .line 146
    new-instance v2, Lorg/bouncycastle/tsp/TimeStampRequest;

    new-instance v3, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    iget-object v5, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iget-object v7, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;-><init>(Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/tsp/TimeStampRequest;-><init>(Lorg/bouncycastle/asn1/tsp/TimeStampReq;)V

    return-object v2

    .line 151
    :cond_1
    new-instance v2, Lorg/bouncycastle/tsp/TimeStampRequest;

    new-instance v3, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    iget-object v5, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;-><init>(Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/tsp/TimeStampRequest;-><init>(Lorg/bouncycastle/asn1/tsp/TimeStampReq;)V

    return-object v2

    .line 129
    .end local v0    # "digestAlgOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v1    # "algID":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "messageImprint":Lorg/bouncycastle/asn1/tsp/MessageImprint;
    .end local v8    # "ext":Lorg/bouncycastle/asn1/x509/Extensions;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No digest algorithm specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1
    .param p1, "digestAlgorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "digest"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestAlgorithm",
            "digest"
        }
    .end annotation

    .line 158
    sget-object v0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1
    .param p1, "digestAlgorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "digest"    # [B
    .param p3, "nonce"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestAlgorithm",
            "digest",
            "nonce"
        }
    .end annotation

    .line 163
    sget-object v0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1
    .param p1, "digestAlgorithmID"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "digest"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestAlgorithmID",
            "digest"
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 7
    .param p1, "digestAlgorithmID"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "digest"    # [B
    .param p3, "nonce"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestAlgorithmID",
            "digest",
            "nonce"
        }
    .end annotation

    .line 178
    if-eqz p1, :cond_2

    .line 183
    new-instance v0, Lorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/tsp/MessageImprint;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    move-object v2, v0

    .line 185
    .local v2, "messageImprint":Lorg/bouncycastle/asn1/tsp/MessageImprint;
    const/4 v0, 0x0

    .line 187
    .local v0, "ext":Lorg/bouncycastle/asn1/x509/Extensions;
    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 187
    :cond_0
    move-object v6, v0

    .line 192
    .end local v0    # "ext":Lorg/bouncycastle/asn1/x509/Extensions;
    .local v6, "ext":Lorg/bouncycastle/asn1/x509/Extensions;
    :goto_0
    if-eqz p3, :cond_1

    .line 194
    new-instance v0, Lorg/bouncycastle/tsp/TimeStampRequest;

    new-instance v1, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v4, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iget-object v5, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;-><init>(Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TimeStampRequest;-><init>(Lorg/bouncycastle/asn1/tsp/TimeStampReq;)V

    return-object v0

    .line 199
    :cond_1
    new-instance v0, Lorg/bouncycastle/tsp/TimeStampRequest;

    new-instance v1, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;-><init>(Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TimeStampRequest;-><init>(Lorg/bouncycastle/asn1/tsp/TimeStampReq;)V

    return-object v0

    .line 180
    .end local v2    # "messageImprint":Lorg/bouncycastle/asn1/tsp/MessageImprint;
    .end local v6    # "ext":Lorg/bouncycastle/asn1/x509/Extensions;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "digest algorithm not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCertReq(Z)V
    .locals 1
    .param p1, "certReq"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certReq"
        }
    .end annotation

    .line 52
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 53
    return-void
.end method

.method public setReqPolicy(Ljava/lang/String;)V
    .locals 1
    .param p1, "reqPolicy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reqPolicy"
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    return-void
.end method

.method public setReqPolicy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "reqPolicy"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reqPolicy"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    return-void
.end method
