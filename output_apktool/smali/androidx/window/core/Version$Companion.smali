.class public final Landroidx/window/core/Version$Companion;
.super Ljava/lang/Object;
.source "Version.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/core/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000fH\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/window/core/Version$Companion;",
        "",
        "<init>",
        "()V",
        "UNKNOWN",
        "Landroidx/window/core/Version;",
        "getUNKNOWN",
        "()Landroidx/window/core/Version;",
        "VERSION_0_1",
        "getVERSION_0_1",
        "VERSION_1_0",
        "getVERSION_1_0",
        "CURRENT",
        "getCURRENT",
        "VERSION_PATTERN_STRING",
        "",
        "parse",
        "versionString",
        "window_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/core/Version$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCURRENT()Landroidx/window/core/Version;
    .locals 1

    .line 79
    invoke-static {}, Landroidx/window/core/Version;->access$getCURRENT$cp()Landroidx/window/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public final getUNKNOWN()Landroidx/window/core/Version;
    .locals 1

    .line 76
    invoke-static {}, Landroidx/window/core/Version;->access$getUNKNOWN$cp()Landroidx/window/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public final getVERSION_0_1()Landroidx/window/core/Version;
    .locals 1

    .line 77
    invoke-static {}, Landroidx/window/core/Version;->access$getVERSION_0_1$cp()Landroidx/window/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public final getVERSION_1_0()Landroidx/window/core/Version;
    .locals 1

    .line 78
    invoke-static {}, Landroidx/window/core/Version;->access$getVERSION_1_0$cp()Landroidx/window/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Landroidx/window/core/Version;
    .locals 9
    .param p1, "versionString"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 91
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    const-string v1, "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 95
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    return-object v0

    .line 98
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v4, v2

    .line 99
    .local v4, "major":I
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 100
    .local v5, "minor":I
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 101
    .local v6, "patch":I
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    move-object v7, v0

    .line 102
    .local v7, "description":Ljava/lang/String;
    new-instance v3, Landroidx/window/core/Version;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    .line 100
    .end local v6    # "patch":I
    .end local v7    # "description":Ljava/lang/String;
    :cond_3
    return-object v0

    .line 99
    .end local v5    # "minor":I
    :cond_4
    return-object v0

    .line 98
    .end local v4    # "major":I
    :cond_5
    return-object v0

    .line 92
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_6
    :goto_1
    return-object v0
.end method
