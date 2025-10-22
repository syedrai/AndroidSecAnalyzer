.class public Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
.super Ljava/lang/Object;
.source "ERSEvidenceRecord.java"


# instance fields
.field private final digCalc:Lorg/bouncycastle/operator/DigestCalculator;

.field private final digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private final evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

.field private final firstArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

.field private final lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

.field private final previousChainsDigest:[B

.field private final primaryArchiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1
    .param p1, "ersIn"    # Ljava/io/InputStream;
    .param p2, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ersIn",
            "digestCalculatorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {p1}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 9
    .param p1, "evidenceRecord"    # Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
    .param p2, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evidenceRecord",
            "digestCalculatorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    .line 65
    iput-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    .line 67
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getArchiveTimeStampSequence()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    move-result-object v0

    .line 69
    .local v0, "sequence":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;->getArchiveTimeStampChains()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;

    move-result-object v1

    .line 70
    .local v1, "chains":[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;->getArchiveTimestamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v3

    aget-object v3, v3, v2

    iput-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->primaryArchiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    .line 73
    invoke-direct {p0, v1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->validateChains([Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;)V

    .line 75
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    .line 76
    .local v3, "chain":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;->getArchiveTimestamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v5

    .line 78
    .local v5, "archiveTimestamps":[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    new-instance v6, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    array-length v7, v5

    sub-int/2addr v7, v4

    aget-object v7, v5, v7

    invoke-direct {v6, v7, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    iput-object v6, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    .line 80
    array-length v6, v1

    if-le v6, v4, :cond_1

    .line 84
    :try_start_0
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 85
    .local v6, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v1

    sub-int/2addr v8, v4

    if-eq v7, v8, :cond_0

    .line 87
    aget-object v8, v1, v7

    invoke-virtual {v6, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 90
    .end local v7    # "i":I
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v4}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-interface {p2, v4}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    .line 91
    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 93
    .local v4, "dOut":Ljava/io/OutputStream;
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v8, "DER"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 94
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 96
    iget-object v7, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v7}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v7

    iput-object v7, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->previousChainsDigest:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v4    # "dOut":Ljava/io/OutputStream;
    .end local v6    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_1

    .line 98
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 105
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    .line 106
    iput-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->previousChainsDigest:[B

    .line 109
    :goto_1
    new-instance v4, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    iget-object v6, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->previousChainsDigest:[B

    aget-object v2, v5, v2

    invoke-direct {v4, v6, v2, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>([BLorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    iput-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->firstArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    .line 110
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1
    .param p1, "evidenceRecord"    # [B
    .param p2, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evidenceRecord",
            "digestCalculatorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 58
    invoke-static {p1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 59
    return-void
.end method

.method private buildTspRenewalGenerator()Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 355
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    .local v0, "digCalc":Lorg/bouncycastle/operator/DigestCalculator;
    nop

    .line 362
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->getArchiveTimeStamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v1

    .line 364
    .local v1, "previous":[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;

    invoke-direct {v2, v0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;-><init>(Lorg/bouncycastle/operator/DigestCalculator;)V

    .line 371
    .local v2, "atsGen":Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 372
    .local v3, "prevTimes":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSData;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-eq v4, v5, :cond_0

    .line 376
    :try_start_1
    new-instance v5, Lorg/bouncycastle/tsp/ers/ERSByteData;

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v6

    const-string v7, "DER"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/tsp/ers/ERSByteData;-><init>([B)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 381
    nop

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 378
    :catch_0
    move-exception v5

    .line 380
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string/jumbo v7, "unable to process previous ArchiveTimeStamps"

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 383
    .end local v4    # "i":I
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v4, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    invoke-direct {v4, v3}, Lorg/bouncycastle/tsp/ers/ERSDataGroup;-><init>(Ljava/util/List;)V

    .line 385
    .local v4, "timestampGroup":Lorg/bouncycastle/tsp/ers/ERSDataGroup;
    invoke-virtual {v2, v4}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->addData(Lorg/bouncycastle/tsp/ers/ERSData;)V

    .line 387
    return-object v2

    .line 366
    .end local v2    # "atsGen":Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
    .end local v3    # "prevTimes":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSData;>;"
    .end local v4    # "timestampGroup":Lorg/bouncycastle/tsp/ers/ERSDataGroup;
    :cond_1
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v3, "digest mismatch for timestamp renewal"

    invoke-direct {v2, v3}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    .end local v0    # "digCalc":Lorg/bouncycastle/operator/DigestCalculator;
    .end local v1    # "previous":[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    :catch_1
    move-exception v0

    .line 359
    .local v0, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private extractTimeStamp(Lorg/bouncycastle/asn1/cms/ContentInfo;)Lorg/bouncycastle/asn1/tsp/TSTInfo;
    .locals 3
    .param p1, "timeStamp"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    .line 194
    .local v0, "tsData":Lorg/bouncycastle/asn1/cms/SignedData;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_TSTInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    nop

    .line 197
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    .line 196
    invoke-static {v1}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v1

    .line 199
    .local v1, "tstData":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    return-object v1

    .line 203
    .end local v1    # "tstData":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    :cond_0
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    const-string v2, "cannot parse time stamp"

    invoke-direct {v1, v2}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateChains([Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;)V
    .locals 13
    .param p1, "chains"    # [Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chains"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 117
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;->getArchiveTimestamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v1

    .line 118
    .local v1, "archiveTimeStamps":[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 119
    .local v3, "prevArchiveTimeStamp":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 120
    .local v2, "digAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    array-length v5, v1

    if-eq v4, v5, :cond_2

    .line 123
    aget-object v5, v1, v4

    .line 126
    .local v5, "archiveTimeStamp":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v6

    .line 133
    .local v6, "timeStamp":Lorg/bouncycastle/asn1/cms/ContentInfo;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    invoke-direct {p0, v6}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->extractTimeStamp(Lorg/bouncycastle/asn1/cms/ContentInfo;)Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v7

    .line 144
    .local v7, "tstData":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    :try_start_0
    iget-object v8, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-interface {v8, v2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v8

    .line 145
    .local v8, "digCalc":Lorg/bouncycastle/operator/DigestCalculator;
    new-instance v9, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-direct {v9, v5, v8}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;)V

    .line 147
    .local v9, "ersArchiveTimeStamp":Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
    new-instance v10, Lorg/bouncycastle/tsp/ers/ERSByteData;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v11

    const-string v12, "DER"

    invoke-virtual {v11, v12}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/tsp/ers/ERSByteData;-><init>([B)V

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getGenTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v8    # "digCalc":Lorg/bouncycastle/operator/DigestCalculator;
    .end local v9    # "ersArchiveTimeStamp":Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
    nop

    .line 154
    move-object v3, v5

    .line 120
    .end local v5    # "archiveTimeStamp":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .end local v6    # "timeStamp":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v7    # "tstData":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 149
    .restart local v5    # "archiveTimeStamp":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .restart local v6    # "timeStamp":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .restart local v7    # "tstData":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    :catch_0
    move-exception v8

    .line 151
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid timestamp renewal found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 139
    .end local v7    # "tstData":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v7, Lorg/bouncycastle/tsp/TSPException;

    const-string v8, "cannot identify TSTInfo"

    invoke-direct {v7, v8}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 128
    .end local v6    # "timeStamp":Lorg/bouncycastle/asn1/cms/ContentInfo;
    :cond_1
    new-instance v6, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v7, "invalid digest algorithm in chain"

    invoke-direct {v6, v7}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 115
    .end local v1    # "archiveTimeStamps":[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .end local v2    # "digAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v3    # "prevArchiveTimeStamp":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .end local v4    # "j":I
    .end local v5    # "archiveTimeStamp":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 157
    .end local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public generateHashRenewalRequest(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/tsp/ers/ERSData;Lorg/bouncycastle/tsp/TimeStampRequestGenerator;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1
    .param p1, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "data"    # Lorg/bouncycastle/tsp/ers/ERSData;
    .param p3, "tspReqGen"    # Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "data",
            "tspReqGen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->generateHashRenewalRequest(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/tsp/ers/ERSData;Lorg/bouncycastle/tsp/TimeStampRequestGenerator;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v0

    return-object v0
.end method

.method public generateHashRenewalRequest(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/tsp/ers/ERSData;Lorg/bouncycastle/tsp/TimeStampRequestGenerator;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 3
    .param p1, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "data"    # Lorg/bouncycastle/tsp/ers/ERSData;
    .param p3, "tspReqGen"    # Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .param p4, "nonce"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "data",
            "tspReqGen",
            "nonce"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->firstArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p2, v1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    nop

    .line 409
    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;-><init>(Lorg/bouncycastle/operator/DigestCalculator;)V

    .line 411
    .local v0, "atsGen":Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
    invoke-virtual {v0, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->addData(Lorg/bouncycastle/tsp/ers/ERSData;)V

    .line 413
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getArchiveTimeStampSequence()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->addPreviousChains(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;)V

    .line 415
    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->generateTimeStampRequest(Lorg/bouncycastle/tsp/TimeStampRequestGenerator;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v1

    return-object v1

    .line 404
    .end local v0    # "atsGen":Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v2, "attempt to hash renew on invalid data"

    invoke-direct {v1, v2}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateTimeStampRenewalRequest(Lorg/bouncycastle/tsp/TimeStampRequestGenerator;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1
    .param p1, "tspReqGen"    # Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tspReqGen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->generateTimeStampRenewalRequest(Lorg/bouncycastle/tsp/TimeStampRequestGenerator;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v0

    return-object v0
.end method

.method public generateTimeStampRenewalRequest(Lorg/bouncycastle/tsp/TimeStampRequestGenerator;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 4
    .param p1, "tspReqGen"    # Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .param p2, "nonce"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tspReqGen",
            "nonce"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 320
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->buildTspRenewalGenerator()Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;

    move-result-object v0

    .line 324
    .local v0, "atsGen":Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->generateTimeStampRequest(Lorg/bouncycastle/tsp/TimeStampRequestGenerator;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 326
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method getArchiveTimeStamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .locals 4

    .line 161
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getArchiveTimeStampSequence()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    move-result-object v0

    .line 162
    .local v0, "sequence":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;->getArchiveTimeStampChains()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;

    move-result-object v1

    .line 163
    .local v1, "chains":[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    .line 165
    .local v2, "chain":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;->getArchiveTimestamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v3

    return-object v3
.end method

.method getDigestAlgorithmProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryRootHash()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->primaryArchiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    .line 178
    .local v0, "timeStamp":Lorg/bouncycastle/asn1/cms/ContentInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->extractTimeStamp(Lorg/bouncycastle/asn1/cms/ContentInfo;)Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v1

    .line 182
    .local v1, "tstData":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v2

    return-object v2

    .line 186
    .end local v1    # "tstData":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    :cond_0
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v2, "cannot identify TSTInfo for digest"

    invoke-direct {v1, v2}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSigningCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->getSigningCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    return-object v0
.end method

.method public isContaining(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)Z
    .locals 1
    .param p1, "data"    # Lorg/bouncycastle/tsp/ers/ERSData;
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "date"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->firstArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->isContaining(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isRelatedTo(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)Z
    .locals 2
    .param p1, "er"    # Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "er"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->primaryArchiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->primaryArchiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public renewHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/tsp/ers/ERSData;Lorg/bouncycastle/tsp/TimeStampResponse;)Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    .locals 5
    .param p1, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .param p2, "data"    # Lorg/bouncycastle/tsp/ers/ERSData;
    .param p3, "tspResp"    # Lorg/bouncycastle/tsp/TimeStampResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "data",
            "tspResp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 424
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->firstArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p2, v1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 429
    nop

    .line 433
    :try_start_1
    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;

    invoke-direct {v0, p1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;-><init>(Lorg/bouncycastle/operator/DigestCalculator;)V

    .line 435
    .local v0, "atsGen":Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
    invoke-virtual {v0, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->addData(Lorg/bouncycastle/tsp/ers/ERSData;)V

    .line 437
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getArchiveTimeStampSequence()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->addPreviousChains(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;)V

    .line 439
    invoke-virtual {v0, p3}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->generateArchiveTimeStamp(Lorg/bouncycastle/tsp/TimeStampResponse;)Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v1

    .line 441
    .local v1, "ats":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->addArchiveTimeStamp(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Z)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 447
    .end local v0    # "atsGen":Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
    .end local v1    # "ats":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 443
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 445
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 426
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v2, "attempt to hash renew on invalid data"

    invoke-direct {v1, v2}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public renewTimeStamp(Lorg/bouncycastle/tsp/TimeStampResponse;)Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    .locals 5
    .param p1, "tspResp"    # Lorg/bouncycastle/tsp/TimeStampResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tspResp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 335
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->buildTspRenewalGenerator()Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;

    move-result-object v0

    .line 337
    .local v0, "atsGen":Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->generateArchiveTimeStamp(Lorg/bouncycastle/tsp/TimeStampResponse;)Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v1

    .line 341
    .local v1, "ats":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    :try_start_0
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->addArchiveTimeStamp(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Z)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 343
    :catch_0
    move-exception v2

    .line 345
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->evidenceRecord:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    return-object v0
.end method

.method public validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V
    .locals 6
    .param p1, "verifier"    # Lorg/bouncycastle/cms/SignerInformationVerifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->firstArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    if-eq v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->getArchiveTimeStamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v0

    .line 282
    .local v0, "archiveTimeStamps":[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 286
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v3, Lorg/bouncycastle/tsp/ers/ERSByteData;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v4

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/ers/ERSByteData;-><init>([B)V

    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v4}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->getGenTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/tsp/TSPException;

    const-string/jumbo v4, "unable to process previous ArchiveTimeStamps"

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 294
    .end local v0    # "archiveTimeStamps":[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->lastArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V

    .line 295
    return-void
.end method

.method public validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    .locals 1
    .param p1, "data"    # Lorg/bouncycastle/tsp/ers/ERSData;
    .param p2, "atDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "atDate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->firstArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V

    .line 242
    return-void
.end method

.method public validatePresent(Z[BLjava/util/Date;)V
    .locals 1
    .param p1, "isDataGroup"    # Z
    .param p2, "hash"    # [B
    .param p3, "atDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isDataGroup",
            "hash",
            "atDate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->firstArchiveTimeStamp:Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent(Z[BLjava/util/Date;)V

    .line 257
    return-void
.end method
