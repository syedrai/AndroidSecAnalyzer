.class public Lorg/bouncycastle/asn1/tsp/EncryptionInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EncryptionInfo.java"


# instance fields
.field private encryptionInfoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private encryptionInfoValue:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "encryptionInfoType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "encryptionInfoValue"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encryptionInfoType",
            "encryptionInfoValue"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->encryptionInfoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 93
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->encryptionInfoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 94
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->encryptionInfoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->encryptionInfoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 87
    return-void

    .line 82
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
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/EncryptionInfo;
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

    .line 59
    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    if-eqz v0, :cond_0

    .line 61
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    return-object v0

    .line 63
    :cond_0
    if-eqz p0, :cond_1

    .line 65
    new-instance v0, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1Object;)Lorg/bouncycastle/asn1/tsp/EncryptionInfo;
    .locals 1
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/tsp/EncryptionInfo;
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

    .line 75
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/EncryptionInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEncryptionInfoType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->encryptionInfoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getEncryptionInfoValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->encryptionInfoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 108
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 109
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->encryptionInfoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/EncryptionInfo;->encryptionInfoValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 112
    new-instance v1, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
