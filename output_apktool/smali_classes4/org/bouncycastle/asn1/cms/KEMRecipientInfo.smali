.class public Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "KEMRecipientInfo.java"


# instance fields
.field private final cmsVersion:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final kekLength:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final kemct:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

.field private final ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->cmsVersion:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    .line 84
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 85
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kemct:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 86
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 87
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kekLength:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 89
    const/4 v1, 0x6

    .line 90
    .local v1, "elt":I
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    .line 92
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "elt":I
    .local v2, "elt":I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    move v1, v2

    goto :goto_0

    .line 96
    .end local v2    # "elt":I
    .restart local v1    # "elt":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 98
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "elt":I
    .local v0, "elt":I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 99
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "elt":I
    .restart local v1    # "elt":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 100
    return-void

    .line 79
    .end local v1    # "elt":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence must consist of 3 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/RecipientIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 3
    .param p1, "rid"    # Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    .param p2, "kem"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "kemct"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p4, "kdf"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "kekLength"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p6, "ukm"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p7, "wrap"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p8, "encryptedKey"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rid",
            "kem",
            "kemct",
            "kdf",
            "kekLength",
            "ukm",
            "wrap",
            "encryptedKey"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    if-eqz p2, :cond_1

    .line 46
    if-eqz p7, :cond_0

    .line 50
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->cmsVersion:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 51
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    .line 52
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 53
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kemct:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 54
    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 55
    iput-object p5, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kekLength:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 56
    iput-object p6, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 57
    iput-object p7, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 58
    iput-object p8, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 59
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "wrap cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "kem cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;
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
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    return-object v0

    .line 67
    :cond_0
    if-eqz p0, :cond_1

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getKdf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKemct()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kemct:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getRecipientIdentifier()Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    return-object v0
.end method

.method public getUkm()[B
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getWrap()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 144
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 146
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->cmsVersion:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 147
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 148
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kem:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 149
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kemct:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 150
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kdf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->kekLength:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 157
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
