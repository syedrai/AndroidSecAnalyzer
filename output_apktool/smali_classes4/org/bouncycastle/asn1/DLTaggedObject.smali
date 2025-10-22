.class public Lorg/bouncycastle/asn1/DLTaggedObject;
.super Lorg/bouncycastle/asn1/ASN1TaggedObject;
.source "DLTaggedObject.java"


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

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 41
    return-void
.end method

.method public constructor <init>(IILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tagClass",
            "tagNo",
            "encodable"
        }
    .end annotation

    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 21
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "tagNo"    # I
    .param p2, "encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagNo",
            "encodable"
        }
    .end annotation

    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 16
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

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 36
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

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 31
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

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 70
    .local v0, "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v1

    .line 72
    .local v1, "explicit":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 74
    iget v3, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    .line 75
    .local v3, "flags":I
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    :cond_0
    or-int/lit8 v3, v3, 0x20

    .line 80
    :cond_1
    iget v4, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZII)V

    .line 83
    .end local v3    # "flags":I
    :cond_2
    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 88
    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lorg/bouncycastle/asn1/DLOutputStream;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 89
    return-void
.end method

.method encodeConstructed()Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

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

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 51
    .local v0, "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v1

    .line 53
    .local v1, "explicit":Z
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    .line 55
    .local v2, "length":I
    if-eqz v1, :cond_0

    .line 57
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfDL(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 60
    :cond_0
    if-eqz p1, :cond_1

    iget v3, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfIdentifier(I)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    .line 62
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

    .line 93
    new-instance v0, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

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

    .line 98
    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicitness:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 103
    return-object p0
.end method
