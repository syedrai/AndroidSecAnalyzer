.class public Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RootCaKeyUpdateContent.java"


# instance fields
.field private final newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private final newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private final oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_3

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "newWithOld":Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    const/4 v2, 0x0

    .line 58
    .local v2, "oldWithNew":Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 60
    .local v3, "encodable":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/bouncycastle/asn1/ASN1Encodable;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v4

    .line 61
    .local v4, "newWithNew":Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    .line 64
    .local v5, "ato":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    invoke-static {v5, v1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    invoke-static {v5, v1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v2

    .line 72
    .end local v5    # "ato":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    :goto_1
    goto :goto_0

    .line 74
    :cond_2
    iput-object v4, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 75
    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 76
    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 77
    return-void

    .line 51
    .end local v0    # "newWithOld":Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .end local v2    # "oldWithNew":Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .end local v3    # "encodable":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/bouncycastle/asn1/ASN1Encodable;>;"
    .end local v4    # "newWithNew":Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence of 1 to 3 elements only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V
    .locals 2
    .param p1, "newWithNew"    # Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .param p2, "newWithOld"    # Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .param p3, "oldWithNew"    # Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newWithNew",
            "newWithOld",
            "oldWithNew"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 43
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 44
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    .line 45
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'newWithNew\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;
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

    .line 81
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;

    return-object v0

    .line 85
    :cond_0
    if-eqz p0, :cond_1

    .line 87
    new-instance v0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 89
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getNewWithNew()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getNewWithOld()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getOldWithNew()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 109
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 110
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 112
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 116
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    if-eqz v1, :cond_1

    .line 118
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
