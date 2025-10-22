.class public final Landroidx/window/core/layout/WindowSizeClassSelectors;
.super Ljava/lang/Object;
.source "WindowSizeClassSelectors.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowSizeClassSelectors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowSizeClassSelectors.kt\nandroidx/window/core/layout/WindowSizeClassSelectors\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,104:1\n1863#2,2:105\n1863#2,2:107\n1863#2,2:109\n1863#2,2:111\n*S KotlinDebug\n*F\n+ 1 WindowSizeClassSelectors.kt\nandroidx/window/core/layout/WindowSizeClassSelectors\n*L\n53#1:105,2\n59#1:107,2\n87#1:109,2\n93#1:111,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a \u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u001a \u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006\u001a \u0010\u0007\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "computeWindowSizeClass",
        "Landroidx/window/core/layout/WindowSizeClass;",
        "",
        "widthDp",
        "",
        "heightDp",
        "",
        "computeWindowSizeClassPreferHeight",
        "window-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final computeWindowSizeClass(Ljava/util/Set;FF)Landroidx/window/core/layout/WindowSizeClass;
    .locals 2
    .param p0, "$this$computeWindowSizeClass"    # Ljava/util/Set;
    .param p1, "widthDp"    # F
    .param p2, "heightDp"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/core/layout/WindowSizeClass;",
            ">;FF)",
            "Landroidx/window/core/layout/WindowSizeClass;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-static {p0, v0, v1}, Landroidx/window/core/layout/WindowSizeClassSelectors;->computeWindowSizeClass(Ljava/util/Set;II)Landroidx/window/core/layout/WindowSizeClass;

    move-result-object v0

    return-object v0
.end method

.method public static final computeWindowSizeClass(Ljava/util/Set;II)Landroidx/window/core/layout/WindowSizeClass;
    .locals 10
    .param p0, "$this$computeWindowSizeClass"    # Ljava/util/Set;
    .param p1, "widthDp"    # I
    .param p2, "heightDp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/core/layout/WindowSizeClass;",
            ">;II)",
            "Landroidx/window/core/layout/WindowSizeClass;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "maxWidth":I
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 105
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/window/core/layout/WindowSizeClass;

    .local v5, "bucket":Landroidx/window/core/layout/WindowSizeClass;
    const/4 v6, 0x0

    .line 54
    .local v6, "$i$a$-forEach-WindowSizeClassSelectors$computeWindowSizeClass$1":I
    invoke-virtual {v5}, Landroidx/window/core/layout/WindowSizeClass;->getMinWidthDp()I

    move-result v7

    if-gt v7, p1, :cond_0

    invoke-virtual {v5}, Landroidx/window/core/layout/WindowSizeClass;->getMinWidthDp()I

    move-result v7

    if-le v7, v0, :cond_0

    .line 55
    invoke-virtual {v5}, Landroidx/window/core/layout/WindowSizeClass;->getMinWidthDp()I

    move-result v0

    .line 57
    :cond_0
    nop

    .line 105
    .end local v5    # "bucket":Landroidx/window/core/layout/WindowSizeClass;
    .end local v6    # "$i$a$-forEach-WindowSizeClassSelectors$computeWindowSizeClass$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 106
    :cond_1
    nop

    .line 58
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    const/4 v1, 0x0

    .local v1, "match":Ljava/lang/Object;
    new-instance v2, Landroidx/window/core/layout/WindowSizeClass;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroidx/window/core/layout/WindowSizeClass;-><init>(II)V

    .line 59
    .end local v1    # "match":Ljava/lang/Object;
    .local v2, "match":Ljava/lang/Object;
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 107
    .local v3, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/window/core/layout/WindowSizeClass;

    .local v6, "bucket":Landroidx/window/core/layout/WindowSizeClass;
    const/4 v7, 0x0

    .line 60
    .local v7, "$i$a$-forEach-WindowSizeClassSelectors$computeWindowSizeClass$2":I
    nop

    .line 61
    invoke-virtual {v6}, Landroidx/window/core/layout/WindowSizeClass;->getMinWidthDp()I

    move-result v8

    if-ne v8, v0, :cond_2

    .line 62
    invoke-virtual {v6}, Landroidx/window/core/layout/WindowSizeClass;->getMinHeightDp()I

    move-result v8

    if-gt v8, p2, :cond_2

    .line 63
    invoke-virtual {v2}, Landroidx/window/core/layout/WindowSizeClass;->getMinHeightDp()I

    move-result v8

    invoke-virtual {v6}, Landroidx/window/core/layout/WindowSizeClass;->getMinHeightDp()I

    move-result v9

    if-gt v8, v9, :cond_2

    .line 65
    move-object v2, v6

    .line 67
    :cond_2
    nop

    .line 107
    .end local v6    # "bucket":Landroidx/window/core/layout/WindowSizeClass;
    .end local v7    # "$i$a$-forEach-WindowSizeClassSelectors$computeWindowSizeClass$2":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 108
    :cond_3
    nop

    .line 68
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    return-object v2
.end method

