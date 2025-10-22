.class Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;
.super Ljava/lang/Object;
.source "TimeStampDataUtil.java"


# instance fields
.field private final metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

.field private final timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/TimeStampedData;)V
    .locals 2
    .param p1, "timeStampedData"    # Lorg/bouncycastle/asn1/cms/TimeStampedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStampedData"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampedData;->getMetaData()Lorg/bouncycastle/asn1/cms/MetaData;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;-><init>(Lorg/bouncycastle/asn1/cms/MetaData;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    .line 34
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampedData;->getTemporalEvidence()Lorg/bouncycastle/asn1/cms/Evidence;

    move-result-object v0

    .line 35
    .local v0, "evidence":Lorg/bouncycastle/asn1/cms/Evidence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Evidence;->getTstEvidence()Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->toTimeStampAndCRLArray()[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    .line 36
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;)V
    .locals 2
    .param p1, "timeStampedData"    # Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStampedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getMetaData()Lorg/bouncycastle/asn1/cms/MetaData;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;-><init>(Lorg/bouncycastle/asn1/cms/MetaData;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    .line 43
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampedDataParser;->getTemporalEvidence()Lorg/bouncycastle/asn1/cms/Evidence;

    move-result-object v0

    .line 44
    .local v0, "evidence":Lorg/bouncycastle/asn1/cms/Evidence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Evidence;->getTstEvidence()Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->toTimeStampAndCRLArray()[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    .line 45
    return-void
.end method

.method private compareDigest(Lorg/bouncycastle/tsp/TimeStampToken;[B)V
    .locals 4
    .param p1, "timeStampToken"    # Lorg/bouncycastle/tsp/TimeStampToken;
    .param p2, "digest"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStampToken",
            "digest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;
        }
    .end annotation

    .line 233
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    .line 234
    .local v0, "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintDigest()[B

    move-result-object v1

    .line 236
    .local v1, "tsrMessageDigest":[B
    invoke-static {p2, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    return-void

    .line 238
    :cond_0
    new-instance v2, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;

    const-string v3, "hash calculated is different from MessageImprintDigest found in TimeStampToken"

    invoke-direct {v2, v3, p1}, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;-><init>(Ljava/lang/String;Lorg/bouncycastle/tsp/TimeStampToken;)V

    throw v2
.end method


# virtual methods
.method calculateNextHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
    .locals 7
    .param p1, "calculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calculator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    iget-object v1, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 128
    .local v0, "tspToken":Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 132
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    const-string v2, "DER"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 134
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 136
    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 138
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception calculating hash: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method getFileName()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMediaType()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->getMediaType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 5
    .param p1, "calculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calculatorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStampToken(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v0

    .line 91
    .local v0, "token":Lorg/bouncycastle/tsp/TimeStampToken;
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v1

    .line 92
    .local v1, "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 94
    .local v2, "algOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {p1, v3}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v3

    .line 96
    .local v3, "calc":Lorg/bouncycastle/operator/DigestCalculator;
    invoke-virtual {p0, v3}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-object v3

    .line 100
    .end local v0    # "token":Lorg/bouncycastle/tsp/TimeStampToken;
    .end local v1    # "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    .end local v2    # "algOID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "calc":Lorg/bouncycastle/operator/DigestCalculator;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/bouncycastle/cms/CMSException;
    new-instance v1, Lorg/bouncycastle/operator/OperatorCreationException;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to extract algorithm ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getOtherMetaData()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 254
    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->getOtherMetaData()Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/cms/Attributes;)V

    return-object v0
.end method

.method getTimeStampToken(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 6
    .param p1, "timeStampAndCRL"    # Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStampAndCRL"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 50
    const-string/jumbo v0, "token data invalid: "

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->getTimeStampToken()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    .line 54
    .local v1, "timeStampToken":Lorg/bouncycastle/asn1/cms/ContentInfo;
    :try_start_0
    new-instance v2, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-direct {v2, v1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/tsp/TSPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v2, "token":Lorg/bouncycastle/tsp/TimeStampToken;
    return-object v2

    .line 70
    .end local v2    # "token":Lorg/bouncycastle/tsp/TimeStampToken;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 61
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 63
    .local v2, "e":Lorg/bouncycastle/tsp/TSPException;
    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TSPException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/cms/CMSException;

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TSPException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/CMSException;

    throw v0

    .line 68
    :cond_0
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TSPException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 57
    .end local v2    # "e":Lorg/bouncycastle/tsp/TSPException;
    :catch_2
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to parse token data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method getTimeStampTokens()[Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v0, v0

    new-array v0, v0, [Lorg/bouncycastle/tsp/TimeStampToken;

    .line 110
    .local v0, "tokens":[Lorg/bouncycastle/tsp/TimeStampToken;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStampToken(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v2

    aput-object v2, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method getTimeStamps()[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    return-object v0
.end method

.method initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1
    .param p1, "calculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calculator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->metaDataUtil:Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V

    .line 80
    return-void
.end method

.method validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[B)V
    .locals 8
    .param p1, "calculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .param p2, "dataDigest"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "calculatorProvider",
            "dataDigest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 150
    move-object v0, p2

    .line 152
    .local v0, "currentDigest":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 156
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStampToken(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v2

    .line 157
    .local v2, "token":Lorg/bouncycastle/tsp/TimeStampToken;
    if-lez v1, :cond_0

    .line 159
    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v3

    .line 160
    .local v3, "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v4

    .line 162
    .local v4, "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    const-string v7, "DER"

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 164
    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v5

    move-object v0, v5

    .line 167
    .end local v3    # "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    .end local v4    # "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    :cond_0
    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->compareDigest(Lorg/bouncycastle/tsp/TimeStampToken;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v2    # "token":Lorg/bouncycastle/tsp/TimeStampToken;
    nop

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v2}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot create digest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 169
    .end local v2    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    :catch_1
    move-exception v2

    .line 171
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception calculating hash: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 178
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method validate(Lorg/bouncycastle/operator/DigestCalculatorProvider;[BLorg/bouncycastle/tsp/TimeStampToken;)V
    .locals 9
    .param p1, "calculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .param p2, "dataDigest"    # [B
    .param p3, "timeStampToken"    # Lorg/bouncycastle/tsp/TimeStampToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "calculatorProvider",
            "dataDigest",
            "timeStampToken"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 183
    move-object v0, p2

    .line 188
    .local v0, "currentDigest":[B
    :try_start_0
    invoke-virtual {p3}, Lorg/bouncycastle/tsp/TimeStampToken;->getEncoded()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 193
    .local v1, "encToken":[B
    nop

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 199
    :try_start_1
    iget-object v3, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->getTimeStampToken(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v3

    .line 200
    .local v3, "token":Lorg/bouncycastle/tsp/TimeStampToken;
    if-lez v2, :cond_0

    .line 202
    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v4

    .line 203
    .local v4, "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v5

    .line 205
    .local v5, "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->timeStamps:[Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    const-string v8, "DER"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;->getEncoded(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 207
    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v6

    move-object v0, v6

    .line 210
    .end local v4    # "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    .end local v5    # "calculator":Lorg/bouncycastle/operator/DigestCalculator;
    :cond_0
    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/tsp/cms/TimeStampDataUtil;->compareDigest(Lorg/bouncycastle/tsp/TimeStampToken;[B)V

    .line 212
    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampToken;->getEncoded()[B

    move-result-object v4

    invoke-static {v4, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_1

    .line 214
    return-void

    .line 224
    .end local v3    # "token":Lorg/bouncycastle/tsp/TimeStampToken;
    :cond_1
    nop

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v4, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v3}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot create digest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 217
    .end local v3    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    :catch_1
    move-exception v3

    .line 219
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception calculating hash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 227
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v2, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;

    const-string v3, "passed in token not associated with timestamps present"

    invoke-direct {v2, v3, p3}, Lorg/bouncycastle/tsp/cms/ImprintDigestInvalidException;-><init>(Ljava/lang/String;Lorg/bouncycastle/tsp/TimeStampToken;)V

    throw v2

    .line 190
    .end local v1    # "encToken":[B
    :catch_2
    move-exception v1

    .line 192
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception encoding timeStampToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
