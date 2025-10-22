.class public Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
.super Ljava/lang/Object;
.source "ERSArchiveTimeStamp.java"


# instance fields
.field private final archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

.field private final digCalc:Lorg/bouncycastle/operator/DigestCalculator;

.field private final previousChainsDigest:[B

.field private rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

.field private final timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 3
    .param p1, "archiveTimeStamp"    # Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .param p2, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "archiveTimeStamp",
            "digCalc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->previousChainsDigest:[B

    .line 64
    :try_start_0
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    .line 65
    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    .line 66
    iput-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    nop

    .line 72
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 3
    .param p1, "archiveTimeStamp"    # Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .param p2, "digCalcProv"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "archiveTimeStamp",
            "digCalcProv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->previousChainsDigest:[B

    .line 44
    :try_start_0
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    .line 45
    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    nop

    .line 56
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 48
    .end local v0    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>([BLorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 3
    .param p1, "previousChainsDigest"    # [B
    .param p2, "archiveTimeStamp"    # Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .param p3, "digCalcProv"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previousChainsDigest",
            "archiveTimeStamp",
            "digCalcProv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    .line 77
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->previousChainsDigest:[B

    .line 80
    :try_start_0
    iput-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    .line 81
    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    .line 82
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 92
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 84
    .end local v0    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1
    .param p1, "archiveTimeStamp"    # [B
    .param p2, "digCalcProv"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "archiveTimeStamp",
            "digCalcProv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 36
    return-void
.end method

.method public static fromTimeStampToken(Lorg/bouncycastle/tsp/TimeStampToken;Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
    .locals 3
    .param p0, "tspToken"    # Lorg/bouncycastle/tsp/TimeStampToken;
    .param p1, "digCalcProv"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tspToken",
            "digCalcProv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 285
    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v1, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method


# virtual methods
.method checkContainsHashValue(Z[BLorg/bouncycastle/operator/DigestCalculator;)V
    .locals 4
    .param p1, "isGroup"    # Z
    .param p2, "hash"    # [B
    .param p3, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "isGroup",
            "hash",
            "digCalc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getReducedHashTree()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v0

    .line 192
    .local v0, "reducedHashTree":[Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    if-eqz v0, :cond_2

    .line 195
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 197
    .local v1, "current":Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    if-nez p1, :cond_0

    invoke-virtual {v1, p2}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->containsHash([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getValueCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 204
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getValues()[[B

    move-result-object v2

    invoke-static {p3, v2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[[B)[B

    move-result-object v2

    invoke-static {p2, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    return-void

    .line 209
    :cond_1
    new-instance v2, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string v3, "object hash not found"

    invoke-direct {v2, v3}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    .end local v1    # "current":Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintDigest()[B

    move-result-object v1

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    return-void

    .line 215
    :cond_3
    new-instance v1, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string v2, "object hash not found in wrapped timestamp"

    invoke-direct {v1, v2}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method checkTimeStampValid(Lorg/bouncycastle/tsp/TimeStampToken;[B)V
    .locals 2
    .param p1, "timeStampToken"    # Lorg/bouncycastle/tsp/TimeStampToken;
    .param p2, "hash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeStampToken",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;
        }
    .end annotation

    .line 223
    if-eqz p2, :cond_1

    .line 225
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintDigest()[B

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance v0, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string/jumbo v1, "timestamp hash does not match root"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    :goto_0
    return-void
.end method

.method public getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

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

    .line 270
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 2

    .line 251
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->getSigningCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    .line 252
    .local v0, "crtHolder":Lorg/bouncycastle/cert/X509CertificateHolder;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 256
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getGenTime()Ljava/util/Date;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSigningCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v0

    .line 163
    .local v0, "certificateStore":Lorg/bouncycastle/util/Store;, "Lorg/bouncycastle/util/Store<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampToken;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    .line 166
    .local v1, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v2

    .line 172
    .end local v1    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cert/X509CertificateHolder;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    return-object v0
.end method

.method public isContaining(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)Z
    .locals 2
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

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string/jumbo v1, "timestamp generation time is in the future"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    return-object v0
.end method

.method public validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V
    .locals 1
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

    .line 184
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/TimeStampToken;->validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V

    .line 185
    return-void
.end method

.method public validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    .locals 3
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

    .line 102
    instance-of v0, p1, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->previousChainsDigest:[B

    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSData;->getHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent(Z[BLjava/util/Date;)V

    .line 103
    return-void
.end method

.method public validatePresent(Z[BLjava/util/Date;)V
    .locals 4
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

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->checkContainsHashValue(Z[BLorg/bouncycastle/operator/DigestCalculator;)V

    .line 135
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getReducedHashTree()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v0

    .line 138
    .local v0, "partialTree":[Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getReducedHashTree()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->recoverRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v1

    .local v1, "rootHash":[B
    goto :goto_0

    .line 144
    .end local v1    # "rootHash":[B
    :cond_0
    move-object v1, p2

    .line 147
    .restart local v1    # "rootHash":[B
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->checkTimeStampValid(Lorg/bouncycastle/tsp/TimeStampToken;[B)V

    .line 148
    return-void

    .line 130
    .end local v0    # "partialTree":[Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .end local v1    # "rootHash":[B
    :cond_1
    new-instance v0, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string/jumbo v1, "timestamp generation time is in the future"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
