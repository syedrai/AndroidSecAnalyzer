.class public Lorg/bouncycastle/asn1/ess/ContentHints;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ContentHints.java"


# instance fields
.field private contentDescription:Lorg/bouncycastle/asn1/ASN1UTF8String;

.field private contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "contentType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentType"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1UTF8String;)V
    .locals 0
    .param p1, "contentType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "contentDescription"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentType",
            "contentDescription"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    iput-object p2, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 63
    return-void
.end method

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

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 39
    .local v1, "field":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v2, :cond_0

    .line 41
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    :goto_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/ContentHints;
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

    .line 21
    instance-of v0, p0, Lorg/bouncycastle/asn1/ess/ContentHints;

    if-eqz v0, :cond_0

    .line 23
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ess/ContentHints;

    return-object v0

    .line 25
    :cond_0
    if-eqz p0, :cond_1

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/ess/ContentHints;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ess/ContentHints;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 30
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getContentDescription()Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lorg/bouncycastle/asn1/ASN1UTF8String;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lorg/bouncycastle/asn1/ASN1UTF8String;

    check-cast v0, Lorg/bouncycastle/asn1/DERUTF8String;

    .line 75
    :goto_1
    return-object v0
.end method

.method public getContentDescriptionUTF8()Lorg/bouncycastle/asn1/ASN1UTF8String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lorg/bouncycastle/asn1/ASN1UTF8String;

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 94
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 96
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ess/ContentHints;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
