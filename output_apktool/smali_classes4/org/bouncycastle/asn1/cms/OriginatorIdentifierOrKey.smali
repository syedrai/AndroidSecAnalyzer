.class public Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "OriginatorIdentifierOrKey.java"

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

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;)V

    .line 46
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

    .line 65
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 67
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

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;)V
    .locals 3
    .param p1, "id"    # Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 57
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;)V
    .locals 2
    .param p1, "id"    # Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 52
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
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

    .line 107
    if-eqz p0, :cond_5

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    return-object v0

    .line 117
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 119
    new-instance v0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    return-object v0

    .line 122
    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_4

    .line 124
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 126
    .local v0, "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    new-instance v2, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;)V

    return-object v2

    .line 131
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    new-instance v2, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;)V

    return-object v2

    .line 137
    .end local v0    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid OriginatorIdentifierOrKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_5
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 2
    .param p0, "o"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "explicit"
        }
    .end annotation

    .line 82
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t implicitly tag OriginatorIdentifierOrKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getId()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getIssuerAndSerialNumber()Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    return-object v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginatorKey()Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 174
    .local v0, "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v1

    return-object v1

    .line 180
    .end local v0    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubjectKeyIdentifier()Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 3

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 160
    .local v0, "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v1

    return-object v1

    .line 166
    .end local v0    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