.method public static final computeWindowSizeClassPreferHeight(Ljava/util/Set;II)Landroidx/window/core/layout/WindowSizeClass;
    .locals 10
    .param p0, "$this$computeWindowSizeClassPreferHeight"    # Ljava/util/Set;
    .param p1, "widthDp"    # I
    .param p2, "heightDp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/core/layout/WindowSizeClass;",
            ">;II)",
            "Landroidx/window/core/layout/WindowSizeClass;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "maxHeight":I
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 109
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/window/core/layout/WindowSizeClass;

    .local v5, "bucket":Landroidx/window/core/layout/WindowSizeClass;
    const/4 v6, 0x0

    .line 88
    .local v6, "$i$a$-forEach-WindowSizeClassSelectors$computeWindowSizeClassPreferHeight$1":I
    invoke-virtual {v5}, Landroidx/window/core/layout/WindowSizeClass;->getMinHeightDp()I

    move-result v7

    if-gt v7, p2, :cond_0

    invoke-virtual {v5}, Landroidx/window/core/layout/WindowSizeClass;->getMinHeightDp()I

    move-result v7

    if-le v7, v0, :cond_0

    .line 89
    invoke-virtual {v5}, Landroidx/window/core/layout/WindowSizeClass;->getMinHeightDp()I

    move-result v0

    .line 91
    :cond_0
    nop

    .line 109
    .end local v5    # "bucket":Landroidx/window/core/layout/WindowSizeClass;
    .end local v6    # "$i$a$-forEach-WindowSizeClassSelectors$computeWindowSizeClassPreferHeight$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 110
    :cond_1
    nop

    .line 92
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    const/4 v1, 0x0

    .local v1, "match":Ljava/lang/Object;
    new-instance v2, Landroidx/window/core/layout/WindowSizeClass;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroidx/window/core/layout/WindowSizeClass;-><init>(II)V

    .line 93
    .end local v1    # "match":Ljava/lang/Object;
    .local v2, "match":Ljava/lang/Object;
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 111
    .local v3, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/window/core/layout/WindowSizeClass;

    .local v6, "bucket":Landroidx/window/core/layout/WindowSizeClass;
    const/4 v7, 0x0

    .line 94
    .local v7, "$i$a$-forEach-WindowSizeClassSelectors$computeWindowSizeClassPreferHeight$2":I
    nop

    .line 95
    invoke-virtual {v6}, Landroidx/window/core/layout/WindowSizeClass;->getMinHeightDp()I

    move-result v8

    if-ne v8, v0, :cond_2

    .line 96
    invoke-virtual {v6}, Landroidx/window/core/layout/WindowSizeClass;->getMinWidthDp()I

    move-result v8

    if-gt v8, p1, :cond_2

    .line 97
    invoke-virtual {v2}, Landroidx/window/core/layout/WindowSizeClass;->getMinWidthDp()I

    move-result v8

    invoke-virtual {v6}, Landroidx/window/core/layout/WindowSizeClass;->getMinWidthDp()I

    move-result v9

    if-gt v8, v9, :cond_2

    .line 99
    move-object v2, v6

    .line 101
    :cond_2
    nop

    .line 111
    .end local v6    # "bucket":Landroidx/window/core/layout/WindowSizeClass;
    .end local v7    # "$i$a$-forEach-WindowSizeClassSelectors$computeWindowSizeClassPreferHeight$2":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 112
    :cond_3
    nop

    .line 102
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    return-object v2
.end method
