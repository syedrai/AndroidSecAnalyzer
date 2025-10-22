.class public Lorg/bouncycastle/asn1/bc/LinkedCertificate;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "LinkedCertificate.java"


# instance fields
.field private cACerts:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private certIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private final certLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private final digest:Lorg/bouncycastle/asn1/x509/DigestInfo;


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

    .line 49
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lorg/bouncycastle/asn1/x509/DigestInfo;

    .line 51
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 53
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 55
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 57
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 59
    .local v2, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown tag in tagged field"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_0
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 66
    goto :goto_1

    .line 62
    :pswitch_1
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 63
    nop

    .line 55
    .end local v2    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DigestInfo;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "digest"    # Lorg/bouncycastle/asn1/x509/DigestInfo;
    .param p2, "certLocation"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digest",
            "certLocation"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/bouncycastle/asn1/bc/LinkedCertificate;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DigestInfo;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 0
    .param p1, "digest"    # Lorg/bouncycastle/asn1/x509/DigestInfo;
    .param p2, "certLocation"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .param p3, "certIssuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p4, "cACerts"    # Lorg/bouncycastle/asn1/x509/GeneralNames;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "certLocation",
            "certIssuer",
            "cACerts"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lorg/bouncycastle/asn1/x509/DigestInfo;

    .line 43
    iput-object p2, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 44
    iput-object p3, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 45
    iput-object p4, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 46
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/LinkedCertificate;
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

    .line 76
    instance-of v0, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;

    return-object v0

    .line 80
    :cond_0
    if-eqz p0, :cond_1

    .line 82
    new-instance v0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bc/LinkedCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 85
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCACerts()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getCertIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getCertLocation()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getDigest()Lorg/bouncycastle/asn1/x509/DigestInfo;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lorg/bouncycastle/asn1/x509/DigestInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 110
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 112
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_1

    .line 121
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 124
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
