.class public Lorg/bouncycastle/asn1/ASN1OutputStream;
.super Ljava/lang/Object;
.source "ASN1OutputStream.java"


# instance fields
.field private os:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    .line 37
    return-void
.end method

.method public static create(Ljava/io/OutputStream;)Lorg/bouncycastle/asn1/ASN1OutputStream;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 13
    new-instance v0, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static create(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1OutputStream;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "encoding"
        }
    .end annotation

    .line 18
    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 22
    :cond_0
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lorg/bouncycastle/asn1/DLOutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 28
    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method static getLengthOfDL(I)I
    .locals 2
    .param p0, "dl"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dl"
        }
    .end annotation

    .line 237
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 239
    const/4 v0, 0x1

    return v0

    .line 242
    :cond_0
    const/4 v0, 0x2

    .line 243
    .local v0, "length":I
    :goto_0
    ushr-int/lit8 v1, p0, 0x8

    move p0, v1

    if-eqz v1, :cond_1

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    return v0
.end method

.method static getLengthOfEncodingDL(ZI)I
    .locals 1
    .param p0, "withID"    # Z
    .param p1, "contentsLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "withID",
            "contentsLength"
        }
    .end annotation

    .line 252
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfDL(I)I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method

.method static getLengthOfIdentifier(I)I
    .locals 2
    .param p0, "tag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 257
    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    .line 259
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_0
    const/4 v0, 0x2

    .line 263
    .local v0, "length":I
    :goto_0
    ushr-int/lit8 v1, p0, 0x7

    move p0, v1

    if-eqz v1, :cond_1

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 42
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 47
    return-void
.end method

.method flushInternal()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method getDERSubStream()Lorg/bouncycastle/asn1/DEROutputStream;
    .locals 2

    .line 78
    new-instance v0, Lorg/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method getDLSubStream()Lorg/bouncycastle/asn1/DLOutputStream;
    .locals 2

    .line 83
    new-instance v0, Lorg/bouncycastle/asn1/DLOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method final write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 114
    return-void
.end method

.method final write([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 119
    return-void
.end method

.method final writeDL(I)V
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_0

    .line 94
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 95
    .local v0, "stack":[B
    array-length v1, v0

    .line 99
    .local v1, "pos":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 100
    ushr-int/lit8 p1, p1, 0x8

    .line 102
    if-nez p1, :cond_1

    .line 104
    array-length v2, v0

    sub-int/2addr v2, v1

    .line 105
    .local v2, "count":I
    add-int/lit8 v1, v1, -0x1

    or-int/lit16 v3, v2, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 107
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 109
    .end local v0    # "stack":[B
    .end local v1    # "pos":I
    .end local v2    # "count":I
    :goto_0
    return-void
.end method

.method writeElements([Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4
    .param p1, "elements"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 126
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_0
    return-void
.end method

.method final writeEncodingDL(ZIB)V
    .locals 1
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "contents"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "withID",
            "identifier",
            "contents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 134
    invoke-virtual {p0, p3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 135
    return-void
.end method

.method final writeEncodingDL(ZIB[BII)V
    .locals 1
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "contentsPrefix"    # B
    .param p4, "contents"    # [B
    .param p5, "contentsOff"    # I
    .param p6, "contentsLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "withID",
            "identifier",
            "contentsPrefix",
            "contents",
            "contentsOff",
            "contentsLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 156
    add-int/lit8 v0, p6, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 157
    invoke-virtual {p0, p3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 158
    invoke-virtual {p0, p4, p5, p6}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 159
    return-void
.end method

.method final writeEncodingDL(ZII[B)V
    .locals 2
    .param p1, "withID"    # Z
    .param p2, "flags"    # I
    .param p3, "tag"    # I
    .param p4, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "withID",
            "flags",
            "tag",
            "contents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZII)V

    .line 173
    array-length v0, p4

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 174
    const/4 v0, 0x0

    array-length v1, p4

    invoke-virtual {p0, p4, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 175
    return-void
.end method

.method final writeEncodingDL(ZI[B)V
    .locals 2
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "withID",
            "identifier",
            "contents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 140
    array-length v0, p3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 141
    const/4 v0, 0x0

    array-length v1, p3

    invoke-virtual {p0, p3, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 142
    return-void
.end method

.method final writeEncodingDL(ZI[BII)V
    .locals 0
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "contents"    # [B
    .param p4, "contentsOff"    # I
    .param p5, "contentsLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "withID",
            "identifier",
            "contents",
            "contentsOff",
            "contentsLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 148
    invoke-virtual {p0, p5}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 149
    invoke-virtual {p0, p3, p4, p5}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 150
    return-void
.end method

.method final writeEncodingDL(ZI[BIIB)V
    .locals 1
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "contents"    # [B
    .param p4, "contentsOff"    # I
    .param p5, "contentsLen"    # I
    .param p6, "contentsSuffix"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "withID",
            "identifier",
            "contents",
            "contentsOff",
            "contentsLen",
            "contentsSuffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 165
    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 166
    invoke-virtual {p0, p3, p4, p5}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 167
    invoke-virtual {p0, p6}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 168
    return-void
.end method

.method final writeEncodingIL(ZI[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .param p3, "elements"    # [Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "withID",
            "identifier",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 180
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 181
    invoke-virtual {p0, p3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeElements([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 183
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 184
    return-void
.end method

.method final writeIdentifier(ZI)V
    .locals 0
    .param p1, "withID"    # Z
    .param p2, "identifier"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "withID",
            "identifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 192
    :cond_0
    return-void
.end method

.method final writeIdentifier(ZII)V
    .locals 3
    .param p1, "withID"    # Z
    .param p2, "flags"    # I
    .param p3, "tag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "withID",
            "flags",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    if-nez p1, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    const/16 v0, 0x1f

    if-ge p3, v0, :cond_1

    .line 202
    or-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_1

    .line 206
    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 207
    .local v0, "stack":[B
    array-length v1, v0

    .line 209
    .local v1, "pos":I
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, p3, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 210
    :goto_0
    const/16 v2, 0x7f

    if-le p3, v2, :cond_2

    .line 212
    ushr-int/lit8 p3, p3, 0x7

    .line 213
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, p3, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 216
    :cond_2
    add-int/lit8 v1, v1, -0x1

    or-int/lit8 v2, p2, 0x1f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 218
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 220
    .end local v0    # "stack":[B
    .end local v1    # "pos":I
    :goto_1
    return-void
.end method

.method public final writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 57
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    .line 58
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 2
    .param p1, "primitive"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    if-eqz p1, :cond_0

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 68
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->flushInternal()V

    .line 69
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;Z)V
    .locals 0
    .param p1, "primitive"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .param p2, "withID"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primitive",
            "withID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p1, p0, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 225
    return-void
.end method

.method writePrimitives([Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 4
    .param p1, "primitives"    # [Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 231
    aget-object v2, p1, v0

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_0
    return-void
.end method
