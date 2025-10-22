.class public Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DeltaCertificateDescriptor.java"


# instance fields
.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private final serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

.field private subject:Lorg/bouncycastle/asn1/x500/X500Name;

.field private subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private validity:Lorg/bouncycastle/asn1/ASN1Sequence;


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

    .line 75
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 78
    const/4 v1, 0x1

    .line 79
    .local v1, "idx":I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 80
    .local v2, "next":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    .line 82
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 83
    .local v3, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 95
    :pswitch_0
    invoke-static {v3, v5}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    goto :goto_1

    .line 92
    :pswitch_1
    invoke-static {v3, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 93
    goto :goto_1

    .line 89
    :pswitch_2
    invoke-static {v3, v5}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 90
    goto :goto_1

    .line 86
    :pswitch_3
    invoke-static {v3, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 87
    nop

    .line 98
    :goto_1
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 99
    .end local v3    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    move v1, v4

    goto :goto_0

    .line 101
    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 103
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 104
    :goto_2
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_1

    .line 106
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 107
    .restart local v3    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_3

    .line 110
    :pswitch_4
    invoke-static {v3, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 113
    :goto_3
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 114
    .end local v3    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    move v1, v4

    goto :goto_2

    .line 116
    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    :cond_1
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 117
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V
    .locals 1
    .param p1, "v"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "tag"    # I
    .param p3, "explicit"    # Z
    .param p4, "obj"    # Lorg/bouncycastle/asn1/ASN1Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "tag",
            "explicit",
            "obj"
        }
    .end annotation

    .line 253
    if-eqz p4, :cond_0

    .line 255
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, p3, p2, p4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 257
    :cond_0
    return-void
.end method

.method public static fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .locals 1
    .param p0, "extensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensions"
        }
    .end annotation

    .line 71
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
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

    .line 51
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    return-object v0

    .line 55
    :cond_0
    if-eqz p0, :cond_1

    .line 57
    new-instance v0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 60
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSignatureValue()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getValidity()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 261
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 263
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 264
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    .line 265
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v3, v1}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    .line 266
    const/4 v1, 0x2

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    .line 267
    const/4 v1, 0x3

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    .line 268
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 269
    const/4 v1, 0x4

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    .line 270
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 272
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public trimTo(Lorg/bouncycastle/asn1/x509/TBSCertificate;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .locals 17
    .param p1, "baseTbsCertificate"    # Lorg/bouncycastle/asn1/x509/TBSCertificate;
    .param p2, "tbsExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseTbsCertificate",
            "tbsExtensions"
        }
    .end annotation

    .line 161
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/bouncycastle/asn1/x509/TBSCertificate;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 162
    .local v1, "signature":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v2, v0, Lorg/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 163
    .local v2, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v5, v0, Lorg/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v0, Lorg/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 167
    .local v3, "validity":Lorg/bouncycastle/asn1/ASN1Sequence;
    iget-object v4, v0, Lorg/bouncycastle/asn1/x509/TBSCertificate;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 168
    .local v4, "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    .line 169
    .local v5, "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 171
    .local v8, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v9

    .line 172
    .local v9, "en":Ljava/util/Enumeration;
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v8, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 174
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 175
    .local v10, "next":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    instance-of v11, v10, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v11, :cond_1

    .line 177
    invoke-static {v10}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v11

    .line 178
    .local v11, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_1

    .line 202
    :pswitch_0
    invoke-static {v11, v7}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    .line 203
    .local v12, "sub":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v12, v4}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 205
    invoke-virtual {v8, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 195
    .end local v12    # "sub":Lorg/bouncycastle/asn1/x500/X500Name;
    :pswitch_1
    invoke-static {v11, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v12

    .line 196
    .local v12, "val":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v12, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 198
    invoke-virtual {v8, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 188
    .end local v12    # "val":Lorg/bouncycastle/asn1/ASN1Sequence;
    :pswitch_2
    invoke-static {v11, v7}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v12

    .line 189
    .local v12, "iss":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v12, v2}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 191
    invoke-virtual {v8, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 181
    .end local v12    # "iss":Lorg/bouncycastle/asn1/x500/X500Name;
    :pswitch_3
    invoke-static {v11, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v12

    .line 182
    .local v12, "sig":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v12, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 184
    invoke-virtual {v8, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 209
    .end local v12    # "sig":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    move-object v10, v12

    check-cast v10, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 210
    .end local v11    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {v8, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 214
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 215
    .end local v10    # "next":Lorg/bouncycastle/asn1/ASN1Encodable;
    .local v7, "next":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_2
    instance-of v10, v7, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v10, :cond_5

    .line 217
    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v10

    .line 218
    .local v10, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v11

    packed-switch v11, :pswitch_data_1

    move-object/from16 v6, p2

    const/4 v0, 0x0

    goto :goto_4

    .line 221
    :pswitch_4
    invoke-static {v10, v6}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v11

    .line 222
    .local v11, "deltaExts":Lorg/bouncycastle/asn1/x509/Extensions;
    new-instance v12, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 223
    .local v12, "deltaExtGen":Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v13

    .local v13, "extEn":Ljava/util/Enumeration;
    :goto_3
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 225
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v14

    .line 226
    .local v14, "deltaExt":Lorg/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    move-object/from16 v6, p2

    invoke-virtual {v6, v15}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v15

    .line 228
    .local v15, "primaryExt":Lorg/bouncycastle/asn1/x509/Extension;
    if-eqz v15, :cond_2

    .line 230
    invoke-virtual {v14, v15}, Lorg/bouncycastle/asn1/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 232
    invoke-virtual {v12, v14}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    .line 235
    .end local v14    # "deltaExt":Lorg/bouncycastle/asn1/x509/Extension;
    .end local v15    # "primaryExt":Lorg/bouncycastle/asn1/x509/Extension;
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 223
    :cond_3
    move-object/from16 v6, p2

    .line 238
    .end local v13    # "extEn":Ljava/util/Enumeration;
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 240
    new-instance v13, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v14, 0x4

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v15

    const/4 v0, 0x0

    invoke-direct {v13, v0, v14, v15}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_4

    .line 238
    :cond_4
    const/4 v0, 0x0

    .line 243
    .end local v11    # "deltaExts":Lorg/bouncycastle/asn1/x509/Extensions;
    .end local v12    # "deltaExtGen":Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    move-object v7, v11

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 244
    .end local v10    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    move-object/from16 v0, p1

    const/4 v6, 0x0

    goto :goto_2

    .line 246
    :cond_5
    move-object/from16 v6, p2

    invoke-virtual {v8, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 248
    new-instance v0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v10}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch
.end method
