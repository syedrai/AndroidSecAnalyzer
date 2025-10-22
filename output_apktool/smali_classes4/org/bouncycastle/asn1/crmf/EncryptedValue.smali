.class public Lorg/bouncycastle/asn1/crmf/EncryptedValue;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EncryptedValue.java"


# instance fields
.field private encSymmKey:Lorg/bouncycastle/asn1/ASN1BitString;

.field private encValue:Lorg/bouncycastle/asn1/ASN1BitString;

.field private intendedAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private keyAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private symmAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private valueHint:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "index":I
    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 44
    .local v1, "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag encountered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :pswitch_0
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 60
    goto :goto_1

    .line 56
    :pswitch_1
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 57
    goto :goto_1

    .line 53
    :pswitch_2
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 54
    goto :goto_1

    .line 50
    :pswitch_3
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 51
    goto :goto_1

    .line 47
    :pswitch_4
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 48
    nop

    .line 64
    :goto_1
    nop

    .end local v1    # "tObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 68
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 2
    .param p1, "intendedAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "symmAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "encSymmKey"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .param p4, "keyAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "valueHint"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p6, "encValue"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intendedAlg",
            "symmAlg",
            "encSymmKey",
            "keyAlg",
            "valueHint",
            "encValue"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 92
    if-eqz p6, :cond_0

    .line 97
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 98
    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 99
    iput-object p3, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 100
    iput-object p4, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 101
    iput-object p5, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 102
    iput-object p6, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 103
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'encValue\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 174
    if-eqz p3, :cond_0

    .line 176
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 178
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;
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

    .line 72
    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_0

    .line 74
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    return-object v0

    .line 76
    :cond_0
    if-eqz p0, :cond_1

    .line 78
    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 81
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getEncSymmKey()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public getEncValue()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public getIntendedAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKeyAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSymmAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getValueHint()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 159
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 161
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 163
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 164
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 165
    const/4 v1, 0x4

    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 167
    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 169
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
