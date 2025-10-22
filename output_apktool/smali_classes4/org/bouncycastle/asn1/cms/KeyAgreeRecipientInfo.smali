.class public Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "KeyAgreeRecipientInfo.java"


# instance fields
.field private keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private originator:Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

.field private recipientEncryptedKeys:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


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

    .line 54
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 58
    add-int/lit8 v0, v1, 0x1

    .line 59
    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 58
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    .line 61
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    .line 63
    add-int/lit8 v1, v0, 0x1

    .line 64
    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 63
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    move v0, v1

    .line 67
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 68
    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 70
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "originator"    # Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .param p2, "ukm"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p3, "keyEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "recipientEncryptedKeys"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "originator",
            "ukm",
            "keyEncryptionAlgorithm",
            "recipientEncryptedKeys"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 46
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    .line 47
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 48
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 49
    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 50
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 105
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    if-eqz v0, :cond_0

    .line 107
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    return-object v0

    .line 110
    :cond_0
    if-eqz p0, :cond_1

    .line 112
    new-instance v0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;
    .locals 1
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 86
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOriginator()Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    return-object v0
.end method

.method public getRecipientEncryptedKeys()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getUserKeyingMaterial()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 148
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 150
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 153
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 158
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 161
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
