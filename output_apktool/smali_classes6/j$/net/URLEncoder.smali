.class public Lj$/net/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# static fields
.field static final caseDiff:I = 0x20

.field static dfltEncName:Ljava/lang/String;

.field static dontNeedEncoding:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lj$/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    .line 121
    const/16 v0, 0x61

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 122
    sget-object v1, Lj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 125
    sget-object v1, Lj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 128
    sget-object v1, Lj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 130
    :cond_2
    sget-object v1, Lj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 132
    sget-object v1, Lj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 133
    sget-object v1, Lj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 134
    sget-object v1, Lj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 135
    sget-object v1, Lj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 137
    const-string v1, "file.encoding"

    invoke-static {v1}, Lj$/sun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lj$/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    .line 138
    .end local v0    # "i":I
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    const/4 v0, 0x0

    .line 162
    .local v0, "str":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lj$/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v1}, Lj$/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 167
    :goto_0
    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 190
    if-eqz p1, :cond_0

    .line 195
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 196
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-static {p0, v0}, Lj$/net/URLEncoder;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 197
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charsetName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 221
    const-string v0, "charset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "needToChange":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 225
    .local v1, "out":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 227
    .local v2, "charArrayWriter":Ljava/io/CharArrayWriter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 228
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 230
    .local v4, "c":I
    sget-object v5, Lj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 232
    const/16 v4, 0x2b

    .line 233
    const/4 v0, 0x1

    .line 236
    :cond_0
    int-to-char v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 241
    :cond_1
    invoke-virtual {v2, v4}, Ljava/io/CharArrayWriter;->write(I)V

    .line 250
    const v5, 0xd800

    if-lt v4, v5, :cond_2

    const v5, 0xdbff

    if-gt v4, v5, :cond_2

    .line 255
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 256
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 261
    .local v5, "d":I
    const v6, 0xdc00

    if-lt v5, v6, :cond_2

    const v6, 0xdfff

    if-gt v5, v6, :cond_2

    .line 267
    invoke-virtual {v2, v5}, Ljava/io/CharArrayWriter;->write(I)V

    .line 268
    add-int/lit8 v3, v3, 0x1

    .line 272
    .end local v5    # "d":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    sget-object v5, Lj$/net/URLEncoder;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    :cond_3
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->flush()V

    .line 276
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 277
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 278
    .local v6, "ba":[B
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_6

    .line 279
    const/16 v8, 0x25

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    aget-byte v8, v6, v7

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 283
    .local v8, "ch":C
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 284
    add-int/lit8 v10, v8, -0x20

    int-to-char v8, v10

    .line 286
    :cond_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    aget-byte v10, v6, v7

    and-int/lit8 v10, v10, 0xf

    invoke-static {v10, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 288
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 289
    add-int/lit8 v9, v8, -0x20

    int-to-char v8, v9

    .line 291
    :cond_5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    .end local v8    # "ch":C
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 293
    .end local v7    # "j":I
    :cond_6
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->reset()V

    .line 294
    const/4 v0, 0x1

    .line 296
    .end local v4    # "c":I
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "ba":[B
    :goto_2
    goto/16 :goto_0

    .line 298
    .end local v3    # "i":I
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    move-object v3, p0

    :goto_3
    return-object v3
.end method
