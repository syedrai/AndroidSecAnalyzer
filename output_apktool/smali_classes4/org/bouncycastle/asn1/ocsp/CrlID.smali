.class public Lorg/bouncycastle/asn1/ocsp/CrlID;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CrlID.java"


# instance fields
.field private crlNum:Lorg/bouncycastle/asn1/ASN1Integer;

.field private crlTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;


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

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 29
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 33
    .local v1, "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 46
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown tag number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :pswitch_0
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 43
    goto :goto_1

    .line 39
    :pswitch_1
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 40
    goto :goto_1

    .line 36
    :pswitch_2
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 37
    nop

    .line 48
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    goto :goto_0

    .line 49
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CrlID;
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

    .line 54
    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;

    if-eqz v0, :cond_0

    .line 56
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ocsp/CrlID;

    return-object v0

    .line 58
    :cond_0
    if-eqz p0, :cond_1

    .line 60
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/CrlID;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ocsp/CrlID;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCrlNum()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getCrlTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getCrlUrl()Lorg/bouncycastle/asn1/DERIA5String;
    .locals 3

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    check-cast v0, Lorg/bouncycastle/asn1/DERIA5String;

    .line 71
    :goto_1
    return-object v0
.end method

.method public getCrlUrlIA5()Lorg/bouncycastle/asn1/ASN1IA5String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 102
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 104
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_2

    .line 116
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
