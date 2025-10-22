.class public final Lj$/nio/file/Paths;
.super Ljava/lang/Object;
.source "Paths.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs get(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "more"    # [Ljava/lang/String;

    .line 69
    invoke-static {p0, p1}, Lj$/nio/file/Path$-CC;->of(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/net/URI;)Lj$/nio/file/Path;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;

    .line 97
    invoke-static {p0}, Lj$/nio/file/Path$-CC;->of(Ljava/net/URI;)Lj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
