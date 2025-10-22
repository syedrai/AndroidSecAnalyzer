.class public abstract Lorg/bouncycastle/asn1/DERGenerator;
.super Lorg/bouncycastle/asn1/ASN1Generator;
.source "DERGenerator.java"


# instance fields
.field private _isExplicit:Z

.field private _tagNo:I

.field private _tagged:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "tagNo",
            "isExplicit"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    .line 38
    iput-boolean p3, p0, Lorg/bouncycastle/asn1/DERGenerator;->_isExplicit:Z

    .line 39
    iput p2, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    .line 40
    return-void
.end method

.method private writeLength(Ljava/io/OutputStream;I)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const/16 v0, 0x7f

    if-le p2, v0, :cond_2

    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "size":I
    move v1, p2

    .line 52
    .local v1, "val":I
    :goto_0
    ushr-int/lit8 v2, v1, 0x8

    move v1, v2

    if-eqz v2, :cond_0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    or-int/lit16 v2, v0, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 59
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x8

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 61
    shr-int v3, p2, v2

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 59
    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    .line 63
    .end local v0    # "size":I
    .end local v1    # "val":I
    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 66
    :cond_2
    int-to-byte v0, p2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 68
    :goto_2
    return-void
.end method


# virtual methods
.method writeDEREncoded(I[B)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagged:Z

    if-eqz v0, :cond_2

    .line 88
    iget v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    or-int/lit16 v0, v0, 0x80

    .line 90
    .local v0, "tagNum":I
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/DERGenerator;->_isExplicit:Z

    if-eqz v1, :cond_0

    .line 92
    iget v1, p0, Lorg/bouncycastle/asn1/DERGenerator;->_tagNo:I

    or-int/lit8 v1, v1, 0x20

    or-int/lit16 v1, v1, 0x80

    .line 94
    .local v1, "newTag":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .local v2, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v2, p1, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    .line 98
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    .line 99
    .end local v1    # "newTag":I
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 102
    :cond_0
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    or-int/lit8 v2, v0, 0x20

    invoke-virtual {p0, v1, v2, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, v1, v0, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    .line 111
    .end local v0    # "tagNum":I
    :goto_0
    goto :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    .line 116
    :goto_1
    return-void
.end method

.method writeDEREncoded(Ljava/io/OutputStream;I[B)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tag"    # I
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "tag",
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 77
    array-length v0, p3

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERGenerator;->writeLength(Ljava/io/OutputStream;I)V

    .line 78
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 79
    return-void
.end method
