.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static clone([B)[B
    .locals 3
    .param p0, "array"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 168
    if-nez p0, :cond_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 173
    .local v0, "result":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    return-object v0
.end method

.method public static concatenate([B[B)[B
    .locals 4
    .param p0, "x1"    # [B
    .param p1, "x2"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x1",
            "x2"
        }
    .end annotation

    .line 319
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 321
    .local v0, "result":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    return-object v0
.end method

.method public static concatenate([[B)[B
    .locals 6
    .param p0, "array"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    .line 337
    .local v1, "rowLength":I
    array-length v2, p0

    mul-int v2, v2, v1

    new-array v2, v2, [B

    .line 338
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 339
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 341
    aget-object v5, p0, v4

    invoke-static {v5, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    add-int/2addr v3, v1

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 344
    .end local v4    # "i":I
    :cond_0
    return-object v2
.end method

.method public static deepHashCode([B)I
    .locals 4
    .param p0, "array"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 119
    mul-int/lit8 v2, v0, 0x1f

    aget-byte v3, p0, v1

    add-int v0, v2, v3

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static deepHashCode([[B)I
    .locals 4
    .param p0, "array"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 133
    const/4 v0, 0x1

    .line 134
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 136
    mul-int/lit8 v2, v0, 0x1f

    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->deepHashCode([B)I

    move-result v3

    add-int v0, v2, v3

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static deepHashCode([[[B)I
    .locals 4
    .param p0, "array"    # [[[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 150
    const/4 v0, 0x1

    .line 151
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 153
    mul-int/lit8 v2, v0, 0x1f

    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->deepHashCode([[B)I

    move-result v3

    add-int v0, v2, v3

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static equals([B[B)Z
    .locals 6
    .param p0, "left"    # [B
    .param p1, "right"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 33
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 35
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 37
    :cond_1
    if-nez p1, :cond_2

    .line 39
    return v1

    .line 42
    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    .line 44
    return v1

    .line 46
    :cond_3
    const/4 v2, 0x1

    .line 47
    .local v2, "result":Z
    array-length v3, p0

    sub-int/2addr v3, v0

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 49
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    and-int/2addr v2, v4

    .line 47
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 51
    .end local v3    # "i":I
    :cond_5
    return v2
.end method

.method public static equals([[B[[B)Z
    .locals 4
    .param p0, "left"    # [[B
    .param p1, "right"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 63
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x1

    .line 69
    .local v0, "result":Z
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 71
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v2

    and-int/2addr v0, v2

    .line 69
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static equals([[[B[[[B)Z
    .locals 6
    .param p0, "left"    # [[[B
    .param p1, "right"    # [[[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 86
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 88
    return v2

    .line 91
    :cond_0
    const/4 v0, 0x1

    .line 92
    .local v0, "result":Z
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 94
    aget-object v3, p0, v1

    array-length v3, v3

    aget-object v4, p1, v1

    array-length v4, v4

    if-eq v3, v4, :cond_1

    .line 96
    return v2

    .line 98
    :cond_1
    aget-object v3, p0, v1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_2

    .line 100
    aget-object v4, p0, v1

    aget-object v4, v4, v3

    aget-object v5, p1, v1

    aget-object v5, v5, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v4

    and-int/2addr v0, v4

    .line 98
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 92
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 185
    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 187
    .local v0, "rawChars":[C
    const/4 v1, 0x0

    .line 188
    .local v1, "hexChars":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    const/16 v4, 0x46

    const/16 v5, 0x39

    const/16 v6, 0x41

    const/16 v7, 0x30

    if-ge v2, v3, :cond_3

    .line 190
    aget-char v3, v0, v2

    if-lt v3, v7, :cond_0

    aget-char v3, v0, v2

    if-le v3, v5, :cond_1

    :cond_0
    aget-char v3, v0, v2

    if-lt v3, v6, :cond_2

    aget-char v3, v0, v2

    if-gt v3, v4, :cond_2

    .line 193
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 188
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 199
    .local v2, "byteString":[B
    and-int/lit8 v3, v1, 0x1

    .line 201
    .local v3, "pos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v9, v0

    if-ge v8, v9, :cond_6

    .line 203
    aget-char v9, v0, v8

    if-lt v9, v7, :cond_4

    aget-char v9, v0, v8

    if-gt v9, v5, :cond_4

    .line 205
    shr-int/lit8 v9, v3, 0x1

    aget-byte v10, v2, v9

    shl-int/lit8 v10, v10, 0x4

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 206
    shr-int/lit8 v9, v3, 0x1

    aget-byte v10, v2, v9

    aget-char v11, v0, v8

    sub-int/2addr v11, v7

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    goto :goto_2

    .line 208
    :cond_4
    aget-char v9, v0, v8

    if-lt v9, v6, :cond_5

    aget-char v9, v0, v8

    if-gt v9, v4, :cond_5

    .line 210
    shr-int/lit8 v9, v3, 0x1

    aget-byte v10, v2, v9

    shl-int/lit8 v10, v10, 0x4

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 211
    shr-int/lit8 v9, v3, 0x1

    aget-byte v10, v2, v9

    aget-char v11, v0, v8

    sub-int/2addr v11, v6

    add-int/lit8 v11, v11, 0xa

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 217
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 201
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 220
    .end local v8    # "i":I
    :cond_6
    return-object v2
.end method

.method public static split([BI)[[B
    .locals 4
    .param p0, "input"    # [B
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 360
    array-length v0, p0

    if-gt p1, v0, :cond_0

    .line 364
    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 365
    .local v0, "result":[[B
    new-array v1, p1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 366
    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v1, v1, [B

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 367
    aget-object v1, v0, v2

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    aget-object v1, v0, v3

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    return-object v0

    .line 362
    .end local v0    # "result":[[B
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static subArray([BI)[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "start"
        }
    .end annotation

    .line 398
    array-length v0, p0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static subArray([BII)[B
    .locals 3
    .param p0, "input"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "start",
            "end"
        }
    .end annotation

    .line 383
    sub-int v0, p2, p1

    new-array v0, v0, [B

    .line 384
    .local v0, "result":[B
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    return-object v0
.end method

.method public static toBinaryString([B)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 272
    const-string v0, ""

    .line 274
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 276
    aget-byte v2, p0, v1

    .line 277
    .local v2, "e":I
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 279
    ushr-int v4, v2, v3

    and-int/lit8 v4, v4, 0x1

    .line 280
    .local v4, "b":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .end local v4    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    .end local v3    # "ii":I
    :cond_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_1

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .end local v2    # "e":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_2
    return-object v0
.end method

.method public static toCharArray([B)[C
    .locals 3
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 410
    array-length v0, p0

    new-array v0, v0, [C

    .line 411
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 413
    aget-byte v2, p0, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 231
    const-string v0, ""

    .line 232
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 234
    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static toHexString([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "seperator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "prefix",
            "seperator"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 254
    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static xor([B[B)[B
    .locals 4
    .param p0, "x1"    # [B
    .param p1, "x2"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x1",
            "x2"
        }
    .end annotation

    .line 300
    array-length v0, p0

    new-array v0, v0, [B

    .line 302
    .local v0, "out":[B
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 304
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 302
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
