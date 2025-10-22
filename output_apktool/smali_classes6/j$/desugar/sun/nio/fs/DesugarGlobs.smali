.class public Lj$/desugar/sun/nio/fs/DesugarGlobs;
.super Ljava/lang/Object;
.source "DesugarGlobs.java"


# static fields
.field private static EOL:C = '\u0000'

.field private static final globMetaChars:Ljava/lang/String; = "\\*?[{"

.field private static final regexMetaChars:Ljava/lang/String; = ".^$+{[]|()"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput-char v0, Lj$/desugar/sun/nio/fs/DesugarGlobs;->EOL:C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isGlobMeta(C)Z
    .locals 2
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 41
    const-string v0, "\\*?[{"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isRegexMeta(C)Z
    .locals 2
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 37
    const-string v0, ".^$+{[]|()"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static next(Ljava/lang/String;I)C
    .locals 1
    .param p0, "glob"    # Ljava/lang/String;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "glob",
            "i"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 49
    :cond_0
    sget-char v0, Lj$/desugar/sun/nio/fs/DesugarGlobs;->EOL:C

    return v0
.end method

.method private static toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p0, "globPattern"    # Ljava/lang/String;
    .param p1, "isDos"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "globPattern",
            "isDos"
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "inGroup":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "regex":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 62
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 63
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 64
    .local v2, "c":C
    const/16 v4, 0x5c

    sparse-switch v2, :sswitch_data_0

    .line 196
    invoke-static {v2}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->isRegexMeta(C)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 197
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 159
    :sswitch_0
    if-eqz v0, :cond_0

    .line 160
    const-string v4, "))"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/4 v0, 0x0

    move v2, v3

    goto/16 :goto_8

    .line 163
    :cond_0
    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    goto/16 :goto_7

    .line 151
    :sswitch_1
    if-nez v0, :cond_1

    .line 155
    const-string v4, "(?:(?:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/4 v0, 0x1

    .line 157
    move v2, v3

    goto/16 :goto_8

    .line 152
    :cond_1
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v5, v3, -0x1

    const-string v6, "Cannot nest groups"

    invoke-direct {v4, v6, p0, v5}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 67
    :sswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_4

    .line 71
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 72
    .local v3, "next":C
    invoke-static {v3}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->isGlobMeta(C)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->isRegexMeta(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 73
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    move v2, v5

    goto/16 :goto_8

    .line 68
    .end local v5    # "i":I
    .local v3, "i":I
    :cond_4
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v5, v3, -0x1

    const-string v6, "No character to escape"

    invoke-direct {v4, v6, p0, v5}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 86
    :sswitch_3
    if-eqz p1, :cond_5

    .line 87
    const-string v5, "[[^\\\\]&&["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 89
    :cond_5
    const-string v5, "[[^/]&&["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :goto_1
    invoke-static {p0, v3}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v5

    const/16 v6, 0x5e

    const/16 v7, 0x2d

    if-ne v5, v6, :cond_6

    .line 93
    const-string v5, "\\^"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 97
    :cond_6
    invoke-static {p0, v3}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v5

    const/16 v8, 0x21

    if-ne v5, v8, :cond_7

    .line 98
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 102
    :cond_7
    invoke-static {p0, v3}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v5

    if-ne v5, v7, :cond_8

    .line 103
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 107
    :cond_8
    :goto_2
    const/4 v5, 0x0

    .line 108
    .local v5, "hasRangeStart":Z
    const/4 v6, 0x0

    .line 109
    .local v6, "last":C
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x5d

    if-ge v3, v8, :cond_13

    .line 110
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "i":I
    .local v8, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 111
    if-ne v2, v9, :cond_9

    .line 112
    move v3, v8

    goto :goto_5

    .line 114
    :cond_9
    const/16 v3, 0x2f

    if-eq v2, v3, :cond_12

    if-eqz p1, :cond_a

    if-eq v2, v4, :cond_12

    .line 119
    :cond_a
    if-eq v2, v4, :cond_b

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_b

    const/16 v3, 0x26

    if-ne v2, v3, :cond_c

    .line 120
    invoke-static {p0, v8}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v10

    if-ne v10, v3, :cond_c

    .line 122
    :cond_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    if-ne v2, v7, :cond_11

    .line 127
    const-string v3, "Invalid range"

    if-eqz v5, :cond_10

    .line 131
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "i":I
    .local v10, "i":I
    invoke-static {p0, v8}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v8

    move v2, v8

    sget-char v11, Lj$/desugar/sun/nio/fs/DesugarGlobs;->EOL:C

    if-eq v8, v11, :cond_f

    if-ne v2, v9, :cond_d

    .line 132
    goto :goto_4

    .line 134
    :cond_d
    if-lt v2, v6, :cond_e

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    const/4 v5, 0x0

    move v3, v10

    goto :goto_3

    .line 135
    :cond_e
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v7, v10, -0x3

    invoke-direct {v4, v3, p0, v7}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 145
    :cond_f
    :goto_4
    move v3, v10

    goto :goto_5

    .line 128
    .end local v10    # "i":I
    .restart local v8    # "i":I
    :cond_10
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v7, v8, -0x1

    invoke-direct {v4, v3, p0, v7}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 141
    :cond_11
    const/4 v5, 0x1

    .line 142
    move v6, v2

    move v3, v8

    goto :goto_3

    .line 115
    :cond_12
    new-instance v3, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v4, v8, -0x1

    const-string v7, "Explicit \'name separator\' in class"

    invoke-direct {v3, v7, p0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    .line 145
    .end local v8    # "i":I
    .restart local v3    # "i":I
    :cond_13
    :goto_5
    if-ne v2, v9, :cond_14

    .line 148
    const-string v4, "]]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move v2, v3

    goto :goto_8

    .line 146
    :cond_14
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v7, v3, -0x1

    const-string v8, "Missing \']"

    invoke-direct {v4, v8, p0, v7}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 188
    .end local v5    # "hasRangeStart":Z
    .end local v6    # "last":C
    :sswitch_4
    if-eqz p1, :cond_15

    .line 189
    const-string v4, "[^\\\\]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 191
    :cond_15
    const-string v4, "[^/]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    goto :goto_7

    .line 78
    :sswitch_5
    if-eqz p1, :cond_16

    .line 79
    const-string v4, "\\\\"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 81
    :cond_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    goto :goto_7

    .line 167
    :sswitch_6
    if-eqz v0, :cond_17

    .line 168
    const-string v4, ")|(?:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 170
    :cond_17
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    goto :goto_7

    .line 174
    :sswitch_7
    invoke-static {p0, v3}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_18

    .line 176
    const-string v4, ".*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_8

    .line 180
    :cond_18
    if-eqz p1, :cond_19

    .line 181
    const-string v4, "[^\\\\]*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 183
    :cond_19
    const-string v4, "[^/]*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    goto :goto_7

    .line 199
    :cond_1a
    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    .end local v2    # "c":C
    :goto_7
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    :goto_8
    goto/16 :goto_0

    .line 203
    :cond_1b
    if-nez v0, :cond_1c

    .line 207
    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 204
    :cond_1c
    new-instance v3, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v4, v2, -0x1

    const-string v5, "Missing \'}"

    invoke-direct {v3, v5, p0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_7
        0x2c -> :sswitch_6
        0x2f -> :sswitch_5
        0x3f -> :sswitch_4
        0x5b -> :sswitch_3
        0x5c -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method static toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "globPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globPattern"
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toWindowsRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "globPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globPattern"
        }
    .end annotation

    .line 215
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lj$/desugar/sun/nio/fs/DesugarGlobs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
