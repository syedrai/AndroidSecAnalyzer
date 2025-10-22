.class Lorg/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z

.field private final _parser:Lorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/bouncycastle/asn1/ASN1StreamParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 17
    iput-object p1, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    .line 18
    return-void
.end method

.method private getNextParser()Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 111
    .local v0, "asn1Obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_0

    .line 113
    const/4 v1, 0x0

    return-object v1

    .line 116
    :cond_0
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    if-eqz v1, :cond_1

    .line 118
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    return-object v1

    .line 121
    :cond_1
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
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 73
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v0, :cond_0

    .line 75
    return v1

    .line 78
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    .line 79
    .local v0, "next":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_1

    .line 81
    return v1

    .line 84
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 85
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 90
    .end local v0    # "next":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 92
    .local v0, "b":I
    if-ltz v0, :cond_3

    .line 94
    return v0

    .line 97
    :cond_3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v2

    .line 98
    .local v2, "next":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v2, :cond_4

    .line 100
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 101
    return v1

    .line 104
    :cond_4
    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 105
    .end local v0    # "b":I
    .end local v2    # "next":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
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

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 24
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v0, :cond_0

    .line 26
    return v1

    .line 29
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    .line 30
    .local v0, "next":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_1

    .line 32
    return v1

    .line 35
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 36
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 39
    .end local v0    # "next":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_2
    const/4 v0, 0x0

    .line 43
    .local v0, "totalRead":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v3, p2, v0

    sub-int v4, p3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 45
    .local v2, "numRead":I
    if-ltz v2, :cond_3

    .line 47
    add-int/2addr v0, v2

    .line 49
    if-ne v0, p3, :cond_6

    .line 51
    return v0

    .line 56
    :cond_3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v3

    .line 57
    .local v3, "next":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v3, :cond_5

    .line 59
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 60
    const/4 v4, 0x1

    if-ge v0, v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    return v1

    .line 63
    :cond_5
    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 65
    .end local v2    # "numRead":I
    .end local v3    # "next":Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_6
    goto :goto_0
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
