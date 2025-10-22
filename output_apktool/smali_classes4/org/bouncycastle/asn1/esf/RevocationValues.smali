.class public Lorg/bouncycastle/asn1/esf/RevocationValues;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RevocationValues.java"


# instance fields
.field private crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;


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

    .line 47
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_3

    .line 53
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 54
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 57
    .local v1, "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 82
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :pswitch_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/esf/OtherRevVals;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherRevVals;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    .line 79
    goto :goto_3

    .line 69
    :pswitch_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 70
    .local v2, "ocspValsSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 71
    .local v3, "ocspValsEnum":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    goto :goto_1

    .line 75
    :cond_0
    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 76
    goto :goto_3

    .line 60
    .end local v2    # "ocspValsSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "ocspValsEnum":Ljava/util/Enumeration;
    :pswitch_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 61
    .local v2, "crlValsSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 62
    .local v3, "crlValsEnum":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    goto :goto_2

    .line 66
    :cond_1
    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 67
    nop

    .line 84
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v2    # "crlValsSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "crlValsEnum":Ljava/util/Enumeration;
    :goto_3
    goto :goto_0

    .line 85
    :cond_2
    return-void

    .line 50
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 51
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/CertificateList;[Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;Lorg/bouncycastle/asn1/esf/OtherRevVals;)V
    .locals 1
    .param p1, "crlVals"    # [Lorg/bouncycastle/asn1/x509/CertificateList;
    .param p2, "ocspVals"    # [Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .param p3, "otherRevVals"    # Lorg/bouncycastle/asn1/esf/OtherRevVals;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "crlVals",
            "ocspVals",
            "otherRevVals"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 90
    if-eqz p1, :cond_0

    .line 92
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 94
    :cond_0
    if-eqz p2, :cond_1

    .line 96
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 98
    :cond_1
    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    .line 99
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/RevocationValues;
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

    .line 34
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;

    if-eqz v0, :cond_0

    .line 36
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/RevocationValues;

    return-object v0

    .line 38
    :cond_0
    if-eqz p0, :cond_1

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/esf/RevocationValues;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/RevocationValues;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCrlVals()[Lorg/bouncycastle/asn1/x509/CertificateList;
    .locals 3

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/CertificateList;

    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/CertificateList;

    .line 108
    .local v0, "result":[Lorg/bouncycastle/asn1/x509/CertificateList;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 110
    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 111
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 110
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v2

    aput-object v2, v0, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "idx":I
    :cond_1
    return-object v0
.end method

.method public getOcspVals()[Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    .line 123
    .local v0, "result":[Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 125
    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 126
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 125
    invoke-static {v2}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v2

    aput-object v2, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "idx":I
    :cond_1
    return-object v0
.end method

.method public getOtherRevVals()Lorg/bouncycastle/asn1/esf/OtherRevVals;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 138
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 139
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->crlVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 143
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1

    .line 145
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->ocspVals:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 147
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    if-eqz v1, :cond_2

    .line 149
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/RevocationValues;->otherRevVals:Lorg/bouncycastle/asn1/esf/OtherRevVals;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/esf/OtherRevVals;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
