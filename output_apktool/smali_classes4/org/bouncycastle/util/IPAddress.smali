.class public Lorg/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;
.source "IPAddress.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isParseable(Ljava/lang/String;IIIIZII)Z
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .param p4, "maxLength"    # I
    .param p5, "allowLeadingZero"    # Z
    .param p6, "minValue"    # I
    .param p7, "maxValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "pos",
            "end",
            "radix",
            "maxLength",
            "allowLeadingZero",
            "minValue",
            "maxValue"
        }
    .end annotation

    .line 183
    sub-int v0, p2, p1

    .line 184
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-le v0, p4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 186
    return v1

    .line 189
    :cond_2
    if-le v0, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    xor-int/lit8 v4, p5, 0x1

    and-int/2addr v3, v4

    .line 190
    .local v3, "checkLeadingZero":Z
    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-gtz v4, :cond_4

    .line 192
    return v1

    .line 195
    :cond_4
    const/4 v4, 0x0

    .line 196
    .local v4, "value":I
    :goto_3
    if-ge p1, p2, :cond_6

    .line 198
    add-int/lit8 v5, p1, 0x1

    .end local p1    # "pos":I
    .local v5, "pos":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 199
    .local p1, "c":C
    invoke-static {p1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 200
    .local v6, "d":I
    if-gez v6, :cond_5

    .line 202
    return v1

    .line 205
    :cond_5
    mul-int v4, v4, p3

    .line 206
    add-int/2addr v4, v6

    .line 207
    .end local v6    # "d":I
    .end local p1    # "c":C
    move p1, v5

    goto :goto_3

    .line 209
    .end local v5    # "pos":I
    .local p1, "pos":I
    :cond_6
    if-lt v4, p6, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    if-gt v4, p7, :cond_8

    const/4 v1, 0x1

    :cond_8
    and-int/2addr v1, v5

    return v1
.end method

.method private static isParseableIPv4Mask(Ljava/lang/String;)Z
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v1, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    .end local p0    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static isParseableIPv4Octet(Ljava/lang/String;II)Z
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "pos",
            "end"
        }
    .end annotation

    .line 167
    const/4 v6, 0x0

    const/16 v7, 0xff

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "pos":I
    .end local p2    # "end":I
    .local v0, "s":Ljava/lang/String;
    .local v1, "pos":I
    .local v2, "end":I
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static isParseableIPv6Mask(Ljava/lang/String;)Z
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x1

    const/16 v7, 0x80

    const/4 v1, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    .end local p0    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static isParseableIPv6Segment(Ljava/lang/String;II)Z
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "pos",
            "end"
        }
    .end annotation

    .line 177
    const/4 v6, 0x0

    const v7, 0xffff

    const/16 v3, 0x10

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "pos":I
    .end local p2    # "end":I
    .local v0, "s":Ljava/lang/String;
    .local v1, "pos":I
    .local v2, "end":I
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isValidIPv4(Ljava/lang/String;)Z
    .locals 6
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 42
    .local v0, "length":I
    const/4 v1, 0x7

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 48
    .local v1, "pos":I
    const/4 v3, 0x0

    .local v3, "octetIndex":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 50
    const/16 v4, 0x2e

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 52
    .local v4, "end":I
    invoke-static {p0, v1, v4}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv4Octet(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 54
    return v2

    .line 57
    :cond_1
    add-int/lit8 v1, v4, 0x1

    .line 48
    .end local v4    # "end":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "octetIndex":I
    :cond_2
    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv4Octet(Ljava/lang/String;II)Z

    move-result v2

    return v2

    .line 44
    .end local v1    # "pos":I
    :cond_3
    :goto_1
    return v2
.end method

.method public static isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .locals 6
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 65
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "index":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 68
    return v1

    .line 71
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "before":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "after":Ljava/lang/String;
    invoke-static {v3}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv4Mask(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isValidIPv6(Ljava/lang/String;)Z
    .locals 12
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    return v1

    .line 91
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 92
    .local v0, "firstChar":C
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_1

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-gez v3, :cond_1

    .line 94
    return v1

    .line 97
    :cond_1
    const/4 v3, 0x0

    .line 98
    .local v3, "segmentCount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "temp":Ljava/lang/String;
    const/4 v5, 0x0

    .line 101
    .local v5, "doubleColonFound":Z
    const/4 v6, 0x0

    .line 102
    .local v6, "pos":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-ge v6, v7, :cond_8

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    move v10, v7

    .local v10, "end":I
    if-lt v7, v6, :cond_8

    .line 104
    if-ne v3, v8, :cond_2

    .line 106
    return v1

    .line 109
    :cond_2
    if-eq v6, v10, :cond_6

    .line 111
    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v9

    if-ne v10, v11, :cond_4

    const/16 v11, 0x2e

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-lez v11, :cond_4

    .line 116
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v8, :cond_3

    .line 118
    return v1

    .line 120
    :cond_3
    invoke-static {v7}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 122
    return v1

    .line 125
    :cond_4
    invoke-static {v4, v6, v10}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv6Segment(Ljava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_5

    .line 127
    return v1

    .line 129
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 132
    :cond_6
    if-eq v10, v9, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v9

    if-eq v10, v7, :cond_7

    if-eqz v5, :cond_7

    .line 134
    return v1

    .line 136
    :cond_7
    const/4 v5, 0x1

    .line 139
    :goto_1
    add-int/lit8 v6, v10, 0x1

    .line 140
    add-int/2addr v3, v9

    goto :goto_0

    .line 143
    .end local v10    # "end":I
    :cond_8
    if-eq v3, v8, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public static isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .locals 6
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 148
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "index":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 151
    return v1

    .line 154
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "before":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "after":Ljava/lang/String;
    invoke-static {v3}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv6Mask(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isValidWithNetMask(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
