.class public Lorg/bouncycastle/asn1/DLSet;
.super Lorg/bouncycastle/asn1/ASN1Set;
.source "DLSet.java"


# instance fields
.field private contentsLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSet;->contentsLength:I

    .line 63
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

    .line 70
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSet;->contentsLength:I

    .line 71
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

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSet;->contentsLength:I

    .line 79
    return-void
.end method

.method constructor <init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "isSorted"    # Z
    .param p2, "elements"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isSorted",
            "elements"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSet;->contentsLength:I

    .line 92
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

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSet;->contentsLength:I

    .line 87
    return-void
.end method

.method constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "elements"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .param p2, "sortedElements"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "sortedElements"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Set;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSet;->contentsLength:I

    .line 97
    return-void
.end method

.method private getContentsLength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget v0, p0, Lorg/bouncycastle/asn1/DLSet;->contentsLength:I

    if-gez v0, :cond_1

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 104
    .local v0, "count":I
    const/4 v1, 0x0

    .line 106
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 108
    iget-object v3, p0, Lorg/bouncycastle/asn1/DLSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 109
    .local v3, "dlObject":Lorg/bouncycastle/asn1/ASN1Primitive;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 106
    .end local v3    # "dlObject":Lorg/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v2    # "i":I
    :cond_0
    iput v1, p0, Lorg/bouncycastle/asn1/DLSet;->contentsLength:I

    .line 115
    .end local v0    # "count":I
    .end local v1    # "totalLength":I
    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/DLSet;->contentsLength:I

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

    .line 133
    const/16 v0, 0x31

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 135
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lorg/bouncycastle/asn1/DLOutputStream;

    move-result-object v0

    .line 137
    .local v0, "dlOut":Lorg/bouncycastle/asn1/ASN1OutputStream;
    iget-object v1, p0, Lorg/bouncycastle/asn1/DLSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v1

    .line 138
    .local v1, "count":I
    iget v2, p0, Lorg/bouncycastle/asn1/DLSet;->contentsLength:I

    const/4 v3, 0x1

    if-gez v2, :cond_2

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    goto :goto_2

    .line 149
    :cond_0
    const/4 v2, 0x0

    .line 151
    .local v2, "totalLength":I
    new-array v4, v1, [Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 152
    .local v4, "dlObjects":[Lorg/bouncycastle/asn1/ASN1Primitive;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 154
    iget-object v6, p0, Lorg/bouncycastle/asn1/DLSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 155
    .local v6, "dlObject":Lorg/bouncycastle/asn1/ASN1Primitive;
    aput-object v6, v4, v5

    .line 156
    invoke-virtual {v6, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v7

    add-int/2addr v2, v7

    .line 152
    .end local v6    # "dlObject":Lorg/bouncycastle/asn1/ASN1Primitive;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 159
    .end local v5    # "i":I
    :cond_1
    iput v2, p0, Lorg/bouncycastle/asn1/DLSet;->contentsLength:I

    .line 160
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 162
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 164
    aget-object v6, v4, v5

    invoke-virtual {v0, v6, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 162
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 140
    .end local v2    # "totalLength":I
    .end local v4    # "dlObjects":[Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "i":I
    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLSet;->getContentsLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 142
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 144
    iget-object v4, p0, Lorg/bouncycastle/asn1/DLSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 167
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

    .line 120
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLSet;->getContentsLength()I

    move-result v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    .line 171
    return-object p0
.end method
