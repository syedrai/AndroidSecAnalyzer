.class public Lorg/bouncycastle/openssl/CertificateTrustBlock;
.super Ljava/lang/Object;
.source "CertificateTrustBlock.java"


# instance fields
.field private alias:Ljava/lang/String;

.field private prohibitions:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private uses:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "uses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p2, "uses":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/openssl/CertificateTrustBlock;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "alias",
            "uses",
            "prohibitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p2, "uses":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    .local p3, "prohibitions":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->alias:Ljava/lang/String;

    .line 38
    invoke-direct {p0, p2}, Lorg/bouncycastle/openssl/CertificateTrustBlock;->toSequence(Ljava/util/Set;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->uses:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 39
    invoke-direct {p0, p3}, Lorg/bouncycastle/openssl/CertificateTrustBlock;->toSequence(Ljava/util/Set;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->prohibitions:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "uses":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/bouncycastle/openssl/CertificateTrustBlock;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 28
    return-void
.end method

.method constructor <init>([B)V
    .locals 5
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoded"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 46
    .local v0, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 50
    .local v2, "obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_0

    .line 52
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->uses:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_1

    .line 54
    :cond_0
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_1

    .line 56
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->prohibitions:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_1

    .line 58
    :cond_1
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v3, :cond_2

    .line 60
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->alias:Ljava/lang/String;

    .line 62
    .end local v2    # "obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    :goto_1
    goto :goto_0

    .line 63
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_3
    return-void
.end method

.method private toSequence(Ljava/util/Set;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;)",
            "Lorg/bouncycastle/asn1/ASN1Sequence;"
        }
    .end annotation

    .line 99
    .local p1, "oids":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 111
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 101
    .end local v0    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private toSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ASN1Sequence;",
            ")",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation

    .line 82
    if-eqz p1, :cond_1

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 86
    .local v0, "oids":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_0
    return-object v0

    .line 94
    .end local v0    # "oids":Ljava/util/Set;, "Ljava/util/Set<Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getProhibitions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->prohibitions:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/openssl/CertificateTrustBlock;->toSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->uses:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/openssl/CertificateTrustBlock;->toSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method toASN1Sequence()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 4

    .line 116
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 118
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->uses:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->uses:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->prohibitions:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1

    .line 124
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->prohibitions:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 126
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->alias:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 128
    new-instance v1, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object v2, p0, Lorg/bouncycastle/openssl/CertificateTrustBlock;->alias:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 131
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
