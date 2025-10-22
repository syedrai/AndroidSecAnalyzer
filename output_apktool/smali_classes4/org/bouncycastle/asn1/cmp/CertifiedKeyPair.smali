.class public Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CertifiedKeyPair.java"


# instance fields
.field private final certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

.field private privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

.field private publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;


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

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    .line 36
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 38
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-ne v0, v1, :cond_1

    .line 40
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 41
    .local v0, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    .line 49
    .end local v0    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_0
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    .line 53
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    .line 56
    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertOrEncCert;)V
    .locals 2
    .param p1, "certOrEncCert"    # Lorg/bouncycastle/asn1/cmp/CertOrEncCert;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certOrEncCert"
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;-><init>(Lorg/bouncycastle/asn1/cmp/CertOrEncCert;Lorg/bouncycastle/asn1/crmf/EncryptedKey;Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertOrEncCert;Lorg/bouncycastle/asn1/crmf/EncryptedKey;Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;)V
    .locals 2
    .param p1, "certOrEncCert"    # Lorg/bouncycastle/asn1/cmp/CertOrEncCert;
    .param p2, "privateKey"    # Lorg/bouncycastle/asn1/crmf/EncryptedKey;
    .param p3, "publicationInfo"    # Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certOrEncCert",
            "privateKey",
            "publicationInfo"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    .line 75
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    .line 76
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    .line 77
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certOrEncCert\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertOrEncCert;Lorg/bouncycastle/asn1/crmf/EncryptedValue;Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;)V
    .locals 2
    .param p1, "certOrEncCert"    # Lorg/bouncycastle/asn1/cmp/CertOrEncCert;
    .param p2, "privateKey"    # Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .param p3, "publicationInfo"    # Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certOrEncCert",
            "privateKey",
            "publicationInfo"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 84
    if-eqz p1, :cond_1

    .line 89
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    .line 90
    if-eqz p2, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;-><init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    .line 91
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    .line 92
    return-void

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certOrEncCert\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;
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

    .line 96
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    return-object v0

    .line 101
    :cond_0
    if-eqz p0, :cond_1

    .line 103
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 106
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertOrEncCert()Lorg/bouncycastle/asn1/cmp/CertOrEncCert;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    return-object v0
.end method

.method public getPrivateKey()Lorg/bouncycastle/asn1/crmf/EncryptedKey;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    return-object v0
.end method

.method public getPublicationInfo()Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 131
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 133
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 135
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    if-eqz v1, :cond_1

    .line 142
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 145
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
