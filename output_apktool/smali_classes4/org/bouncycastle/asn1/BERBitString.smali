.class public Lorg/bouncycastle/asn1/BERBitString;
.super Lorg/bouncycastle/asn1/ASN1BitString;
.source "BERBitString.java"


# static fields
.field private static final DEFAULT_SEGMENT_LIMIT:I = 0x3e8


# instance fields
.field private final elements:[Lorg/bouncycastle/asn1/ASN1BitString;

.field private final segmentLimit:I


# direct methods
.method public constructor <init>(BI)V
    .locals 1
    .param p1, "data"    # B
    .param p2, "padBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "padBits"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    .line 72
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BI)V

    .line 90
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BI)V

    .line 66
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "padBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "padBits"
        }
    .end annotation

    .line 77
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BII)V

    .line 78
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "padBits"    # I
    .param p3, "segmentLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "padBits",
            "segmentLimit"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    .line 84
    iput p3, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 85
    return-void
.end method

.method constructor <init>([BZ)V
    .locals 1
    .param p1, "contents"    # [B
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contents",
            "check"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    .line 108
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 109
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 1
    .param p1, "elements"    # [Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .line 94
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([Lorg/bouncycastle/asn1/ASN1BitString;I)V

    .line 95
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1BitString;I)V
    .locals 2
    .param p1, "elements"    # [Lorg/bouncycastle/asn1/ASN1BitString;
    .param p2, "segmentLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "segmentLimit"
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lorg/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lorg/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    .line 100
    iput-object p1, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    .line 101
    iput p2, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 102
    return-void
.end method

.method static flattenBitStrings([Lorg/bouncycastle/asn1/ASN1BitString;)[B
    .locals 11
    .param p0, "bitStrings"    # [Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitStrings"
        }
    .end annotation

    .line 18
    array-length v0, p0

    .line 19
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 28
    add-int/lit8 v3, v0, -0x1

    .local v3, "last":I
    const/4 v4, 0x0

    .line 29
    .local v4, "totalLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    goto :goto_0

    .line 25
    .end local v3    # "last":I
    .end local v4    # "totalLength":I
    .end local v5    # "i":I
    :pswitch_0
    aget-object v1, p0, v1

    iget-object v1, v1, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    return-object v1

    .line 23
    :pswitch_1
    new-array v2, v2, [B

    aput-byte v1, v2, v1

    return-object v2

    .line 29
    .restart local v3    # "last":I
    .restart local v4    # "totalLength":I
    .restart local v5    # "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 31
    aget-object v6, p0, v5

    iget-object v6, v6, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 32
    .local v6, "elementContents":[B
    aget-byte v7, v6, v1

    if-nez v7, :cond_0

    .line 37
    array-length v7, v6

    sub-int/2addr v7, v2

    add-int/2addr v4, v7

    .line 29
    .end local v6    # "elementContents":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    .restart local v6    # "elementContents":[B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "only the last nested bitstring can have padding"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    .end local v5    # "i":I
    .end local v6    # "elementContents":[B
    :cond_1
    aget-object v5, p0, v3

    iget-object v5, v5, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 42
    .local v5, "lastElementContents":[B
    aget-byte v6, v5, v1

    .line 43
    .local v6, "padBits":B
    array-length v7, v5

    add-int/2addr v4, v7

    .line 45
    new-array v7, v4, [B

    .line 46
    .local v7, "contents":[B
    aput-byte v6, v7, v1

    .line 48
    const/4 v1, 0x1

    .line 49
    .local v1, "pos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_2

    .line 51
    aget-object v9, p0, v8

    iget-object v9, v9, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 52
    .local v9, "elementContents":[B
    array-length v10, v9

    sub-int/2addr v10, v2

    .line 53
    .local v10, "length":I
    invoke-static {v9, v2, v7, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    add-int/2addr v1, v10

    .line 49
    .end local v9    # "elementContents":[B
    .end local v10    # "length":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 58
    .end local v8    # "i":I
    :cond_2
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 11
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

    .line 151
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    iget-object v2, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Lorg/bouncycastle/asn1/DLBitString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 154
    return-void

    .line 157
    :cond_0
    const/16 v0, 0x23

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 158
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lorg/bouncycastle/asn1/ASN1Primitive;)V

    move-object v2, p1

    goto :goto_1

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    move-object v2, p1

    goto :goto_1

    .line 170
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    aget-byte v4, v0, v1

    .line 171
    .local v4, "pad":B
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    .line 172
    .local v0, "length":I
    add-int/lit8 v2, v0, -0x1

    .line 173
    .local v2, "remaining":I
    iget v3, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    add-int/lit8 v10, v3, -0x1

    .line 175
    .local v10, "segmentLength":I
    :goto_0
    if-le v2, v10, :cond_3

    .line 177
    iget-object v8, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    sub-int v9, v0, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p1

    .end local p1    # "out":Lorg/bouncycastle/asn1/ASN1OutputStream;
    .local v5, "out":Lorg/bouncycastle/asn1/ASN1OutputStream;
    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/asn1/DLBitString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    .line 178
    sub-int/2addr v2, v10

    goto :goto_0

    .line 181
    .end local v5    # "out":Lorg/bouncycastle/asn1/ASN1OutputStream;
    .restart local p1    # "out":Lorg/bouncycastle/asn1/ASN1OutputStream;
    :cond_3
    move-object v5, p1

    .end local p1    # "out":Lorg/bouncycastle/asn1/ASN1OutputStream;
    .restart local v5    # "out":Lorg/bouncycastle/asn1/ASN1OutputStream;
    move v7, v2

    move-object v2, v5

    .end local v5    # "out":Lorg/bouncycastle/asn1/ASN1OutputStream;
    .local v2, "out":Lorg/bouncycastle/asn1/ASN1OutputStream;
    .local v7, "remaining":I
    iget-object v5, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    sub-int v6, v0, v7

    const/4 v3, 0x1

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/asn1/DLBitString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    .line 184
    .end local v0    # "length":I
    .end local v4    # "pad":B
    .end local v7    # "remaining":I
    .end local v10    # "segmentLength":I
    :goto_1
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 185
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 186
    return-void
.end method

.method encodeConstructed()Z
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    if-le v0, v1, :cond_0

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
    .locals 5
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

    .line 119
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v0

    return v0

    .line 124
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 126
    .local v0, "totalLength":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 130
    iget-object v3, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1BitString;->encodedLength(Z)I

    move-result v3

    add-int/2addr v0, v3

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    goto :goto_2

    .line 133
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v1, v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    goto :goto_2

    .line 139
    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v1, v1

    sub-int/2addr v1, v3

    iget v3, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    sub-int/2addr v3, v2

    div-int/2addr v1, v3

    .line 140
    .local v1, "extraSegments":I
    iget v3, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v3

    mul-int v3, v3, v1

    add-int/2addr v0, v3

    .line 142
    iget-object v3, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    sub-int/2addr v4, v2

    mul-int v4, v4, v1

    sub-int/2addr v3, v4

    .line 143
    .local v3, "lastSegmentLength":I
    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v2

    add-int/2addr v0, v2

    .line 146
    .end local v1    # "extraSegments":I
    .end local v3    # "lastSegmentLength":I
    :goto_2
    return v0
.end method
