.class public Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
.super Ljava/lang/Object;
.source "ERSArchiveTimeStampGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;
    }
.end annotation


# instance fields
.field private dataObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;"
        }
    .end annotation
.end field

.field private final digCalc:Lorg/bouncycastle/operator/DigestCalculator;

.field private previousChainHash:[B

.field private rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1
    .param p1, "digCalc"    # Lorg/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digCalc"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    .line 32
    new-instance v0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    .line 38
    return-void
.end method

.method private getPartialHashtrees()[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;
    .locals 12

    .line 178
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->previousChainHash:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->buildIndexedHashList(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/List;[B)Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "hashes":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/IndexedHash;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    .line 181
    .local v1, "trees":[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 182
    .local v2, "dataGroupSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/tsp/ers/ERSDataGroup;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 184
    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    if-eqz v4, :cond_0

    .line 186
    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 193
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/tsp/ers/IndexedHash;

    iget-object v4, v4, Lorg/bouncycastle/tsp/ers/IndexedHash;->digest:[B

    .line 194
    .local v4, "hash":[B
    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/tsp/ers/IndexedHash;

    iget v6, v6, Lorg/bouncycastle/tsp/ers/IndexedHash;->order:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/tsp/ers/ERSData;

    .line 196
    .local v5, "d":Lorg/bouncycastle/tsp/ers/ERSData;
    instance-of v6, v5, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 198
    move-object v6, v5

    check-cast v6, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    .line 200
    .local v6, "data":Lorg/bouncycastle/tsp/ers/ERSDataGroup;
    iget-object v8, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v9, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->previousChainHash:[B

    invoke-virtual {v6, v8, v9}, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->getHashes(Lorg/bouncycastle/operator/DigestCalculator;[B)Ljava/util/List;

    move-result-object v8

    .line 201
    .local v8, "dHashes":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v9, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/tsp/ers/IndexedHash;

    iget v10, v10, Lorg/bouncycastle/tsp/ers/IndexedHash;->order:I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [[B

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[B

    invoke-direct {v9, v10, v11, v7}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;-><init>(I[[BLorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator-IA;)V

    aput-object v9, v1, v3

    .line 202
    .end local v6    # "data":Lorg/bouncycastle/tsp/ers/ERSDataGroup;
    .end local v8    # "dHashes":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_2

    .line 205
    :cond_2
    new-instance v6, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/tsp/ers/IndexedHash;

    iget v8, v8, Lorg/bouncycastle/tsp/ers/IndexedHash;->order:I

    invoke-direct {v6, v8, v4, v7}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;-><init>(I[BLorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator-IA;)V

    aput-object v6, v1, v3

    .line 191
    .end local v4    # "hash":[B
    .end local v5    # "d":Lorg/bouncycastle/tsp/ers/ERSData;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 209
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method


# virtual methods
.method public addAllData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataObjects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "dataObjects":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSData;>;"
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-void
.end method

.method public addData(Lorg/bouncycastle/tsp/ers/ERSData;)V
    .locals 1
    .param p1, "dataObject"    # Lorg/bouncycastle/tsp/ers/ERSData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataObject"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method addPreviousChains(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;)V
    .locals 2
    .param p1, "archiveTimeStampSequence"    # Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveTimeStampSequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 55
    .local v0, "digOut":Ljava/io/OutputStream;
    const-string v1, "DER"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 56
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 58
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->previousChainHash:[B

    .line 59
    return-void
.end method

.method public generateArchiveTimeStamp(Lorg/bouncycastle/tsp/TimeStampResponse;)Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
    .locals 7
    .param p1, "tspResponse"    # Lorg/bouncycastle/tsp/TimeStampResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tspResponse"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->getPartialHashtrees()[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    move-result-object v0

    .line 85
    .local v0, "reducedHashTree":[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 90
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1, v3, v0}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v1

    .line 92
    .local v1, "rootHash":[B
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result v3

    if-nez v3, :cond_3

    .line 97
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v3

    .line 99
    .local v3, "tstInfo":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v4

    invoke-static {v4, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;->getValueCount()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 112
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v4, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    .line 113
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;)V

    .line 112
    return-object v2

    .line 117
    :cond_0
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v4, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 118
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;)V

    .line 117
    return-object v2

    .line 106
    :cond_1
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string/jumbo v4, "time stamp imprint for wrong root hash"

    invoke-direct {v2, v4}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_2
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string/jumbo v4, "time stamp imprint for wrong algorithm"

    invoke-direct {v2, v4}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    .end local v3    # "tstInfo":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    :cond_3
    new-instance v2, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatusString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TSP response error status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    .end local v1    # "rootHash":[B
    :cond_4
    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v2, "multiple reduced hash trees found"

    invoke-direct {v1, v2}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateArchiveTimeStamps(Lorg/bouncycastle/tsp/TimeStampResponse;)Ljava/util/List;
    .locals 12
    .param p1, "tspResponse"    # Lorg/bouncycastle/tsp/TimeStampResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tspResponse"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/tsp/TimeStampResponse;",
            ")",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->getPartialHashtrees()[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    move-result-object v0

    .line 127
    .local v0, "reducedHashTree":[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v1

    .line 129
    .local v1, "rootHash":[B
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result v2

    if-nez v2, :cond_5

    .line 134
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v2

    .line 136
    .local v2, "tstInfo":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 141
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v3

    invoke-static {v3, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v3

    .line 147
    .local v3, "timeStamp":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v4, "atss":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;>;"
    array-length v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;->getValueCount()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 152
    new-instance v5, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v6, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iget-object v7, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    :cond_0
    array-length v5, v0

    new-array v5, v5, [Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    .line 159
    .local v5, "archiveTimeStamps":[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v0

    if-eq v6, v7, :cond_1

    .line 161
    iget-object v7, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v8, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v9, v0, v6

    invoke-interface {v7, v8, v9, v6}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computePathToRoot(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;I)[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v7

    .line 163
    .local v7, "path":[Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    aget-object v8, v0, v6

    iget v8, v8, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;->order:I

    new-instance v9, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v10, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    iget-object v11, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v11}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    invoke-direct {v10, v11, v7, v3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iget-object v11, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;)V

    aput-object v9, v5, v8

    .line 159
    .end local v7    # "path":[Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 167
    .end local v6    # "i":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    array-length v7, v0

    if-eq v6, v7, :cond_2

    .line 169
    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 173
    .end local v5    # "archiveTimeStamps":[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
    .end local v6    # "i":I
    :cond_2
    :goto_2
    return-object v4

    .line 143
    .end local v3    # "timeStamp":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v4    # "atss":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;>;"
    :cond_3
    new-instance v3, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string/jumbo v4, "time stamp imprint for wrong root hash"

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    :cond_4
    new-instance v3, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string/jumbo v4, "time stamp imprint for wrong algorithm"

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .end local v2    # "tstInfo":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    :cond_5
    new-instance v2, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatusString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TSP response error status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public generateTimeStampRequest(Lorg/bouncycastle/tsp/TimeStampRequestGenerator;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 3
    .param p1, "tspReqGenerator"    # Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tspReqGenerator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->getPartialHashtrees()[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    move-result-object v0

    .line 66
    .local v0, "reducedHashTree":[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v1

    .line 68
    .local v1, "rootHash":[B
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v2

    return-object v2
.end method

.method public generateTimeStampRequest(Lorg/bouncycastle/tsp/TimeStampRequestGenerator;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 3
    .param p1, "tspReqGenerator"    # Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .param p2, "nonce"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tspReqGenerator",
            "nonce"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->getPartialHashtrees()[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    move-result-object v0

    .line 76
    .local v0, "reducedHashTree":[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v1

    .line 78
    .local v1, "rootHash":[B
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {p1, v2, v1, p2}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v2

    return-object v2
.end method
