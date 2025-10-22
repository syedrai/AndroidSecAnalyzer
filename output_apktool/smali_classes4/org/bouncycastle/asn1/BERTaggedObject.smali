.class public Lorg/bouncycastle/asn1/BERTaggedObject;
.super Lorg/bouncycastle/asn1/ASN1TaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method constructor <init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "explicitness"    # I
    .param p2, "tagClass"    # I
    .param p3, "tagNo"    # I
    .param p4, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "explicitness",
            "tagClass",
            "tagNo",
            "obj"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 45
    return-void
.end method

.method public constructor <init>(IILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tagClass",
            "tagNo",
            "obj"
        }
    .end annotation

    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 25
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "tagNo"    # I
    .param p2, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagNo",
            "obj"
        }
    .end annotation

    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 20
    return-void
.end method

.method public constructor <init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "explicit"    # Z
    .param p2, "tagClass"    # I
    .param p3, "tagNo"    # I
    .param p4, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "explicit",
            "tagClass",
            "tagNo",
            "obj"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 40
    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "explicit",
            "tagNo",
            "obj"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 35
    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 5
    .param p1, "out"    # Lorg/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "withTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 74
    .local v0, "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERTaggedObject;->isExplicit()Z

    move-result v1

    .line 76
    .local v1, "explicit":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 78
    iget v3, p0, Lorg/bouncycastle/asn1/BERTaggedObject;->tagClass:I

    .line 79
    .local v3, "flags":I
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    :cond_0
    or-int/lit8 v3, v3, 0x20

    .line 84
    :cond_1
    iget v4, p0, Lorg/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-virtual {p1, v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZII)V

    .line 87
    .end local v3    # "flags":I
    :cond_2
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 89
    const/16 v4, 0x80

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 90
    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 91
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 92
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v0, p1, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 98
    :goto_0
    return-void
.end method

.method encodeConstructed()Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERTaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method encodedLength(Z)I
    .locals 4
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 55
    .local v0, "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERTaggedObject;->isExplicit()Z

    move-result v1

    .line 57
    .local v1, "explicit":Z
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    .line 59
    .local v2, "length":I
    if-eqz v1, :cond_0

    .line 61
    add-int/lit8 v2, v2, 0x3

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    iget v3, p0, Lorg/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfIdentifier(I)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    .line 66
    return v2
.end method

.method rebuildConstructed(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1
    .param p1, "primitive"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitive"
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method replaceTag(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 3
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagClass",
            "tagNo"
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/BERTaggedObject;->explicitness:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/BERTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
