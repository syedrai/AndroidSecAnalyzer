.class public Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EvidenceRecord.java"


# static fields
.field private static final OID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

.field private cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

.field private digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.11.0.2.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->OID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 8
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 156
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
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

    .line 161
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    .line 162
    .local v1, "versionNumber":Lorg/bouncycastle/asn1/ASN1Integer;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 169
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 170
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v3, v4, :cond_3

    .line 172
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 174
    .local v4, "object":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v5, v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v5, :cond_2

    .line 176
    move-object v5, v4

    check-cast v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 177
    .local v5, "asn1TaggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown tag in getInstance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :pswitch_0
    invoke-static {v5, v0}, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    .line 184
    goto :goto_2

    .line 180
    :pswitch_1
    invoke-static {v5, v0}, Lorg/bouncycastle/asn1/tsp/CryptoInfos;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    .line 181
    nop

    .line 188
    .end local v5    # "asn1TaggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_2
    nop

    .line 170
    .end local v4    # "object":Lorg/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 191
    .restart local v4    # "object":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 192
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown object in getInstance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    .end local v3    # "i":I
    .end local v4    # "object":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    .line 196
    return-void

    .line 164
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "incompatible version"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/CryptoInfos;Lorg/bouncycastle/asn1/tsp/EncryptionInfo;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V
    .locals 3
    .param p1, "cryptoInfos"    # Lorg/bouncycastle/asn1/tsp/CryptoInfos;
    .param p2, "encryptionInfo"    # Lorg/bouncycastle/asn1/tsp/EncryptionInfo;
    .param p3, "archiveTimeStamp"    # Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cryptoInfos",
            "encryptionInfo",
            "archiveTimeStamp"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 136
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 137
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    .line 138
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    .line 139
    new-instance v0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    new-instance v1, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;

    invoke-direct {v1, p3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    .line 140
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V
    .locals 6
    .param p1, "evidenceRecord"    # Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
    .param p2, "replacementSequence"    # Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;
    .param p3, "newChainTimeStamp"    # Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "evidenceRecord",
            "replacementSequence",
            "newChainTimeStamp"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 80
    iget-object v0, p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 83
    if-eqz p3, :cond_3

    .line 85
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 86
    .local v0, "algId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 87
    .local v1, "vector":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 88
    .local v2, "enumeration":Ljava/util/Enumeration;
    const/4 v3, 0x0

    .line 90
    .local v3, "found":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    nop

    .line 93
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 92
    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 94
    .local v4, "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 96
    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    const/4 v3, 0x1

    .line 99
    goto :goto_1

    .line 101
    .end local v4    # "algorithmIdentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 105
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_2

    .line 110
    :cond_2
    iget-object v4, p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 112
    .end local v0    # "algId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v1    # "vector":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v2    # "enumeration":Ljava/util/Enumeration;
    .end local v3    # "found":Z
    :goto_2
    goto :goto_3

    .line 115
    :cond_3
    iget-object v0, p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 118
    :goto_3
    iget-object v0, p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    .line 119
    iget-object v0, p1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    .line 120
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    .line 121
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/tsp/CryptoInfos;Lorg/bouncycastle/asn1/tsp/EncryptionInfo;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;)V
    .locals 3
    .param p1, "digestAlgorithms"    # [Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "cryptoInfos"    # Lorg/bouncycastle/asn1/tsp/CryptoInfos;
    .param p3, "encryptionInfo"    # Lorg/bouncycastle/asn1/tsp/EncryptionInfo;
    .param p4, "archiveTimeStampSequence"    # Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestAlgorithms",
            "cryptoInfos",
            "encryptionInfo",
            "archiveTimeStampSequence"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 148
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 149
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    .line 150
    iput-object p3, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    .line 151
    iput-object p4, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    .line 152
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
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

    .line 58
    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    return-object v0

    .line 62
    :cond_0
    if-eqz p0, :cond_1

    .line 64
    new-instance v0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
    .locals 1
    .param p0, "tagged"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagged",
            "explicit"
        }
    .end annotation

    .line 72
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addArchiveTimeStamp(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Z)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
    .locals 5
    .param p1, "ats"    # Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .param p2, "newChain"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ats",
            "newChain"
        }
    .end annotation

    .line 226
    if-eqz p2, :cond_0

    .line 228
    new-instance v0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    .line 230
    .local v0, "chain":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;
    new-instance v1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;->append(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;)Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    return-object v1

    .line 234
    .end local v0    # "chain":Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;->getArchiveTimeStampChains()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;

    move-result-object v0

    .line 236
    .local v0, "chains":[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;->getArchiveTimestamps()[Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 237
    .local v1, "digAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;->append(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;

    move-result-object v3

    aput-object v3, v0, v2

    .line 243
    new-instance v2, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    new-instance v3, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;-><init>([Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampChain;)V

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    return-object v2

    .line 239
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mismatch of digest algorithm in addArchiveTimeStamp"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getArchiveTimeStampSequence()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    return-object v0
.end method

.method public getDigestAlgorithms()[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    .line 200
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 202
    .local v0, "rv":[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 204
    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    aput-object v2, v0, v1

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 254
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 256
    .local v0, "vector":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 257
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 259
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 261
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->cryptoInfos:Lorg/bouncycastle/asn1/tsp/CryptoInfos;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 263
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    if-eqz v1, :cond_1

    .line 265
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->encryptionInfo:Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 268
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->archiveTimeStampSequence:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 270
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 249
    sget-object v0, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->OID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EvidenceRecord: Oid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
