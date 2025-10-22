.class public Lorg/bouncycastle/asn1/cmp/CertStatus;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CertStatus.java"


# instance fields
.field private final certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 9
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 39
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "statusInfo":Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    const/4 v3, 0x0

    .line 44
    .local v3, "hashAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 46
    const/4 v4, 0x2

    .local v4, "t":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 48
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    .line 49
    .local v5, "p":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v6, v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v6, :cond_0

    .line 51
    invoke-static {v5}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v2

    .line 53
    :cond_0
    instance-of v6, v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_2

    .line 55
    move-object v6, v5

    check-cast v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 56
    .local v6, "dto":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 60
    invoke-static {v6, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    goto :goto_1

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    .end local v5    # "p":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v6    # "dto":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    .end local v4    # "t":I
    :cond_3
    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    .line 66
    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    return-void
.end method

.method public constructor <init>([BLjava/math/BigInteger;)V
    .locals 1
    .param p1, "certHash"    # [B
    .param p2, "certReqId"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certHash",
            "certReqId"
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/cmp/CertStatus;-><init>([BLorg/bouncycastle/asn1/ASN1Integer;)V

    .line 72
    return-void
.end method

.method public constructor <init>([BLjava/math/BigInteger;Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;)V
    .locals 1
    .param p1, "certHash"    # [B
    .param p2, "certReqId"    # Ljava/math/BigInteger;
    .param p3, "statusInfo"    # Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certHash",
            "certReqId",
            "statusInfo"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 84
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 85
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 86
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 88
    return-void
.end method

.method public constructor <init>([BLjava/math/BigInteger;Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 1
    .param p1, "certHash"    # [B
    .param p2, "certReqId"    # Ljava/math/BigInteger;
    .param p3, "statusInfo"    # Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .param p4, "hashAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certHash",
            "certReqId",
            "statusInfo",
            "hashAlg"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 92
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 93
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 94
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    .line 95
    iput-object p4, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 96
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 1
    .param p1, "certHash"    # [B
    .param p2, "certReqId"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certHash",
            "certReqId"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 76
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 77
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    .line 79
    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 80
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertStatus;
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

    .line 100
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;

    if-eqz v0, :cond_0

    .line 102
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/CertStatus;

    return-object v0

    .line 105
    :cond_0
    if-eqz p0, :cond_1

    .line 107
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertStatus;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CertStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 110
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertHash()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getCertReqId()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getHashAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStatusInfo()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 149
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 151
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->certReqId:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->statusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_1

    .line 161
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/CertStatus;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 163
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
