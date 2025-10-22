.class public Lorg/bouncycastle/asn1/cms/ContentInfoParser;
.super Ljava/lang/Object;
.source "ContentInfoParser.java"


# instance fields
.field private content:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

.field private contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->content:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    .line 31
    return-void
.end method


# virtual methods
.method public getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->content:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->content:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Util;->parseExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
