.class public Lorg/bouncycastle/asn1/BERBitStringParser;
.super Ljava/lang/Object;
.source "BERBitStringParser.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1BitStringParser;


# instance fields
.field private _bitStream:Lorg/bouncycastle/asn1/ConstructedBitStream;

.field private _parser:Lorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0
    .param p1, "parser"    # Lorg/bouncycastle/asn1/ASN1StreamParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    .line 24
    return-void
.end method

.method static parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERBitString;
    .locals 4
    .param p0, "sp"    # Lorg/bouncycastle/asn1/ASN1StreamParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/bouncycastle/asn1/ConstructedBitStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/ConstructedBitStream;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;Z)V

    .line 62
    .local v0, "bitStream":Lorg/bouncycastle/asn1/ConstructedBitStream;
    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 63
    .local v1, "data":[B
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getPadBits()I

    move-result v2

    .line 64
    .local v2, "padBits":I
    new-instance v3, Lorg/bouncycastle/asn1/BERBitString;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BI)V

    return-object v3
.end method


# virtual methods
.method public getBitStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/bouncycastle/asn1/ConstructedBitStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ConstructedBitStream;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;Z)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_bitStream:Lorg/bouncycastle/asn1/ConstructedBitStream;

    return-object v0
.end method

.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {v0}, Lorg/bouncycastle/asn1/BERBitStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERBitString;

    move-result-object v0

    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/ConstructedBitStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ConstructedBitStream;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;Z)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_bitStream:Lorg/bouncycastle/asn1/ConstructedBitStream;

    return-object v0
.end method

.method public getPadBits()I
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_bitStream:Lorg/bouncycastle/asn1/ConstructedBitStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getPadBits()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERBitStringParser;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException converting stream to byte array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
