.class public final Lorg/bouncycastle/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/util/Strings$StringListImpl;
    }
.end annotation


# static fields
.field private static LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    :try_start_0
    new-instance v0, Lorg/bouncycastle/util/Strings$1;

    invoke-direct {v0}, Lorg/bouncycastle/util/Strings$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "%n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    goto :goto_0

    .line 41
    :catch_1
    move-exception v1

    .line 43
    .local v1, "ef":Ljava/lang/Exception;
    const-string v2, "\n"

    sput-object v2, Lorg/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ef":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asCharArray([B)[C
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 291
    array-length v0, p0

    new-array v0, v0, [C

    .line 293
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 295
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static constantTimeAreEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 252
    .local v0, "isEqual":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 254
    .local v1, "len":I
    if-eqz v0, :cond_3

    .line 256
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-eq v4, v1, :cond_2

    .line 258
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v0, v5

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_2
    goto :goto_5

    .line 263
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-eq v4, v1, :cond_5

    .line 265
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    and-int/2addr v0, v5

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 269
    .end local v4    # "i":I
    :cond_5
    :goto_5
    return v0
.end method

.method public static fromByteArray([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->asCharArray([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static fromUTF8ByteArray([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 50
    array-length v0, p0

    new-array v0, v0, [C

    .line 51
    .local v0, "chars":[C
    invoke-static {p0, v0}, Lorg/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([B[C)I

    move-result v1

    .line 52
    .local v1, "len":I
    if-ltz v1, :cond_0

    .line 56
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 54
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid UTF-8 input"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static fromUTF8ByteArray([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "off",
            "length"
        }
    .end annotation

    .line 61
    new-array v0, p2, [C

    .line 62
    .local v0, "chars":[C
    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([BII[C)I

    move-result v1

    .line 63
    .local v1, "len":I
    if-ltz v1, :cond_0

    .line 67
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid UTF-8 input"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static lineSeparator()Ljava/lang/String;
    .locals 1

    .line 339
    sget-object v0, Lorg/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method public static newList()Lorg/bouncycastle/util/StringList;
    .locals 2

    .line 334
    new-instance v0, Lorg/bouncycastle/util/Strings$StringListImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/Strings$StringListImpl;-><init>(Lorg/bouncycastle/util/Strings-IA;)V

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "delimiter"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 304
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x1

    .line 307
    .local v1, "moreTokens":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 309
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 310
    .local v2, "tokenLocation":I
    if-lez v2, :cond_0

    .line 312
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "subString":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 314
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 318
    .end local v3    # "subString":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 319
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 321
    .end local v2    # "tokenLocation":I
    :goto_1
    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 325
    .local v2, "res":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-eq v3, v4, :cond_2

    .line 327
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 329
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public static toByteArray(Ljava/lang/String;[BI)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "buf",
            "off"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 233
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 235
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 236
    .local v2, "c":C
    add-int v3, p2, v1

    int-to-byte v4, v2

    aput-byte v4, p1, v3

    .line 233
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 220
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 222
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 224
    .local v2, "ch":C
    int-to-byte v3, v2

    aput-byte v3, v0, v1

    .line 220
    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static toByteArray([C)[B
    .locals 3
    .param p0, "chars"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chars"
        }
    .end annotation

    .line 205
    array-length v0, p0

    new-array v0, v0, [B

    .line 207
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 209
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "changed":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 185
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 187
    aget-char v3, v1, v2

    .line 188
    .local v3, "ch":C
    const/16 v4, 0x41

    if-gt v4, v3, :cond_0

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 191
    add-int/lit8 v4, v3, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 185
    .end local v3    # "ch":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 197
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 200
    :cond_2
    return-object p0
.end method

.method public static toUTF8ByteArray([CLjava/io/OutputStream;)V
    .locals 8
    .param p0, "string"    # [C
    .param p1, "sOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "sOut"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    move-object v0, p0

    .line 95
    .local v0, "c":[C
    const/4 v1, 0x0

    .line 97
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 99
    aget-char v2, v0, v1

    .line 101
    .local v2, "ch":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 103
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_1

    .line 105
    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    .line 107
    shr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0xc0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 108
    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 111
    :cond_1
    const v4, 0xd800

    if-lt v2, v4, :cond_4

    const v4, 0xdfff

    if-gt v2, v4, :cond_4

    .line 115
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    const-string v6, "invalid UTF-16 codepoint"

    if-ge v4, v5, :cond_3

    .line 119
    move v4, v2

    .line 120
    .local v4, "W1":C
    add-int/lit8 v1, v1, 0x1

    aget-char v2, v0, v1

    .line 121
    move v5, v2

    .line 124
    .local v5, "W2":C
    const v7, 0xdbff

    if-gt v4, v7, :cond_2

    .line 128
    and-int/lit16 v6, v4, 0x3ff

    shl-int/lit8 v6, v6, 0xa

    and-int/lit16 v7, v5, 0x3ff

    or-int/2addr v6, v7

    const/high16 v7, 0x10000

    add-int/2addr v6, v7

    .line 129
    .local v6, "codePoint":I
    shr-int/lit8 v7, v6, 0x12

    or-int/lit16 v7, v7, 0xf0

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    .line 130
    shr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    .line 131
    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    .line 132
    and-int/lit8 v7, v6, 0x3f

    or-int/2addr v3, v7

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 133
    .end local v4    # "W1":C
    .end local v5    # "W2":C
    .end local v6    # "codePoint":I
    goto :goto_1

    .line 126
    .restart local v4    # "W1":C
    .restart local v5    # "W2":C
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    .end local v4    # "W1":C
    .end local v5    # "W2":C
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_4
    shr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0xe0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 137
    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 138
    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 141
    :goto_1
    nop

    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    .line 142
    goto/16 :goto_0

    .line 143
    :cond_5
    return-void
.end method

.method public static toUTF8ByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static toUTF8ByteArray([C)[B
    .locals 4
    .param p0, "string"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([CLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    nop

    .line 88
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 83
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot encode string to byte array!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "changed":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 156
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 158
    aget-char v3, v1, v2

    .line 159
    .local v3, "ch":C
    const/16 v4, 0x61

    if-gt v4, v3, :cond_0

    const/16 v4, 0x7a

    if-lt v4, v3, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 162
    add-int/lit8 v4, v3, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 156
    .end local v3    # "ch":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 168
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 171
    :cond_2
    return-object p0
.end method
