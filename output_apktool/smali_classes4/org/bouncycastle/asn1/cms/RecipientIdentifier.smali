.class public Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RecipientIdentifier.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private id:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 2
    .param p1, "id"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0
    .param p1, "id"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .locals 0
    .param p1, "id"    # Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 33
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 65
    if-eqz p0, :cond_4

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    return-object v0

    .line 75
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0

    .line 80
    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v0, :cond_3

    .line 82
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 85
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal object in RecipientIdentifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_4
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    return-object v0
.end method


# virtual methods
.method public getId()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v0

    return-object v0
.end method

.method public isTagged()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
