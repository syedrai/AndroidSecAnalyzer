.class public Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ArchiveTimeStamp.java"


# instance fields
.field private final attributes:Lorg/bouncycastle/asn1/cms/Attributes;

.field private final digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final reducedHashTree:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 10
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_2

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "digAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v2, 0x0

    .line 105
    .local v2, "attrs":Lorg/bouncycastle/asn1/cms/Attributes;
    const/4 v3, 0x0

    .line 106
    .local v3, "rHashTree":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v4, v5, :cond_1

    .line 108
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 110
    .local v5, "obj":Ljava/lang/Object;
    instance-of v6, v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_0

    .line 112
    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v6

    .line 114
    .local v6, "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 127
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid tag no in constructor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :pswitch_0
    invoke-static {v6, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 124
    goto :goto_1

    .line 120
    :pswitch_1
    invoke-static {v6, v8}, Lorg/bouncycastle/asn1/cms/Attributes;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object v2

    .line 121
    goto :goto_1

    .line 117
    :pswitch_2
    invoke-static {v6, v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 118
    nop

    .line 106
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .end local v4    # "i":I
    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 133
    iput-object v2, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->attributes:Lorg/bouncycastle/asn1/cms/Attributes;

    .line 134
    iput-object v3, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->reducedHashTree:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 135
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 136
    return-void

    .line 100
    .end local v0    # "digAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v2    # "attrs":Lorg/bouncycastle/asn1/cms/Attributes;
    .end local v3    # "rHashTree":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong sequence size in constructor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .param p1, "timeStamp"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/Attributes;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/Attributes;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .param p1, "digestAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "attributes"    # Lorg/bouncycastle/asn1/cms/Attributes;
    .param p3, "reducedHashTree"    # [Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .param p4, "timeStamp"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestAlgorithm",
            "attributes",
            "reducedHashTree",
            "timeStamp"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 84
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->attributes:Lorg/bouncycastle/asn1/cms/Attributes;

    .line 85
    if-eqz p3, :cond_0

    .line 87
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->reducedHashTree:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->reducedHashTree:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 93
    :goto_0
    iput-object p4, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .param p1, "digestAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "reducedHashTree"    # [Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .param p3, "timeStamp"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestAlgorithm",
            "reducedHashTree",
            "timeStamp"
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/Attributes;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 69
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 51
    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    return-object v0

    .line 55
    :cond_0
    if-eqz p0, :cond_1

    .line 57
    new-instance v0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 60
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTimeStampInfo()Lorg/bouncycastle/asn1/tsp/TSTInfo;
    .locals 3

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    .line 160
    .local v0, "tsData":Lorg/bouncycastle/asn1/cms/SignedData;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_TSTInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    nop

    .line 163
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    .line 162
    invoke-static {v1}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v1

    .line 165
    .local v1, "tstData":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    return-object v1

    .line 169
    .end local v1    # "tstData":Lorg/bouncycastle/asn1/tsp/TSTInfo;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot parse time stamp"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    .end local v0    # "tsData":Lorg/bouncycastle/asn1/cms/SignedData;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot identify algorithm identifier for digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0

    .line 146
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStampInfo()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getHashTreeLeaf()Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->reducedHashTree:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->reducedHashTree:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v0

    return-object v0
.end method

.method public getReducedHashTree()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->reducedHashTree:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->reducedHashTree:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    .line 212
    .local v0, "rv":[Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 214
    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->reducedHashTree:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v2

    aput-object v2, v0, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getTimeStampDigestValue()[B
    .locals 1

    .line 152
    invoke-direct {p0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStampInfo()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 227
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 229
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 231
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 234
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->attributes:Lorg/bouncycastle/asn1/cms/Attributes;

    if-eqz v1, :cond_1

    .line 236
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->attributes:Lorg/bouncycastle/asn1/cms/Attributes;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 239
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->reducedHashTree:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 241
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->reducedHashTree:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 244
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->timeStamp:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 246
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
