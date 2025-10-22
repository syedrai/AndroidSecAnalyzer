.class public Lorg/bouncycastle/asn1/cms/SignerInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SignerInfo.java"


# instance fields
.field private authenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

.field private digAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private digEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private encryptedDigest:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private sid:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

.field private unauthenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 186
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 188
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 189
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    .line 190
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 192
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 194
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 196
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 198
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    .line 202
    :cond_0
    iput-object v4, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 203
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 206
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 208
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    goto :goto_1

    .line 214
    :cond_1
    iput-object v4, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 216
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 3
    .param p1, "sid"    # Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .param p2, "digAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "authenticatedAttributes"    # Lorg/bouncycastle/asn1/ASN1Set;
    .param p4, "digEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "encryptedDigest"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p6, "unauthenticatedAttributes"    # Lorg/bouncycastle/asn1/ASN1Set;
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
            "sid",
            "digAlgorithm",
            "authenticatedAttributes",
            "digEncryptionAlgorithm",
            "encryptedDigest",
            "unauthenticatedAttributes"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 141
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    .line 142
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 143
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 144
    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 145
    iput-object p5, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 146
    iput-object p6, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 147
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/Attributes;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/cms/Attributes;)V
    .locals 3
    .param p1, "sid"    # Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .param p2, "digAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "authenticatedAttributes"    # Lorg/bouncycastle/asn1/cms/Attributes;
    .param p4, "digEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "encryptedDigest"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p6, "unauthenticatedAttributes"    # Lorg/bouncycastle/asn1/cms/Attributes;
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
            "sid",
            "digAlgorithm",
            "authenticatedAttributes",
            "digEncryptionAlgorithm",
            "encryptedDigest",
            "unauthenticatedAttributes"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 172
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 175
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    .line 176
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 177
    invoke-static {p3}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 178
    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 179
    iput-object p5, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 180
    invoke-static {p6}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 181
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 103
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;

    if-eqz v0, :cond_0

    .line 105
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/SignerInfo;

    return-object v0

    .line 107
    :cond_0
    if-eqz p0, :cond_1

    .line 109
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 112
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method

.method public getUnauthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 258
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 260
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 261
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->sid:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 262
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 264
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 269
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 270
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 272
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 274
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 277
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
