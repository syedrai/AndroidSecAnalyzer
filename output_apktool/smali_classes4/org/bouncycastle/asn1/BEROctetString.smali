.class public Lorg/bouncycastle/asn1/BEROctetString;
.super Lorg/bouncycastle/asn1/ASN1OctetString;
.source "BEROctetString.java"


# static fields
.field private static final DEFAULT_SEGMENT_LIMIT:I = 0x3e8


# instance fields
.field private final elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final segmentLimit:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "string"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 67
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([BI)V

    .line 68
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "string"    # [B
    .param p2, "segmentLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "segmentLimit"
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B[Lorg/bouncycastle/asn1/ASN1OctetString;I)V

    .line 89
    return-void
.end method

.method private constructor <init>([B[Lorg/bouncycastle/asn1/ASN1OctetString;I)V
    .locals 0
    .param p1, "string"    # [B
    .param p2, "elements"    # [Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p3, "segmentLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "elements",
            "segmentLimit"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 106
    iput-object p2, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 107
    iput p3, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    .line 108
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "elements"    # [Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .line 78
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([Lorg/bouncycastle/asn1/ASN1OctetString;I)V

    .line 79
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1OctetString;I)V
    .locals 1
    .param p1, "elements"    # [Lorg/bouncycastle/asn1/ASN1OctetString;
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

    .line 100
    invoke-static {p1}, Lorg/bouncycastle/asn1/BEROctetString;->flattenOctetStrings([Lorg/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B[Lorg/bouncycastle/asn1/ASN1OctetString;I)V

    .line 101
    return-void
.end method

.method static flattenOctetStrings([Lorg/bouncycastle/asn1/ASN1OctetString;)[B
    .locals 8
    .param p0, "octetStrings"    # [Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "octetStrings"
        }
    .end annotation

    .line 32
    array-length v0, p0

    .line 33
    .local v0, "count":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "totalOctets":I
    const/4 v3, 0x0

    .local v3, "i":I
    goto :goto_0

    .line 38
    .end local v2    # "totalOctets":I
    .end local v3    # "i":I
    :pswitch_0
    aget-object v1, p0, v1

    iget-object v1, v1, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    return-object v1

    .line 36
    :pswitch_1
    sget-object v1, Lorg/bouncycastle/asn1/BEROctetString;->EMPTY_OCTETS:[B

    return-object v1

    .line 42
    .restart local v2    # "totalOctets":I
    .restart local v3    # "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 44
    aget-object v4, p0, v3

    iget-object v4, v4, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v4, v4

    add-int/2addr v2, v4

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v3    # "i":I
    :cond_0
    new-array v3, v2, [B

    .line 48
    .local v3, "string":[B
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "pos":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 50
    aget-object v6, p0, v4

    iget-object v6, v6, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    .line 51
    .local v6, "octets":[B
    array-length v7, v6

    invoke-static {v6, v1, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    array-length v7, v6

    add-int/2addr v5, v7

    .line 48
    .end local v6    # "octets":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 56
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_1
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 4
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

    .line 144
    const/16 v0, 0x24

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 145
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lorg/bouncycastle/asn1/ASN1Primitive;)V

    goto :goto_1

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 154
    .local v0, "pos":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    iget v2, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 157
    .local v1, "segmentLength":I
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    invoke-static {p1, v2, v3, v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 158
    add-int/2addr v0, v1

    .line 159
    .end local v1    # "segmentLength":I
    goto :goto_0

    .line 162
    .end local v0    # "pos":I
    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 163
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 164
    return-void
.end method

.method encodeConstructed()Z
    .locals 1

    .line 112
    const/4 v0, 0x1

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

    .line 118
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 120
    .local v0, "totalLength":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 124
    iget-object v3, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->encodedLength(Z)I

    move-result v3

    add-int/2addr v0, v3

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 129
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    iget v3, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    div-int/2addr v1, v3

    .line 130
    .local v1, "fullSegments":I
    iget v3, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result v3

    mul-int v3, v3, v1

    add-int/2addr v0, v3

    .line 132
    iget-object v3, p0, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    mul-int v4, v4, v1

    sub-int/2addr v3, v4

    .line 133
    .local v3, "lastSegmentLength":I
    if-lez v3, :cond_3

    .line 135
    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result v2

    add-int/2addr v0, v2

    .line 139
    .end local v1    # "fullSegments":I
    .end local v3    # "lastSegmentLength":I
    :cond_3
    :goto_2
    return v0
.end method
