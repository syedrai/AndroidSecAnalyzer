.class public Lorg/bouncycastle/asn1/cms/ContentInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ContentInfo.java"

# interfaces
.implements Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;


# instance fields
.field private final content:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final isDefiniteLength:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "contentType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "content"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentType",
            "content"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 108
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 109
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 111
    invoke-interface {p2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 112
    .local v1, "prim":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lorg/bouncycastle/asn1/DEROctetString;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/bouncycastle/asn1/DLSequence;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/bouncycastle/asn1/DERSequence;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength:Z

    .line 116
    .end local v1    # "prim":Lorg/bouncycastle/asn1/ASN1Primitive;
    goto :goto_1

    .line 120
    :cond_2
    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength:Z

    .line 122
    :goto_1
    return-void
.end method

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

    .line 79
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 88
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 89
    .local v0, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 95
    .end local v0    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    goto :goto_0

    .line 91
    .restart local v0    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad tag for \'content\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    .end local v0    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 100
    :goto_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/BERSequence;

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength:Z

    .line 101
    return-void

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;
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

    .line 58
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0

    .line 62
    :cond_0
    if-eqz p0, :cond_1

    .line 64
    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/ContentInfo;
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

    .line 74
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public isDefiniteLength()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 149
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 151
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 153
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_1

    .line 155
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Lorg/bouncycastle/asn1/DLTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 161
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/BERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 165
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength:Z

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    :goto_1
    return-object v1
.end method
