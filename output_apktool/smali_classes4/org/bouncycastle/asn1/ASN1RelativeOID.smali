.class public Lorg/bouncycastle/asn1/ASN1RelativeOID;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "ASN1RelativeOID.java"


# static fields
.field private static final LONG_LIMIT:J = 0xffffffffffff80L

.field private static final MAX_CONTENTS_LENGTH:I = 0x1000

.field private static final MAX_IDENTIFIER_LENGTH:I = 0x3fff

.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

.field private static final pool:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;",
            "Lorg/bouncycastle/asn1/ASN1RelativeOID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contents:[B

.field private identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lorg/bouncycastle/asn1/ASN1RelativeOID$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1RelativeOID$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    .line 98
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->pool:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "identifier"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 106
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->checkIdentifier(Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->parseIdentifier(Ljava/lang/String;)[B

    move-result-object v0

    .line 109
    .local v0, "contents":[B
    array-length v1, v0

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->checkContentsLength(I)V

    .line 111
    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    .line 112
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private constructor <init>([BLjava/lang/String;)V
    .locals 0
    .param p1, "contents"    # [B
    .param p2, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contents",
            "identifier"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 117
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    .line 118
    iput-object p2, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    .line 119
    return-void
.end method

.method static checkContentsLength(I)V
    .locals 2
    .param p0, "contentsLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentsLength"
        }
    .end annotation

    .line 187
    const/16 v0, 0x1000

    if-gt p0, v0, :cond_0

    .line 191
    return-void

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exceeded relative OID contents length limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkIdentifier(Ljava/lang/String;)V
    .locals 3
    .param p0, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "identifier"
        }
    .end annotation

    .line 195
    if-eqz p0, :cond_2

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3fff

    if-gt v0, v1, :cond_1

    .line 203
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->isValidIdentifier(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a valid relative OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exceeded relative OID contents length limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'identifier\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1RelativeOID;
    .locals 5
    .param p0, "contents"    # [B
    .param p1, "clone"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contents",
            "clone"
        }
    .end annotation

    .line 211
    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->checkContentsLength(I)V

    .line 213
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    .line 214
    .local v0, "hdl":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    sget-object v1, Lorg/bouncycastle/asn1/ASN1RelativeOID;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    .line 215
    .local v1, "oid":Lorg/bouncycastle/asn1/ASN1RelativeOID;
    if-eqz v1, :cond_0

    .line 217
    return-object v1

    .line 220
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->isValidContents([B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    new-instance v2, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, p0

    :goto_0
    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1RelativeOID;-><init>([BLjava/lang/String;)V

    return-object v2

    .line 222
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid relative OID contents"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static fromContents([B)Lorg/bouncycastle/asn1/ASN1RelativeOID;
    .locals 2
    .param p0, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .line 35
    if-eqz p0, :cond_0

    .line 40
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1RelativeOID;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'contents\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1RelativeOID;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 45
    if-eqz p0, :cond_4

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    .line 51
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 52
    .local v0, "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    return-object v1

    .line 56
    .end local v0    # "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    goto :goto_0

    .line 57
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 59
    move-object v0, p0

    check-cast v0, [B

    .line 62
    .local v0, "enc":[B
    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1RelativeOID;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 64
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to construct relative OID from byte[]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    .end local v0    # "enc":[B
    .end local v1    # "e":Ljava/io/IOException;
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

    .line 47
    :cond_4
    :goto_1
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1RelativeOID;
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

    .line 75
    sget-object v0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    return-object v0
.end method

.method static isValidContents([B)Z
    .locals 6
    .param p0, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .line 230
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 232
    return v1

    .line 235
    :cond_0
    const/4 v0, 0x1

    .line 236
    .local v0, "subIDStart":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 238
    const/16 v4, 0x80

    if-eqz v0, :cond_1

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v4, :cond_1

    .line 239
    return v1

    .line 241
    :cond_1
    aget-byte v5, p0, v3

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v0, v4

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v3    # "i":I
    :cond_3
    return v0
.end method

.method static isValidIdentifier(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "from"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "identifier",
            "from"
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "digitCount":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 252
    .local v1, "pos":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, p1, :cond_4

    .line 254
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 256
    .local v5, "ch":C
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    .line 258
    if-eqz v0, :cond_1

    if-le v0, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 260
    :cond_1
    :goto_1
    return v3

    .line 265
    :cond_2
    if-gt v2, v5, :cond_3

    const/16 v2, 0x39

    if-gt v5, v2, :cond_3

    .line 267
    add-int/lit8 v0, v0, 0x1

    .line 273
    .end local v5    # "ch":C
    :goto_2
    goto :goto_0

    .line 271
    .restart local v5    # "ch":C
    :cond_3
    return v3

    .line 275
    .end local v5    # "ch":C
    :cond_4
    if-eqz v0, :cond_6

    if-le v0, v4, :cond_5

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_5

    goto :goto_3

    .line 280
    :cond_5
    return v4

    .line 277
    :cond_6
    :goto_3
    return v3
.end method

.method static parseContents([B)Ljava/lang/String;
    .locals 12
    .param p0, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    .local v0, "objId":Ljava/lang/StringBuffer;
    const-wide/16 v1, 0x0

    .line 287
    .local v1, "value":J
    const/4 v3, 0x0

    .line 288
    .local v3, "bigValue":Ljava/math/BigInteger;
    const/4 v4, 0x1

    .line 290
    .local v4, "first":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, p0

    if-eq v5, v6, :cond_6

    .line 292
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    .line 294
    .local v6, "b":I
    const-wide v7, 0xffffffffffff80L

    const/16 v9, 0x2e

    const/4 v10, 0x7

    cmp-long v11, v1, v7

    if-gtz v11, :cond_2

    .line 296
    and-int/lit8 v7, v6, 0x7f

    int-to-long v7, v7

    add-long/2addr v1, v7

    .line 297
    and-int/lit16 v7, v6, 0x80

    if-nez v7, :cond_1

    .line 299
    if-eqz v4, :cond_0

    .line 301
    const/4 v4, 0x0

    goto :goto_1

    .line 305
    :cond_0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 308
    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 309
    const-wide/16 v1, 0x0

    goto :goto_3

    .line 313
    :cond_1
    shl-long/2addr v1, v10

    goto :goto_3

    .line 318
    :cond_2
    if-nez v3, :cond_3

    .line 320
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 322
    :cond_3
    and-int/lit8 v7, v6, 0x7f

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 323
    and-int/lit16 v7, v6, 0x80

    if-nez v7, :cond_5

    .line 325
    if-eqz v4, :cond_4

    .line 327
    const/4 v4, 0x0

    goto :goto_2

    .line 331
    :cond_4
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 334
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 335
    const/4 v3, 0x0

    .line 336
    const-wide/16 v1, 0x0

    goto :goto_3

    .line 340
    :cond_5
    invoke-virtual {v3, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 290
    .end local v6    # "b":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 345
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static parseIdentifier(Ljava/lang/String;)[B
    .locals 5
    .param p0, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "identifier"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 351
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/OIDTokenizer;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 352
    .local v1, "tok":Lorg/bouncycastle/asn1/OIDTokenizer;
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    if-gt v3, v4, :cond_0

    .line 357
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_1

    .line 361
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    .line 363
    .end local v2    # "token":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 364
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static tryFromID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1RelativeOID;
    .locals 3
    .param p0, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "identifier"
        }
    .end annotation

    .line 80
    if-eqz p0, :cond_1

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3fff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->isValidIdentifier(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->parseIdentifier(Ljava/lang/String;)[B

    move-result-object v0

    .line 87
    .local v0, "contents":[B
    array-length v1, v0

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_0

    .line 89
    new-instance v1, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/ASN1RelativeOID;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 93
    .end local v0    # "contents":[B
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'identifier\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static writeField(Ljava/io/ByteArrayOutputStream;J)V
    .locals 5
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "fieldValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "fieldValue"
        }
    .end annotation

    .line 369
    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 370
    .local v0, "result":[B
    const/16 v1, 0x8

    .line 371
    .local v1, "pos":I
    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 372
    :goto_0
    const-wide/16 v2, 0x80

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    .line 374
    const/4 v2, 0x7

    shr-long/2addr p1, v2

    .line 375
    add-int/lit8 v1, v1, -0x1

    long-to-int v2, p1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 377
    :cond_0
    rsub-int/lit8 v2, v1, 0x9

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 378
    return-void
.end method

.method static writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 7
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "fieldValue"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "fieldValue"
        }
    .end annotation

    .line 382
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x7

    div-int/2addr v0, v1

    .line 383
    .local v0, "byteCount":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 389
    :cond_0
    move-object v3, p1

    .line 390
    .local v3, "tmpValue":Ljava/math/BigInteger;
    new-array v4, v0, [B

    .line 391
    .local v4, "tmp":[B
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 393
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 394
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 391
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 396
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    aget-byte v5, v4, v1

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 397
    array-length v1, v4

    invoke-virtual {p0, v4, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 399
    .end local v3    # "tmpValue":Ljava/math/BigInteger;
    .end local v4    # "tmp":[B
    :goto_1
    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
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

    .line 156
    if-ne p0, p1, :cond_0

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    if-nez v0, :cond_1

    .line 162
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    .line 167
    .local v0, "that":Lorg/bouncycastle/asn1/ASN1RelativeOID;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    iget-object v2, v0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
.end method

.method public branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1RelativeOID;
    .locals 4
    .param p1, "branchID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "branchID"
        }
    .end annotation

    .line 123
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->checkIdentifier(Ljava/lang/String;)V

    .line 125
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->parseIdentifier(Ljava/lang/String;)[B

    move-result-object v0

    .line 126
    .local v0, "branchContents":[B
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    array-length v1, v1

    array-length v2, v0

    add-int/2addr v1, v2

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->checkContentsLength(I)V

    .line 128
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    .line 129
    .local v1, "contents":[B
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "identifier":Ljava/lang/String;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1RelativeOID;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/asn1/ASN1RelativeOID;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2
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

    .line 177
    const/16 v0, 0xd

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 178
    return-void
.end method

.method encodeConstructed()Z
    .locals 1

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method encodedLength(Z)I
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

    .line 172
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->parseContents([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;

    .line 141
    .end local p0    # "this":Lorg/bouncycastle/asn1/ASN1RelativeOID;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->identifier:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->contents:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
