.class public Lorg/bouncycastle/asn1/DLSequence;
.super Lorg/bouncycastle/asn1/ASN1Sequence;
.source "DLSequence.java"


# instance fields
.field private contentsLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "element"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "elementVector"    # Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementVector"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 36
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "elements"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 45
    return-void
.end method

.method constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;Z)V
    .locals 1
    .param p1, "elements"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .param p2, "clone"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "clone"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 50
    return-void
.end method

.method private getContentsLength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    if-gez v0, :cond_1

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLSequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 57
    .local v0, "count":I
    const/4 v1, 0x0

    .line 59
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 61
    iget-object v3, p0, Lorg/bouncycastle/asn1/DLSequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 62
    .local v3, "dlObject":Lorg/bouncycastle/asn1/ASN1Primitive;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 59
    .end local v3    # "dlObject":Lorg/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    :cond_0
    iput v1, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 68
    .end local v0    # "count":I
    .end local v1    # "totalLength":I
    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    return v0
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 8
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

    .line 86
    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 88
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lorg/bouncycastle/asn1/DLOutputStream;

    move-result-object v0

    .line 90
    .local v0, "dlOut":Lorg/bouncycastle/asn1/ASN1OutputStream;
    iget-object v1, p0, Lorg/bouncycastle/asn1/DLSequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    .line 91
    .local v1, "count":I
    iget v2, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    const/4 v3, 0x1

    if-gez v2, :cond_2

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    goto :goto_2

    .line 102
    :cond_0
    const/4 v2, 0x0

    .line 104
    .local v2, "totalLength":I
    new-array v4, v1, [Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 105
    .local v4, "dlObjects":[Lorg/bouncycastle/asn1/ASN1Primitive;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 107
    iget-object v6, p0, Lorg/bouncycastle/asn1/DLSequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 108
    .local v6, "dlObject":Lorg/bouncycastle/asn1/ASN1Primitive;
    aput-object v6, v4, v5

    .line 109
    invoke-virtual {v6, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v7

    add-int/2addr v2, v7

    .line 105
    .end local v6    # "dlObject":Lorg/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    .end local v5    # "i":I
    :cond_1
    iput v2, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 113
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 115
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 117
    aget-object v6, v4, v5

    invoke-virtual {v0, v6, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 93
    .end local v2    # "totalLength":I
    .end local v4    # "dlObjects":[Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "i":I
    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLSequence;->getContentsLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 95
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 97
    iget-object v4, p0, Lorg/bouncycastle/asn1/DLSequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 120
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method encodedLength(Z)I
    .locals 1
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

    .line 73
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLSequence;->getContentsLength()I

    move-result v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method toASN1BitString()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 3

    .line 124
    new-instance v0, Lorg/bouncycastle/asn1/DLBitString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLSequence;->getConstructedBitStrings()[Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lorg/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0
.end method

.method toASN1External()Lorg/bouncycastle/asn1/ASN1External;
    .locals 1

    .line 129
    new-instance v0, Lorg/bouncycastle/asn1/DLExternal;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DLExternal;-><init>(Lorg/bouncycastle/asn1/DLSequence;)V

    return-object v0
.end method

.method toASN1OctetString()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 2

    .line 135
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLSequence;->getConstructedOctetStrings()[Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/BEROctetString;->flattenOctetStrings([Lorg/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method toASN1Set()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 3

    .line 140
    new-instance v0, Lorg/bouncycastle/asn1/DLSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLSequence;->toArrayInternal()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DLSet;-><init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 145
    return-object p0
.end method
