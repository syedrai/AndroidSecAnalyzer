.class public Lj$/net/URLDecoder;
.super Ljava/lang/Object;
.source "URLDecoder.java"


# static fields
.field static dfltEncName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    sget-object v0, Lj$/net/URLEncoder;->dfltEncName:Ljava/lang/String;

    sput-object v0, Lj$/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    const/4 v0, 0x0

    .line 104
    .local v0, "str":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lj$/net/URLDecoder;->dfltEncName:Ljava/lang/String;

    invoke-static {p0, v1}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 109
    :goto_0
    return-object v0
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 142
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-static {p0, v0}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 143
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string v1, "URLDecoder: empty string enc parameter"

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 174
    const-string v0, "Charset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "needToChange":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 177
    .local v1, "numChars":I
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f4

    if-le v1, v3, :cond_0

    div-int/lit8 v3, v1, 0x2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 178
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 181
    .local v3, "i":I
    const/4 v4, 0x0

    .line 182
    .local v4, "bytes":[B
    :goto_1
    if-ge v3, v1, :cond_8

    .line 183
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 184
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_0

    .line 246
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 248
    goto :goto_1

    .line 186
    :sswitch_0
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v3, v3, 0x1

    .line 188
    const/4 v0, 0x1

    .line 189
    goto :goto_1

    .line 204
    :sswitch_1
    if-nez v4, :cond_1

    .line 205
    sub-int v6, v1, v3

    :try_start_0
    div-int/lit8 v6, v6, 0x3

    new-array v6, v6, [B

    move-object v4, v6

    .end local v4    # "bytes":[B
    .local v6, "bytes":[B
    goto :goto_2

    .line 238
    .end local v6    # "bytes":[B
    .restart local v4    # "bytes":[B
    :catch_0
    move-exception v6

    goto/16 :goto_5

    .line 206
    :cond_1
    :goto_2
    const/4 v6, 0x0

    .line 208
    .local v6, "pos":I
    :goto_3
    add-int/lit8 v7, v3, 0x2

    const/16 v8, 0x25

    if-ge v7, v1, :cond_5

    if-ne v5, v8, :cond_5

    .line 212
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lj$/net/URLDecoder;->isValidHexChar(C)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lj$/net/URLDecoder;->isValidHexChar(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 217
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v3, 0x3

    const/16 v9, 0x10

    invoke-static {p0, v7, v8, v9}, Lj$/net/URLDecoder$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;III)I

    move-result v7

    .line 218
    .local v7, "v":I
    if-ltz v7, :cond_3

    .line 224
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "pos":I
    .local v8, "pos":I
    int-to-byte v9, v7

    aput-byte v9, v4, v6

    .line 225
    add-int/lit8 v3, v3, 0x3

    .line 226
    if-ge v3, v1, :cond_2

    .line 227
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 228
    .end local v7    # "v":I
    :cond_2
    move v6, v8

    goto :goto_3

    .line 221
    .end local v8    # "pos":I
    .restart local v6    # "pos":I
    .restart local v7    # "v":I
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v9, v3, 0x3

    .line 222
    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URLDecoder: Illegal hex characters in escape (%) pattern - negative value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "needToChange":Z
    .end local v1    # "numChars":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "bytes":[B
    .end local v5    # "c":C
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    throw v8

    .line 213
    .end local v7    # "v":I
    .restart local v0    # "needToChange":Z
    .restart local v1    # "numChars":I
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "bytes":[B
    .restart local v5    # "c":C
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v8, v3, 0x3

    .line 214
    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URLDecoder: Illegal hex characters in escape (%) pattern : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "needToChange":Z
    .end local v1    # "numChars":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "bytes":[B
    .end local v5    # "c":C
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    throw v7

    .line 233
    .restart local v0    # "needToChange":Z
    .restart local v1    # "numChars":I
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "bytes":[B
    .restart local v5    # "c":C
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_5
    if-ge v3, v1, :cond_7

    if-eq v5, v8, :cond_6

    goto :goto_4

    .line 234
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "URLDecoder: Incomplete trailing escape (%) pattern"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "needToChange":Z
    .end local v1    # "numChars":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "bytes":[B
    .end local v5    # "c":C
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "charset":Ljava/nio/charset/Charset;
    throw v7

    .line 237
    .restart local v0    # "needToChange":Z
    .restart local v1    # "numChars":I
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "bytes":[B
    .restart local v5    # "c":C
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_7
    :goto_4
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v6, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    nop

    .line 243
    .end local v6    # "pos":I
    const/4 v0, 0x1

    .line 244
    goto/16 :goto_1

    .line 239
    .local v6, "e":Ljava/lang/NumberFormatException;
    :goto_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 241
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URLDecoder: Illegal hex characters in escape (%) pattern - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 252
    .end local v5    # "c":C
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_9
    move-object v5, p0

    :goto_6
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidHexChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 258
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
