.class public abstract Lorg/bouncycastle/asn1/ASN1BMPString;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BMPString.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1String;


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final string:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lorg/bouncycastle/asn1/ASN1BMPString$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1BMPString;

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1BMPString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 81
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    .line 87
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([B)V
    .locals 6
    .param p1, "string"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 91
    if-eqz p1, :cond_2

    .line 96
    array-length v0, p1

    .line 97
    .local v0, "byteLen":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    .line 102
    div-int/lit8 v1, v0, 0x2

    .line 103
    .local v1, "charLen":I
    new-array v2, v1, [C

    .line 105
    .local v2, "cs":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eq v3, v1, :cond_0

    .line 107
    mul-int/lit8 v4, v3, 0x2

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v3    # "i":I
    :cond_0
    iput-object v2, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    .line 111
    return-void

    .line 99
    .end local v1    # "charLen":I
    .end local v2    # "cs":[C
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "malformed BMPString encoding encountered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .end local v0    # "byteLen":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([C)V
    .locals 2
    .param p1, "string"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 115
    if-eqz p1, :cond_0

    .line 120
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    .line 121
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createPrimitive([B)Lorg/bouncycastle/asn1/ASN1BMPString;
    .locals 1
    .param p0, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .line 205
    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERBMPString;-><init>([B)V

    return-object v0
.end method

.method static createPrimitive([C)Lorg/bouncycastle/asn1/ASN1BMPString;
    .locals 1
    .param p0, "string"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 211
    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BMPString;
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

    .line 36
    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    .line 42
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 43
    .local v0, "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v1, :cond_1

    .line 45
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1BMPString;

    return-object v1

    .line 48
    .end local v0    # "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 52
    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BMPString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoding error in getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
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

    .line 38
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BMPString;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1BMPString;
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

    .line 74
    sget-object v0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BMPString;

    return-object v0
.end method


# virtual methods
.method final asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "other"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 135
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BMPString;

    .line 142
    .local v0, "that":Lorg/bouncycastle/asn1/ASN1BMPString;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    iget-object v2, v0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([C[C)Z

    move-result v1

    return v1
.end method

.method final encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 12
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

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length v0, v0

    .line 164
    .local v0, "count":I
    const/16 v1, 0x1e

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 165
    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 167
    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 169
    .local v2, "buf":[B
    const/4 v3, 0x0

    .local v3, "i":I
    and-int/lit8 v4, v0, -0x4

    .line 170
    .local v4, "limit":I
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_0

    .line 172
    iget-object v7, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v7, v7, v3

    .local v7, "c0":C
    iget-object v8, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v9, v3, 0x1

    aget-char v8, v8, v9

    .local v8, "c1":C
    iget-object v9, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v10, v3, 0x2

    aget-char v9, v9, v10

    .local v9, "c2":C
    iget-object v10, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v11, v3, 0x3

    aget-char v10, v10, v11

    .line 173
    .local v10, "c3":C
    add-int/lit8 v3, v3, 0x4

    .line 175
    shr-int/lit8 v11, v7, 0x8

    int-to-byte v11, v11

    aput-byte v11, v2, v5

    .line 176
    int-to-byte v11, v7

    aput-byte v11, v2, v6

    .line 177
    shr-int/lit8 v6, v8, 0x8

    int-to-byte v6, v6

    const/4 v11, 0x2

    aput-byte v6, v2, v11

    .line 178
    int-to-byte v6, v8

    const/4 v11, 0x3

    aput-byte v6, v2, v11

    .line 179
    shr-int/lit8 v6, v9, 0x8

    int-to-byte v6, v6

    const/4 v11, 0x4

    aput-byte v6, v2, v11

    .line 180
    const/4 v6, 0x5

    int-to-byte v11, v9

    aput-byte v11, v2, v6

    .line 181
    shr-int/lit8 v6, v10, 0x8

    int-to-byte v6, v6

    const/4 v11, 0x6

    aput-byte v6, v2, v11

    .line 182
    const/4 v6, 0x7

    int-to-byte v11, v10

    aput-byte v11, v2, v6

    .line 184
    invoke-virtual {p1, v2, v5, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 185
    .end local v7    # "c0":C
    .end local v8    # "c1":C
    .end local v9    # "c2":C
    .end local v10    # "c3":C
    goto :goto_0

    .line 186
    :cond_0
    if-ge v3, v0, :cond_2

    .line 188
    const/4 v1, 0x0

    .line 191
    .local v1, "bufPos":I
    :cond_1
    iget-object v7, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v7, v7, v3

    .line 192
    .restart local v7    # "c0":C
    add-int/2addr v3, v6

    .line 194
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "bufPos":I
    .local v8, "bufPos":I
    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    aput-byte v9, v2, v1

    .line 195
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "bufPos":I
    .restart local v1    # "bufPos":I
    int-to-byte v9, v7

    aput-byte v9, v2, v8

    .line 197
    .end local v7    # "c0":C
    if-lt v3, v0, :cond_1

    .line 199
    invoke-virtual {p1, v2, v5, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 201
    .end local v1    # "bufPos":I
    :cond_2
    return-void
.end method

.method final encodeConstructed()Z
    .locals 1

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method final encodedLength(Z)I
    .locals 1
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withTag"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
