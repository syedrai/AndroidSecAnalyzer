.class public abstract Lorg/bouncycastle/asn1/BERGenerator;
.super Lorg/bouncycastle/asn1/ASN1Generator;
.source "BERGenerator.java"


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

    .line 18
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 19
    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;IZ)V
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

    .line 23
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 27
    iput-boolean p3, p0, Lorg/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    .line 28
    iput p2, p0, Lorg/bouncycastle/asn1/BERGenerator;->_tagNo:I

    .line 29
    return-void
.end method

.method private writeHdr(I)V
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

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected writeBEREnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 76
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 81
    :cond_0
    return-void
.end method

.method protected writeBERHeader(I)V
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

    .line 44
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_2

    .line 46
    iget v0, p0, Lorg/bouncycastle/asn1/BERGenerator;->_tagNo:I

    or-int/lit16 v0, v0, 0x80

    .line 48
    .local v0, "tagNum":I
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v1, :cond_0

    .line 50
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 51
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_0

    .line 55
    :cond_0
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    .line 57
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 64
    .end local v0    # "tagNum":I
    :goto_0
    goto :goto_1

    .line 67
    :cond_2
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 69
    :goto_1
    return-void
.end method
