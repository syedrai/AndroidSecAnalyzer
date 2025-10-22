.class public Lorg/bouncycastle/asn1/ocsp/SingleResponse;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SingleResponse.java"


# instance fields
.field private certID:Lorg/bouncycastle/asn1/ocsp/CertID;

.field private certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

.field private nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private singleExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private thisUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lorg/bouncycastle/asn1/ocsp/CertID;

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    .line 60
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 62
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-le v1, v3, :cond_0

    .line 64
    nop

    .line 65
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 64
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 66
    nop

    .line 67
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 66
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 71
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 73
    .local v1, "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_1

    .line 75
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 82
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/CertStatus;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 0
    .param p1, "certID"    # Lorg/bouncycastle/asn1/ocsp/CertID;
    .param p2, "certStatus"    # Lorg/bouncycastle/asn1/ocsp/CertStatus;
    .param p3, "thisUpdate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p4, "nextUpdate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p5, "singleExtensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certID",
            "certStatus",
            "thisUpdate",
            "nextUpdate",
            "singleExtensions"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lorg/bouncycastle/asn1/ocsp/CertID;

    .line 49
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    .line 50
    iput-object p3, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 51
    iput-object p4, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 52
    iput-object p5, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/CertStatus;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 6
    .param p1, "certID"    # Lorg/bouncycastle/asn1/ocsp/CertID;
    .param p2, "certStatus"    # Lorg/bouncycastle/asn1/ocsp/CertStatus;
    .param p3, "thisUpdate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p4, "nextUpdate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p5, "singleExtensions"    # Lorg/bouncycastle/asn1/x509/X509Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certID",
            "certStatus",
            "thisUpdate",
            "nextUpdate",
            "singleExtensions"
        }
    .end annotation

    .line 38
    invoke-static {p5}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .end local p2    # "certStatus":Lorg/bouncycastle/asn1/ocsp/CertStatus;
    .end local p3    # "thisUpdate":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local p4    # "nextUpdate":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .local v1, "certID":Lorg/bouncycastle/asn1/ocsp/CertID;
    .local v2, "certStatus":Lorg/bouncycastle/asn1/ocsp/CertStatus;
    .local v3, "thisUpdate":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .local v4, "nextUpdate":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/CertStatus;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 39
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/SingleResponse;
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

    .line 94
    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    if-eqz v0, :cond_0

    .line 96
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    return-object v0

    .line 98
    :cond_0
    if-eqz p0, :cond_1

    .line 100
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 103
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/SingleResponse;
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

    .line 88
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertID()Lorg/bouncycastle/asn1/ocsp/CertID;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-object v0
.end method

.method public getCertStatus()Lorg/bouncycastle/asn1/ocsp/CertStatus;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    return-object v0
.end method

.method public getNextUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getSingleExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getThisUpdate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 144
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 146
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 147
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 148
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 150
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_1

    .line 157
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 160
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
