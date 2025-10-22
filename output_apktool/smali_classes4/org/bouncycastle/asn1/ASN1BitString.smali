.class public abstract Lorg/bouncycastle/asn1/ASN1BitString;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BitString.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1String;
.implements Lorg/bouncycastle/asn1/ASN1BitStringParser;


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

.field private static final table:[C


# instance fields
.field final contents:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lorg/bouncycastle/asn1/ASN1BitString$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1BitString;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1BitString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1BitString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    .line 64
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/asn1/ASN1BitString;->table:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(BI)V
    .locals 3
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

    .line 149
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 150
    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 155
    int-to-byte v0, p2

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    iput-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 156
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([BI)V
    .locals 2
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

    .line 165
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 166
    if-eqz p1, :cond_3

    .line 170
    array-length v0, p1

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "zero length data with non-zero pad bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    :goto_0
    const/4 v0, 0x7

    if-gt p2, v0, :cond_2

    if-ltz p2, :cond_2

    .line 179
    int-to-byte v0, p2

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->prepend([BB)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 180
    return-void

    .line 176
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'data\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([BZ)V
    .locals 3
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

    .line 183
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 184
    if-eqz p2, :cond_4

    .line 186
    if-eqz p1, :cond_3

    .line 190
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 195
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 196
    .local v0, "padBits":I
    if-lez v0, :cond_4

    .line 198
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 202
    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "zero length data with non-zero pad bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    .end local v0    # "padBits":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'contents\' cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'contents\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_4
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 210
    return-void
.end method

.method static createPrimitive([B)Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 5
    .param p0, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .line 395
    array-length v0, p0

    .line 396
    .local v0, "length":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 401
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 402
    .local v2, "padBits":I
    if-lez v2, :cond_1

    .line 404
    const/4 v4, 0x7

    if-gt v2, v4, :cond_0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    .line 409
    add-int/lit8 v4, v0, -0x1

    aget-byte v4, p0, v4

    .line 410
    .local v4, "finalOctet":B
    shl-int/2addr v3, v2

    and-int/2addr v3, v4

    int-to-byte v3, v3

    if-eq v4, v3, :cond_1

    .line 412
    new-instance v3, Lorg/bouncycastle/asn1/DLBitString;

    invoke-direct {v3, p0, v1}, Lorg/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v3

    .line 406
    .end local v4    # "finalOctet":B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid pad bits detected"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v3, p0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v3

    .line 398
    .end local v2    # "padBits":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "truncated BIT STRING detected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static getBytes(I)[B
    .locals 5
    .param p0, "bitString"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitString"
        }
    .end annotation

    .line 122
    if-nez p0, :cond_0

    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 127
    :cond_0
    const/4 v0, 0x4

    .line 128
    .local v0, "bytes":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xff

    const/4 v3, 0x1

    if-lt v1, v3, :cond_2

    .line 130
    mul-int/lit8 v3, v1, 0x8

    shl-int v3, v2, v3

    and-int/2addr v3, p0

    if-eqz v3, :cond_1

    .line 132
    goto :goto_1

    .line 134
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 128
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 137
    .end local v1    # "i":I
    :cond_2
    :goto_1
    new-array v1, v0, [B

    .line 138
    .local v1, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 140
    mul-int/lit8 v4, v3, 0x8

    shr-int v4, p0, v4

    and-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 143
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 31
    if-eqz p0, :cond_4

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    .line 38
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 39
    .local v0, "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_1

    .line 41
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v1

    .line 43
    .end local v0    # "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    goto :goto_0

    .line 44
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 48
    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1BitString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct BIT STRING from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_4
    :goto_1
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "explicit"
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/bouncycastle/asn1/ASN1BitString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method protected static getPadBits(I)I
    .locals 3
    .param p0, "bitString"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitString"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "val":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 81
    if-eqz v1, :cond_0

    .line 83
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    if-eqz v2, :cond_1

    .line 85
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 86
    goto :goto_1

    .line 91
    :cond_0
    if-eqz p0, :cond_1

    .line 93
    and-int/lit16 v0, p0, 0xff

    .line 94
    goto :goto_1

    .line 75
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 101
    const/4 v1, 0x0

    return v1

    .line 105
    :cond_3
    const/4 v1, 0x1

    .line 107
    .local v1, "bits":I
    :goto_2
    shl-int/lit8 v2, v0, 0x1

    move v0, v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_4

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 112
    :cond_4
    rsub-int/lit8 v2, v1, 0x8

    return v2
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 11
    .param p1, "other"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 344
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1BitString;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 346
    return v1

    .line 349
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BitString;

    .line 350
    .local v0, "that":Lorg/bouncycastle/asn1/ASN1BitString;
    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    .local v2, "thisContents":[B
    iget-object v3, v0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 352
    .local v3, "thatContents":[B
    array-length v4, v2

    .line 353
    .local v4, "length":I
    array-length v5, v3

    if-eq v5, v4, :cond_1

    .line 355
    return v1

    .line 357
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 359
    return v5

    .line 362
    :cond_2
    add-int/lit8 v6, v4, -0x1

    .line 363
    .local v6, "last":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_4

    .line 365
    aget-byte v8, v2, v7

    aget-byte v9, v3, v7

    if-eq v8, v9, :cond_3

    .line 367
    return v1

    .line 363
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 371
    .end local v7    # "i":I
    :cond_4
    aget-byte v7, v2, v1

    const/16 v8, 0xff

    and-int/2addr v7, v8

    .line 372
    .local v7, "padBits":I
    aget-byte v9, v2, v6

    shl-int v10, v8, v7

    and-int/2addr v9, v10

    int-to-byte v9, v9

    .line 373
    .local v9, "thisLastOctetDER":B
    aget-byte v10, v3, v6

    shl-int/2addr v8, v7

    and-int/2addr v8, v10

    int-to-byte v8, v8

    .line 375
    .local v8, "thatLastOctetDER":B
    if-ne v9, v8, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public getBitStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getBytes()[B
    .locals 5

    .line 302
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    sget-object v0, Lorg/bouncycastle/asn1/ASN1OctetString;->EMPTY_OCTETS:[B

    return-object v0

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    const/16 v2, 0xff

    and-int/2addr v0, v2

    .line 308
    .local v0, "padBits":I
    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object v4, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v4, v4

    invoke-static {v3, v1, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 310
    .local v3, "rv":[B
    array-length v4, v3

    sub-int/2addr v4, v1

    aget-byte v1, v3, v4

    shl-int/2addr v2, v0

    int-to-byte v2, v2

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    .line 311
    return-object v3
.end method

.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 380
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 220
    .local v0, "padBits":I
    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBitStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 222
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected octet-aligned bitstring, but found padBits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOctets()[B
    .locals 3

    .line 292
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPadBits()I
    .locals 2

    .line 316
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 6

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .local v0, "string":[B
    nop

    .line 250
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 251
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 253
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_0

    .line 255
    aget-byte v3, v0, v2

    .line 256
    .local v3, "b":B
    sget-object v4, Lorg/bouncycastle/asn1/ASN1BitString;->table:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 257
    sget-object v4, Lorg/bouncycastle/asn1/ASN1BitString;->table:[C

    and-int/lit8 v5, v3, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 253
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 245
    .end local v0    # "string":[B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error encoding BitString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .locals 5

    .line 326
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 328
    return v2

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v3, 0xff

    and-int/2addr v0, v3

    .line 332
    .local v0, "padBits":I
    iget-object v4, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v4, v4

    sub-int/2addr v4, v2

    .line 334
    .local v4, "last":I
    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v2, v2, v4

    shl-int/2addr v3, v0

    and-int/2addr v2, v3

    int-to-byte v2, v2

    .line 336
    .local v2, "lastOctetDER":B
    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    invoke-static {v3, v1, v4}, Lorg/bouncycastle/util/Arrays;->hashCode([BII)I

    move-result v1

    .line 337
    .local v1, "hc":I
    mul-int/lit16 v1, v1, 0x101

    .line 338
    xor-int/2addr v1, v2

    .line 339
    return v1
.end method

.method public intValue()I
    .locals 7

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "value":I
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 270
    .local v1, "end":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v5, 0xff

    if-ge v4, v1, :cond_0

    .line 272
    iget-object v6, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v6, v6, v4

    and-int/2addr v5, v6

    add-int/lit8 v6, v4, -0x1

    mul-int/lit8 v6, v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    .line 270
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    .end local v4    # "i":I
    :cond_0
    if-gt v2, v1, :cond_1

    if-ge v1, v3, :cond_1

    .line 276
    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/2addr v2, v5

    .line 277
    .local v2, "padBits":I
    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v3, v3, v1

    shl-int v4, v5, v2

    and-int/2addr v3, v4

    int-to-byte v3, v3

    .line 278
    .local v3, "der":B
    and-int/lit16 v4, v3, 0xff

    add-int/lit8 v5, v1, -0x1

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v0, v4

    .line 280
    .end local v2    # "padBits":I
    .end local v3    # "der":B
    :cond_1
    return v0
.end method

.method public parser()Lorg/bouncycastle/asn1/ASN1BitStringParser;
    .locals 0

    .line 230
    return-object p0
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 385
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 390
    new-instance v0, Lorg/bouncycastle/asn1/DLBitString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 321
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
