.class Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;
.super Ljava/lang/Object;
.source "DesugarUnixUriUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final H_ALPHA:J

.field private static final H_ALPHANUM:J

.field private static final H_DIGIT:J

.field private static final H_LOWALPHA:J

.field private static final H_MARK:J

.field private static final H_PATH:J

.field private static final H_PCHAR:J

.field private static final H_UNRESERVED:J

.field private static final H_UPALPHA:J

.field private static final L_ALPHA:J

.field private static final L_ALPHANUM:J

.field private static final L_DIGIT:J

.field private static final L_LOWALPHA:J

.field private static final L_MARK:J

.field private static final L_PATH:J

.field private static final L_PCHAR:J

.field private static final L_UNRESERVED:J

.field private static final L_UPALPHA:J

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    nop

    .line 206
    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->lowMask(CC)J

    move-result-wide v0

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_DIGIT:J

    .line 213
    const/16 v0, 0x5a

    const/16 v1, 0x41

    invoke-static {v1, v0}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_UPALPHA:J

    .line 219
    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-static {v0, v1}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_LOWALPHA:J

    .line 223
    sget-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_LOWALPHA:J

    sget-wide v2, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_UPALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_ALPHA:J

    .line 226
    sget-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_DIGIT:J

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_ALPHANUM:J

    .line 227
    sget-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_ALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_ALPHANUM:J

    .line 231
    const-string v0, "-_.!~*\'()"

    invoke-static {v0}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_MARK:J

    .line 232
    invoke-static {v0}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_MARK:J

    .line 235
    sget-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_ALPHANUM:J

    sget-wide v2, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_UNRESERVED:J

    .line 236
    sget-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_ALPHANUM:J

    sget-wide v2, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_UNRESERVED:J

    .line 240
    sget-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_UNRESERVED:J

    .line 241
    const-string v2, ":@&=+$,"

    invoke-static {v2}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v3

    or-long/2addr v0, v3

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_PCHAR:J

    .line 242
    sget-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_UNRESERVED:J

    .line 243
    invoke-static {v2}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_PCHAR:J

    .line 246
    sget-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_PCHAR:J

    const-string v2, ";/"

    invoke-static {v2}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v3

    or-long/2addr v0, v3

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_PATH:J

    .line 247
    sget-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_PCHAR:J

    invoke-static {v2}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_PATH:J

    .line 249
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->hexDigits:[C

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

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(C)I
    .locals 1
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 195
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 196
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 197
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 198
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 199
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 200
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 201
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static fromUri(Lj$/nio/file/FileSystem;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .locals 12
    .param p0, "fs"    # Lj$/nio/file/FileSystem;
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "userDir"    # Ljava/lang/String;
    .param p3, "rootDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fs",
            "uri",
            "userDir",
            "rootDir"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 42
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_b

    .line 44
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_a

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 47
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 49
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 51
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 61
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "p":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 63
    .local v2, "len":I
    if-eqz v2, :cond_6

    .line 67
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 68
    add-int/lit8 v2, v2, -0x1

    .line 69
    :cond_0
    new-array v3, v2, [B

    .line 70
    .local v3, "result":[B
    const/4 v4, 0x0

    .line 71
    .local v4, "rlen":I
    const/4 v5, 0x0

    .line 72
    .local v5, "pos":I
    :goto_0
    if-ge v5, v2, :cond_4

    .line 73
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 75
    .local v5, "c":C
    const/16 v7, 0x25

    if-ne v5, v7, :cond_2

    .line 76
    nop

    .line 77
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .local v7, "pos":I
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 78
    .local v6, "c1":C
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 79
    .local v7, "c2":C
    invoke-static {v6}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->decode(C)I

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    invoke-static {v7}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->decode(C)I

    move-result v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    .line 80
    .local v9, "b":B
    if-eqz v9, :cond_1

    .line 82
    .end local v6    # "c1":C
    .end local v7    # "c2":C
    move v6, v8

    goto :goto_1

    .line 81
    .restart local v6    # "c1":C
    .restart local v7    # "c2":C
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Nul character not allowed"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 83
    .end local v7    # "c2":C
    .end local v8    # "pos":I
    .end local v9    # "b":B
    .local v6, "pos":I
    :cond_2
    if-eqz v5, :cond_3

    const/16 v7, 0x80

    if-ge v5, v7, :cond_3

    .line 85
    int-to-byte v9, v5

    .line 87
    .restart local v9    # "b":B
    :goto_1
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "rlen":I
    .local v7, "rlen":I
    aput-byte v9, v3, v4

    .line 88
    .end local v5    # "c":C
    .end local v9    # "b":B
    move v5, v6

    move v4, v7

    goto :goto_0

    .line 84
    .end local v7    # "rlen":I
    .restart local v4    # "rlen":I
    .restart local v5    # "c":C
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Bad escape"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 89
    .end local v6    # "pos":I
    .local v5, "pos":I
    :cond_4
    array-length v6, v3

    if-eq v4, v6, :cond_5

    .line 90
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 92
    :cond_5
    new-instance v6, Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    new-instance v7, Ljava/lang/String;

    .line 94
    invoke-static {}, Lj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v6, p0, v7, p2, p3}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Lj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v6

    .line 64
    .end local v3    # "result":[B
    .end local v4    # "rlen":I
    .end local v5    # "pos":I
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "URI path component is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "len":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has a query component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has a fragment component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has an authority component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI scheme is not \"file\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is not hierarchical"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is not absolute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static highMask(CC)J
    .locals 7
    .param p0, "first"    # C
    .param p1, "last"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "last"
        }
    .end annotation

    .line 176
    const-wide/16 v0, 0x0

    .line 177
    .local v0, "m":J
    const/16 v2, 0x7f

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v4

    .line 178
    .local v3, "f":I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v2, v4

    .line 179
    .local v2, "l":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    if-gt v4, v2, :cond_0

    .line 180
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    .end local v4    # "i":I
    :cond_0
    return-wide v0
.end method

.method private static highMask(Ljava/lang/String;)J
    .locals 8
    .param p0, "chars"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chars"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 153
    .local v0, "n":I
    const-wide/16 v1, 0x0

    .line 154
    .local v1, "m":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 155
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 156
    .local v4, "c":C
    const/16 v5, 0x40

    if-lt v4, v5, :cond_0

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    .line 157
    add-int/lit8 v5, v4, -0x40

    const-wide/16 v6, 0x1

    shl-long v5, v6, v5

    or-long/2addr v1, v5

    .line 154
    .end local v4    # "c":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "i":I
    :cond_1
    return-wide v1
.end method

.method private static lowMask(CC)J
    .locals 7
    .param p0, "first"    # C
    .param p1, "last"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "last"
        }
    .end annotation

    .line 165
    const-wide/16 v0, 0x0

    .line 166
    .local v0, "m":J
    const/16 v2, 0x3f

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 167
    .local v3, "f":I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 168
    .local v2, "l":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    if-gt v4, v2, :cond_0

    .line 169
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    .end local v4    # "i":I
    :cond_0
    return-wide v0
.end method

.method private static lowMask(Ljava/lang/String;)J
    .locals 7
    .param p0, "chars"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chars"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 141
    .local v0, "n":I
    const-wide/16 v1, 0x0

    .line 142
    .local v1, "m":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 143
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 144
    .local v4, "c":C
    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    .line 145
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v1, v5

    .line 142
    .end local v4    # "c":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "i":I
    :cond_1
    return-wide v1
.end method

.method private static match(CJJ)Z
    .locals 7
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "lowMask",
            "highMask"
        }
    .end annotation

    .line 186
    const/16 v0, 0x40

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    if-ge p0, v0, :cond_1

    .line 187
    shl-long/2addr v4, p0

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 188
    :cond_1
    const/16 v0, 0x80

    if-ge p0, v0, :cond_3

    .line 189
    add-int/lit8 v0, p0, -0x40

    shl-long/2addr v4, v0

    and-long/2addr v4, p3

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 190
    :cond_3
    return v6
.end method

.method static toUri(Lj$/desugar/sun/nio/fs/DesugarUnixPath;)Ljava/net/URI;
    .locals 8
    .param p0, "up"    # Lj$/desugar/sun/nio/fs/DesugarUnixPath;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "up"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->toAbsolutePath()Lj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    invoke-virtual {v0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->asByteArray()[B

    move-result-object v0

    .line 102
    .local v0, "path":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "sb":Ljava/lang/StringBuilder;
    nop

    .line 104
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 105
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 106
    .local v3, "c":C
    sget-wide v4, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->L_PATH:J

    sget-wide v6, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->H_PATH:J

    invoke-static {v3, v4, v5, v6, v7}, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->match(CJJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    :cond_0
    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    sget-object v4, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->hexDigits:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    sget-object v4, Lj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->hexDigits:[C

    and-int/lit8 v5, v3, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2

    .line 124
    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/DesugarUnixPath;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "x":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
