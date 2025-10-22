.class Lorg/bouncycastle/asn1/ConstructedBitStream;
.super Ljava/io/InputStream;
.source "ConstructedBitStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private _currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z

.field private final _octetAligned:Z

.field private _padBits:I

.field private final _parser:Lorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1StreamParser;Z)V
    .locals 1
    .param p1, "parser"    # Lorg/bouncycastle/asn1/ASN1StreamParser;
    .param p2, "octetAligned"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parser",
            "octetAligned"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    .line 21
    iput-boolean p2, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_octetAligned:Z

    .line 22
    return-void
.end method

.method private getNextParser()Lorg/bouncycastle/asn1/ASN1BitStringParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 123
    .local v0, "asn1Obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_2

    .line 125
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_octetAligned:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Ljava/io/IOException;

    iget v2, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected octet-aligned bitstring, but found padBits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 133
    :cond_2
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1BitStringParser;

    if-eqz v1, :cond_4

    .line 135
    iget v1, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    if-nez v1, :cond_3

    .line 140
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1BitStringParser;

    return-object v1

    .line 137
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "only the last nested bitstring can have padding"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_4
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown object encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method getPadBits()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 84
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    if-nez v0, :cond_0

    .line 86
    return v1

    .line 89
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_1

    .line 92
    return v1

    .line 95
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 101
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 103
    .local v0, "b":I
    if-ltz v0, :cond_3

    .line 105
    return v0

    .line 108
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1BitStringParser;->getPadBits()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    .line 109
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    .line 110
    iget-object v2, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v2, :cond_4

    .line 112
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 113
    return v1

    .line 116
    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 117
    .end local v0    # "b":I
    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 33
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    if-nez v0, :cond_0

    .line 35
    return v1

    .line 38
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_1

    .line 41
    return v1

    .line 44
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 53
    .local v0, "totalRead":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    add-int v3, p2, v0

    sub-int v4, p3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 55
    .local v2, "numRead":I
    if-ltz v2, :cond_3

    .line 57
    add-int/2addr v0, v2

    .line 59
    if-ne v0, p3, :cond_6

    .line 61
    return v0

    .line 66
    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1BitStringParser;->getPadBits()I

    move-result v3

    iput v3, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    .line 67
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    .line 68
    iget-object v3, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v3, :cond_5

    .line 70
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 71
    const/4 v3, 0x1

    if-ge v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    return v1

    .line 74
    :cond_5
    iget-object v3, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    .line 76
    .end local v2    # "numRead":I
    :cond_6
    goto :goto_0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
