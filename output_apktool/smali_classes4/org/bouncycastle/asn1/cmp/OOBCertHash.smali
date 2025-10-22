.class public Lorg/bouncycastle/asn1/cmp/OOBCertHash;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "OOBCertHash.java"


# instance fields
.field private final certId:Lorg/bouncycastle/asn1/crmf/CertId;

.field private final hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final hashVal:Lorg/bouncycastle/asn1/ASN1BitString;


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

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 39
    .local v0, "index":I
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "index":I
    .local v2, "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "hashAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v3, 0x0

    .line 44
    .local v3, "certId":Lorg/bouncycastle/asn1/crmf/CertId;
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 46
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 48
    .local v5, "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    invoke-static {v5, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    invoke-static {v5, v1}, Lorg/bouncycastle/asn1/crmf/CertId;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/crmf/CertId;

    move-result-object v3

    .line 44
    .end local v5    # "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 58
    .restart local v5    # "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v4    # "i":I
    .end local v5    # "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 63
    iput-object v3, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/crmf/CertId;Lorg/bouncycastle/asn1/DERBitString;)V
    .locals 0
    .param p1, "hashAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "certId"    # Lorg/bouncycastle/asn1/crmf/CertId;
    .param p3, "hashVal"    # Lorg/bouncycastle/asn1/DERBitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashAlg",
            "certId",
            "hashVal"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 74
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    .line 75
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/crmf/CertId;[B)V
    .locals 1
    .param p1, "hashAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "certId"    # Lorg/bouncycastle/asn1/crmf/CertId;
    .param p3, "hashVal"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashAlg",
            "certId",
            "hashVal"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/cmp/OOBCertHash;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/crmf/CertId;Lorg/bouncycastle/asn1/DERBitString;)V

    .line 69
    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "v"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "tagNo",
            "obj"
        }
    .end annotation

    .line 135
    if-eqz p3, :cond_0

    .line 137
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 139
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/OOBCertHash;
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

    .line 80
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;

    return-object v0

    .line 85
    :cond_0
    if-eqz p0, :cond_1

    .line 87
    new-instance v0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/OOBCertHash;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 90
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertId()Lorg/bouncycastle/asn1/crmf/CertId;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    return-object v0
.end method

.method public getHashAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getHashVal()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 123
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 125
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 126
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->certId:Lorg/bouncycastle/asn1/crmf/CertId;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 128
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/OOBCertHash;->hashVal:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 130
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
