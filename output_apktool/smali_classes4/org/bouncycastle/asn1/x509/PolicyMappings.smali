.class public Lorg/bouncycastle/asn1/x509/PolicyMappings;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PolicyMappings.java"


# instance fields
.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 6
    .param p1, "mappings"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mappings"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 63
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 65
    .local v0, "dev":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 66
    .local v1, "it":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    .local v2, "idp":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 70
    .local v3, "sdp":Ljava/lang/String;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 71
    .local v4, "dv":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 72
    new-instance v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 73
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 74
    .end local v2    # "idp":Ljava/lang/String;
    .end local v3    # "sdp":Ljava/lang/String;
    .end local v4    # "dv":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_0

    .line 76
    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 77
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
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

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 50
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/CertPolicyId;Lorg/bouncycastle/asn1/x509/CertPolicyId;)V
    .locals 3
    .param p1, "issuerDomainPolicy"    # Lorg/bouncycastle/asn1/x509/CertPolicyId;
    .param p2, "subjectDomainPolicy"    # Lorg/bouncycastle/asn1/x509/CertPolicyId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuerDomainPolicy",
            "subjectDomainPolicy"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 82
    .local v0, "dv":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 83
    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 86
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/CertPolicyId;[Lorg/bouncycastle/asn1/x509/CertPolicyId;)V
    .locals 4
    .param p1, "issuerDomainPolicy"    # [Lorg/bouncycastle/asn1/x509/CertPolicyId;
    .param p2, "subjectDomainPolicy"    # [Lorg/bouncycastle/asn1/x509/CertPolicyId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuerDomainPolicy",
            "subjectDomainPolicy"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 90
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 92
    .local v0, "dev":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 94
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 95
    .local v2, "dv":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 96
    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 97
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    .end local v2    # "dv":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 101
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyMappings;
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

    .line 30
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/PolicyMappings;

    return-object v0

    .line 34
    :cond_0
    if-eqz p0, :cond_1

    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/x509/PolicyMappings;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/PolicyMappings;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
