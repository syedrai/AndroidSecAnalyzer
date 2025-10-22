.class Lj$/desugar/sun/nio/fs/DesugarUtil;
.super Ljava/lang/Object;
.source "DesugarUtil.java"


# static fields
.field private static final jnuEncoding:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs followLinks([Lj$/nio/file/LinkOption;)Z
    .locals 5
    .param p0, "options"    # [Lj$/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 124
    const/4 v0, 0x1

    .line 125
    .local v0, "followLinks":Z
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 126
    .local v3, "option":Lj$/nio/file/LinkOption;
    sget-object v4, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    if-ne v3, v4, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 125
    .end local v3    # "option":Lj$/nio/file/LinkOption;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .restart local v3    # "option":Lj$/nio/file/LinkOption;
    :cond_0
    if-nez v3, :cond_1

    .line 129
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 131
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Should not get here"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 134
    .end local v3    # "option":Lj$/nio/file/LinkOption;
    :cond_2
    return v0
.end method

.method static jnuEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .line 51
    sget-object v0, Lj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static varargs newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;[TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 113
    .local p0, "other":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 115
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-object v0
.end method

.method static varargs newSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 100
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 101
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 102
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-object v0
.end method

.method static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "c"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 78
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 83
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 84
    .local v2, "n":I
    const/4 v3, 0x0

    .line 85
    .local v3, "last":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 86
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_2

    .line 87
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "n":I
    .local v5, "n":I
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 88
    add-int/lit8 v2, v4, 0x1

    move v3, v2

    move v2, v5

    .line 85
    .end local v5    # "n":I
    .restart local v2    # "n":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 91
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 92
    return-object v1
.end method

.method static toBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 59
    sget-object v0, Lj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method static toString([B)Ljava/lang/String;
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

    .line 67
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
