.class public Lorg/bouncycastle/asn1/cmc/GetCRL;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "GetCRL.java"


# instance fields
.field private cRLName:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private final issuerName:Lorg/bouncycastle/asn1/x500/X500Name;

.field private reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

.field private time:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;


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

    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->issuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 51
    const/4 v0, 0x1

    .line 52
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    .line 54
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->cRLName:Lorg/bouncycastle/asn1/x509/GeneralName;

    move v0, v1

    .line 56
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_1

    .line 58
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->time:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move v0, v1

    .line 60
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_2

    .line 62
    new-instance v1, Lorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/ReasonFlags;-><init>(Lorg/bouncycastle/asn1/ASN1BitString;)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    .line 64
    :cond_2
    return-void

    .line 47
    .end local v0    # "index":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/ReasonFlags;)V
    .locals 0
    .param p1, "issuerName"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "cRLName"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .param p3, "time"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p4, "reasons"    # Lorg/bouncycastle/asn1/x509/ReasonFlags;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "issuerName",
            "cRLName",
            "time",
            "reasons"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->issuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->cRLName:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 38
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->time:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 39
    iput-object p4, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    .line 40
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/GetCRL;
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

    .line 68
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;

    if-eqz v0, :cond_0

    .line 70
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/GetCRL;

    return-object v0

    .line 73
    :cond_0
    if-eqz p0, :cond_1

    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/cmc/GetCRL;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/GetCRL;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getIssuerName()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->issuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public getTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->time:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getcRLName()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->cRLName:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 103
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 105
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->issuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->cRLName:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->cRLName:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->time:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->time:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/GetCRL;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
