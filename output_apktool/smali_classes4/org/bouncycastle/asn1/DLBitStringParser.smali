.class public Lorg/bouncycastle/asn1/DLBitStringParser;
.super Ljava/lang/Object;
.source "DLBitStringParser.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1BitStringParser;


# instance fields
.field private padBits:I

.field private final stream:Lorg/bouncycastle/asn1/DefiniteLengthInputStream;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/DLBitStringParser;->padBits:I

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/asn1/DLBitStringParser;->stream:Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 21
    return-void
.end method

.method private getBitStream(Z)Ljava/io/InputStream;
    .locals 5
    .param p1, "octetAligned"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "octetAligned"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLBitStringParser;->stream:Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 59
    .local v0, "length":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    .line 64
    iget-object v1, p0, Lorg/bouncycastle/asn1/DLBitStringParser;->stream:Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/asn1/DLBitStringParser;->padBits:I

    .line 65
    iget v1, p0, Lorg/bouncycastle/asn1/DLBitStringParser;->padBits:I

    if-lez v1, :cond_3

    .line 67
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 71
    iget v1, p0, Lorg/bouncycastle/asn1/DLBitStringParser;->padBits:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_1

    .line 75
    if-nez p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Ljava/io/IOException;

    iget v2, p0, Lorg/bouncycastle/asn1/DLBitStringParser;->padBits:I

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

    .line 73
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "zero length data with non-zero pad bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/DLBitStringParser;->stream:Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    return-object v1

    .line 61
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "content octets cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getBitStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DLBitStringParser;->getBitStream(Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLBitStringParser;->stream:Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DLBitStringParser;->getBitStream(Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPadBits()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/bouncycastle/asn1/DLBitStringParser;->padBits:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLBitStringParser;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 52
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
