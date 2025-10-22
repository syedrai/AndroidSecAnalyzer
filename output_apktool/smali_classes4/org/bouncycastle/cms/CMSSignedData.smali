.class public Lorg/bouncycastle/cms/CMSSignedData;
.super Ljava/lang/Object;
.source "CMSSignedData.java"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# static fields
.field private static final DIGEST_ALG_ID_FINDER:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

.field private static final HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;


# instance fields
.field contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private hashes:Ljava/util/Map;

.field signedContent:Lorg/bouncycastle/cms/CMSTypedData;

.field signedData:Lorg/bouncycastle/asn1/cms/SignedData;

.field signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    .line 70
    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/CMSSignedData;->DIGEST_ALG_ID_FINDER:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "sigData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 139
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .param p1, "hashes"    # Ljava/util/Map;
    .param p2, "sigData"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hashes",
            "sigData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    .line 183
    iput-object p2, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 184
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[B)V
    .locals 1
    .param p1, "hashes"    # Ljava/util/Map;
    .param p2, "sigBlock"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hashes",
            "sigBlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 115
    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Ljava/util/Map;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 4
    .param p1, "sigData"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 192
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    .line 198
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 199
    .local v0, "content":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v0, :cond_1

    .line 201
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 204
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Lorg/bouncycastle/cms/PKCS7ProcessableObject;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/PKCS7ProcessableObject;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    goto :goto_0

    .line 213
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    .line 215
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSProcessable;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "signedContent"    # Lorg/bouncycastle/cms/CMSProcessable;
    .param p2, "sigData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signedContent",
            "sigData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .param p1, "signedContent"    # Lorg/bouncycastle/cms/CMSProcessable;
    .param p2, "sigData"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "signedContent",
            "sigData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    instance-of v0, p1, Lorg/bouncycastle/cms/CMSTypedData;

    if-eqz v0, :cond_0

    .line 149
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/CMSTypedData;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/CMSSignedData$1;-><init>(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/cms/CMSProcessable;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    .line 173
    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 174
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    .line 175
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSProcessable;[B)V
    .locals 1
    .param p1, "signedContent"    # Lorg/bouncycastle/cms/CMSProcessable;
    .param p2, "sigBlock"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signedContent",
            "sigBlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 101
    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 102
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    .locals 1
    .param p1, "c"    # Lorg/bouncycastle/cms/CMSSignedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iget-object v0, p1, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    .line 84
    iget-object v0, p1, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 85
    iget-object v0, p1, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    .line 86
    iget-object v0, p1, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    .line 87
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "sigBlock"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigBlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 93
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 94
    return-void
.end method

.method public static addDigestAlgorithm(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 1
    .param p0, "signedData"    # Lorg/bouncycastle/cms/CMSSignedData;
    .param p1, "digestAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signedData",
            "digestAlgorithm"
        }
    .end annotation

    .line 495
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->DIGEST_ALG_ID_FINDER:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;->addDigestAlgorithm(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public static addDigestAlgorithm(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 11
    .param p0, "signedData"    # Lorg/bouncycastle/cms/CMSSignedData;
    .param p1, "digestAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "digestAlgIdFinder"    # Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "signedData",
            "digestAlgorithm",
            "digestAlgIdFinder"
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getDigestAlgorithmIDs()Ljava/util/Set;

    move-result-object v0

    .line 511
    .local v0, "digestAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    sget-object v1, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 516
    .local v1, "digestAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    return-object p0

    .line 524
    :cond_0
    new-instance v2, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v2, p0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V

    .line 529
    .local v2, "cms":Lorg/bouncycastle/cms/CMSSignedData;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 531
    .local v3, "digestAlgs":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 532
    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 534
    sget-object v5, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v5, v6, p2}, Lorg/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-static {v3}, Lorg/bouncycastle/cms/CMSUtils;->convertToDlSet(Ljava/util/Set;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 539
    .local v5, "digestSet":Lorg/bouncycastle/asn1/ASN1Set;
    iget-object v6, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cms/SignedData;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 544
    .local v6, "sD":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 545
    .local v7, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 546
    invoke-virtual {v7, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 548
    const/4 v8, 0x2

    .local v8, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 550
    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 548
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 553
    .end local v8    # "i":I
    :cond_2
    new-instance v8, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v8}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v8

    iput-object v8, v2, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    .line 558
    new-instance v8, Lorg/bouncycastle/asn1/cms/ContentInfo;

    iget-object v9, v2, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    iget-object v10, v2, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v8, v2, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 560
    return-object v2
.end method

.method private getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 222
    const-string v0, "Malformed content."

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 228
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 224
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public static replaceCertificatesAndCRLs(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 11
    .param p0, "signedData"    # Lorg/bouncycastle/cms/CMSSignedData;
    .param p1, "certificates"    # Lorg/bouncycastle/util/Store;
    .param p2, "attrCerts"    # Lorg/bouncycastle/util/Store;
    .param p3, "revocations"    # Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "signedData",
            "certificates",
            "attrCerts",
            "revocations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 669
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V

    .line 674
    .local v0, "cms":Lorg/bouncycastle/cms/CMSSignedData;
    const/4 v1, 0x0

    .line 675
    .local v1, "certSet":Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v2, 0x0

    .line 677
    .local v2, "crlSet":Lorg/bouncycastle/asn1/ASN1Set;
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    .line 679
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v3, "certs":Ljava/util/List;
    if-eqz p1, :cond_1

    .line 683
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 685
    :cond_1
    if-eqz p2, :cond_2

    .line 687
    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getAttributeCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 690
    :cond_2
    invoke-static {v3}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    .line 692
    .local v4, "set":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 694
    move-object v1, v4

    move-object v8, v1

    goto :goto_0

    .line 698
    .end local v3    # "certs":Ljava/util/List;
    .end local v4    # "set":Lorg/bouncycastle/asn1/ASN1Set;
    :cond_3
    move-object v8, v1

    .end local v1    # "certSet":Lorg/bouncycastle/asn1/ASN1Set;
    .local v8, "certSet":Lorg/bouncycastle/asn1/ASN1Set;
    :goto_0
    if-eqz p3, :cond_4

    .line 700
    invoke-static {p3}, Lorg/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 702
    .local v1, "set":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 704
    move-object v2, v1

    move-object v9, v2

    goto :goto_1

    .line 711
    .end local v1    # "set":Lorg/bouncycastle/asn1/ASN1Set;
    :cond_4
    move-object v9, v2

    .end local v2    # "crlSet":Lorg/bouncycastle/asn1/ASN1Set;
    .local v9, "crlSet":Lorg/bouncycastle/asn1/ASN1Set;
    :goto_1
    new-instance v5, Lorg/bouncycastle/asn1/cms/SignedData;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    .line 712
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v7

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    .line 715
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/asn1/cms/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v5, v0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    .line 720
    new-instance v1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    iget-object v2, v0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget-object v3, v0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, v0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 722
    return-object v0
.end method

.method public static replaceSigners(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/cms/SignerInformationStore;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 1
    .param p0, "signedData"    # Lorg/bouncycastle/cms/CMSSignedData;
    .param p1, "signerInformationStore"    # Lorg/bouncycastle/cms/SignerInformationStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signedData",
            "signerInformationStore"
        }
    .end annotation

    .line 576
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->DIGEST_ALG_ID_FINDER:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;->replaceSigners(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/cms/SignerInformationStore;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public static replaceSigners(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/cms/SignerInformationStore;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 11
    .param p0, "signedData"    # Lorg/bouncycastle/cms/CMSSignedData;
    .param p1, "signerInformationStore"    # Lorg/bouncycastle/cms/SignerInformationStore;
    .param p2, "digestAlgIdFinder"    # Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "signedData",
            "signerInformationStore",
            "digestAlgIdFinder"
        }
    .end annotation

    .line 597
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V

    .line 602
    .local v0, "cms":Lorg/bouncycastle/cms/CMSSignedData;
    iput-object p1, v0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    .line 607
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 609
    .local v1, "digestAlgs":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v2

    .line 610
    .local v2, "signers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cms/SignerInformation;>;"
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 612
    .local v3, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 613
    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 615
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/cms/SignerInformation;

    .line 616
    .local v5, "signer":Lorg/bouncycastle/cms/SignerInformation;
    invoke-static {v1, v5, p2}, Lorg/bouncycastle/cms/CMSUtils;->addDigestAlgs(Ljava/util/Set;Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 617
    invoke-virtual {v5}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 618
    .end local v5    # "signer":Lorg/bouncycastle/cms/SignerInformation;
    goto :goto_0

    .line 620
    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/cms/CMSUtils;->convertToDlSet(Ljava/util/Set;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 621
    .local v5, "digestSet":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v6, Lorg/bouncycastle/asn1/DLSet;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DLSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 622
    .local v6, "signerSet":Lorg/bouncycastle/asn1/ASN1Set;
    iget-object v7, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/cms/SignedData;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 627
    .local v7, "sD":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 628
    .end local v3    # "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v8, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 629
    invoke-virtual {v8, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 631
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v3, v9, :cond_1

    .line 633
    invoke-virtual {v7, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 631
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 636
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v8, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 638
    new-instance v3, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v3, v8}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    .line 643
    new-instance v3, Lorg/bouncycastle/asn1/cms/ContentInfo;

    iget-object v9, v0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    iget-object v10, v0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-direct {v3, v9, v10}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v3, v0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 645
    return-object v0
.end method

.method private verifyCounterSignature(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z
    .locals 5
    .param p1, "counterSigner"    # Lorg/bouncycastle/cms/SignerInformation;
    .param p2, "verifierProvider"    # Lorg/bouncycastle/cms/SignerInformationVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "counterSigner",
            "verifierProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 466
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/cms/SignerInformationVerifierProvider;->get(Lorg/bouncycastle/cms/SignerId;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    move-result-object v0

    .line 468
    .local v0, "counterVerifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    invoke-virtual {p1, v0}, Lorg/bouncycastle/cms/SignerInformation;->verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 470
    return v2

    .line 473
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getCounterSignatures()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v1

    .line 474
    .local v1, "counterSigners":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cIt":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 476
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/cms/SignerInformation;

    invoke-direct {p0, v4, p2}, Lorg/bouncycastle/cms/CMSSignedData;->verifyCounterSignature(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 478
    return v2

    .line 482
    .end local v3    # "cIt":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public getAttributeCertificates()Lorg/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509AttributeCertificateHolder;",
            ">;"
        }
    .end annotation

    .line 324
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getAttributeCertificates(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCRLs()Lorg/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation

    .line 314
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCRLs(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    .line 304
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCertificates(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithmIDs()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 348
    .local v0, "digests":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/util/Store;
    .locals 2
    .param p1, "otherRevocationInfoFormat"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherRevocationInfoFormat"
        }
    .end annotation

    .line 336
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getSignedContent()Lorg/bouncycastle/cms/CMSTypedData;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    return-object v0
.end method

.method public getSignedContentTypeOID()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;
    .locals 9

    .line 248
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    if-nez v0, :cond_3

    .line 250
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 251
    .local v0, "s":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v1, "signerInfos":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 255
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    .line 256
    .local v3, "info":Lorg/bouncycastle/asn1/cms/SignerInfo;
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 258
    .local v4, "contentType":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v5, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 260
    new-instance v5, Lorg/bouncycastle/cms/SignerInformation;

    iget-object v7, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    invoke-direct {v5, v3, v4, v7, v6}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 264
    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 265
    .local v5, "obj":Ljava/lang/Object;
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    :goto_1
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 267
    .local v7, "hash":[B
    new-instance v8, Lorg/bouncycastle/cms/SignerInformation;

    invoke-direct {v8, v3, v4, v6, v7}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v3    # "info":Lorg/bouncycastle/asn1/cms/SignerInfo;
    .end local v4    # "contentType":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v7    # "hash":[B
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lorg/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v2, v1}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    .line 274
    .end local v0    # "s":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v1    # "signerInfos":Ljava/util/List;
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public isCertificateManagementMessage()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDetachedSignature()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public verifySignatures(Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z
    .locals 1
    .param p1, "verifierProvider"    # Lorg/bouncycastle/cms/SignerInformationVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifierProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;->verifySignatures(Lorg/bouncycastle/cms/SignerInformationVerifierProvider;Z)Z

    move-result v0

    return v0
.end method

.method public verifySignatures(Lorg/bouncycastle/cms/SignerInformationVerifierProvider;Z)Z
    .locals 8
    .param p1, "verifierProvider"    # Lorg/bouncycastle/cms/SignerInformationVerifierProvider;
    .param p2, "ignoreCounterSignatures"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verifierProvider",
            "ignoreCounterSignatures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    .line 428
    .local v0, "signers":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 430
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cms/SignerInformation;

    .line 434
    .local v2, "signer":Lorg/bouncycastle/cms/SignerInformation;
    :try_start_0
    invoke-virtual {v2}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/bouncycastle/cms/SignerInformationVerifierProvider;->get(Lorg/bouncycastle/cms/SignerId;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    move-result-object v3

    .line 436
    .local v3, "verifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    invoke-virtual {v2, v3}, Lorg/bouncycastle/cms/SignerInformation;->verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 438
    return v5

    .line 441
    :cond_0
    if-nez p2, :cond_2

    .line 443
    invoke-virtual {v2}, Lorg/bouncycastle/cms/SignerInformation;->getCounterSignatures()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v4

    .line 445
    .local v4, "counterSigners":Ljava/util/Collection;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "cIt":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 447
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/cms/SignerInformation;

    invoke-direct {p0, v7, p1}, Lorg/bouncycastle/cms/CMSSignedData;->verifyCounterSignature(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z

    move-result v7
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_1

    .line 449
    return v5

    .line 457
    .end local v3    # "verifier":Lorg/bouncycastle/cms/SignerInformationVerifier;
    .end local v4    # "counterSigners":Ljava/util/Collection;
    .end local v6    # "cIt":Ljava/util/Iterator;
    :cond_2
    nop

    .line 458
    .end local v2    # "signer":Lorg/bouncycastle/cms/SignerInformation;
    goto :goto_0

    .line 454
    .restart local v2    # "signer":Lorg/bouncycastle/cms/SignerInformation;
    :catch_0
    move-exception v3

    .line 456
    .local v3, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v4, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v3}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failure in verifier provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 460
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "signer":Lorg/bouncycastle/cms/SignerInformation;
    .end local v3    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    :cond_3
    const/4 v1, 0x1

    return v1
.end method
