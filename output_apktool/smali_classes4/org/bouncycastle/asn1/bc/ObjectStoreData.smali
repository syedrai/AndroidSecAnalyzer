.class public Lorg/bouncycastle/asn1/bc/ObjectStoreData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ObjectStoreData.java"


# instance fields
.field private final comment:Ljava/lang/String;

.field private final creationDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private final integrityAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final lastModifiedDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private final objectDataSequence:Lorg/bouncycastle/asn1/bc/ObjectDataSequence;

.field private final version:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->version:Ljava/math/BigInteger;

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->integrityAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->creationDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 56
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->lastModifiedDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 57
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bc/ObjectDataSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectDataSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->objectDataSequence:Lorg/bouncycastle/asn1/bc/ObjectDataSequence;

    .line 58
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->comment:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/bc/ObjectDataSequence;Ljava/lang/String;)V
    .locals 2
    .param p1, "integrityAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "creationDate"    # Ljava/util/Date;
    .param p3, "lastModifiedDate"    # Ljava/util/Date;
    .param p4, "objectDataSequence"    # Lorg/bouncycastle/asn1/bc/ObjectDataSequence;
    .param p5, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "integrityAlgorithm",
            "creationDate",
            "lastModifiedDate",
            "objectDataSequence",
            "comment"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->version:Ljava/math/BigInteger;

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->integrityAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->creationDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->lastModifiedDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 47
    iput-object p4, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->objectDataSequence:Lorg/bouncycastle/asn1/bc/ObjectDataSequence;

    .line 48
    iput-object p5, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->comment:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectStoreData;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 63
    instance-of v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;

    return-object v0

    .line 67
    :cond_0
    if-eqz p0, :cond_1

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bc/ObjectStoreData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->creationDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getIntegrityAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->integrityAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getLastModifiedDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->lastModifiedDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getObjectDataSequence()Lorg/bouncycastle/asn1/bc/ObjectDataSequence;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->objectDataSequence:Lorg/bouncycastle/asn1/bc/ObjectDataSequence;

    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 107
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 109
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->version:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->integrityAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 111
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->creationDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 112
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->lastModifiedDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->objectDataSequence:Lorg/bouncycastle/asn1/bc/ObjectDataSequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->comment:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object v2, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->comment:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
