.class public final Landroid/support/v4/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentTransition.kt\nandroidx/fragment/app/FragmentTransition\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n535#2:117\n520#2,6:118\n126#3:124\n153#3,3:125\n126#3:128\n153#3,3:129\n126#3:132\n153#3,3:133\n1863#4,2:136\n*S KotlinDebug\n*F\n+ 1 FragmentTransition.kt\nandroidx/fragment/app/FragmentTransition\n*L\n45#1:117\n45#1:118,6\n49#1:124\n49#1:125,3\n95#1:128\n95#1:129,3\n96#1:132\n96#1:133,3\n108#1:136,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0002J\"\u0010\u0008\u001a\u0004\u0018\u00010\t*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\n2\u0006\u0010\u000b\u001a\u00020\tH\u0007J,\u0010\u000c\u001a\u00020\r*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0\nH\u0007J<\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000f0\n2\u0006\u0010\u0017\u001a\u00020\u0015H\u0007J\u001e\u0010\u0018\u001a\u00020\r2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0008\u0010\u001d\u001a\u00020\u0015H\u0007R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroid/support/v4/app/FragmentTransition;",
        "",
        "<init>",
        "()V",
        "PLATFORM_IMPL",
        "Landroid/support/v4/app/FragmentTransitionImpl;",
        "SUPPORT_IMPL",
        "resolveSupportImpl",
        "findKeyForValue",
        "",
        "Landroidx/collection/ArrayMap;",
        "value",
        "retainValues",
        "",
        "namedViews",
        "Landroid/view/View;",
        "callSharedElementStartEnd",
        "inFragment",
        "Landroid/support/v4/app/Fragment;",
        "outFragment",
        "isPop",
        "",
        "sharedElements",
        "isStart",
        "setViewVisibility",
        "views",
        "",
        "visibility",
        "",
        "supportsTransition",
        "fragment_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroid/support/v4/app/FragmentTransition;

.field public static final PLATFORM_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

.field public static final SUPPORT_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/FragmentTransition;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentTransition;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentTransition;->INSTANCE:Landroid/support/v4/app/FragmentTransition;

    .line 26
    new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;-><init>()V

    check-cast v0, Landroid/support/v4/app/FragmentTransitionImpl;

    sput-object v0, Landroid/support/v4/app/FragmentTransition;->PLATFORM_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 28
    sget-object v0, Landroid/support/v4/app/FragmentTransition;->INSTANCE:Landroid/support/v4/app/FragmentTransition;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentTransition;->resolveSupportImpl()Landroid/support/v4/app/FragmentTransitionImpl;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/FragmentTransition;->SUPPORT_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V
    .locals 13
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isPop"    # Z
    .param p3, "sharedElements"    # Landroidx/collection/ArrayMap;
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "inFragment"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "outFragment"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "sharedElements"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    move-result-object v1

    .line 89
    :goto_0
    nop

    .line 88
    nop

    .line 94
    .local v1, "sharedElementCallback":Landroidx/core/app/SharedElementCallback;
    if-eqz v1, :cond_4

    .line 95
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    .local v2, "$this$map$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 128
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v6, 0x0

    .line 129
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 130
    .local v8, "item$iv$iv":Ljava/util/Map$Entry;
    move-object v9, v8

    .local v9, "it":Ljava/util/Map$Entry;
    const/4 v10, 0x0

    .line 95
    .local v10, "$i$a$-map-FragmentTransition$callSharedElementStartEnd$views$1":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 130
    .end local v9    # "it":Ljava/util/Map$Entry;
    .end local v10    # "$i$a$-map-FragmentTransition$callSharedElementStartEnd$views$1":I
    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    .end local v8    # "item$iv$iv":Ljava/util/Map$Entry;
    :cond_1
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 128
    nop

    .line 95
    .end local v2    # "$this$map$iv":Ljava/util/Map;
    .end local v3    # "$i$f$map":I
    nop

    .line 96
    .local v4, "views":Ljava/util/List;
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    .restart local v2    # "$this$map$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 132
    .restart local v3    # "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 133
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 134
    .local v9, "item$iv$iv":Ljava/util/Map$Entry;
    move-object v10, v9

    .local v10, "it":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 96
    .local v11, "$i$a$-map-FragmentTransition$callSharedElementStartEnd$names$1":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 134
    .end local v10    # "it":Ljava/util/Map$Entry;
    .end local v11    # "$i$a$-map-FragmentTransition$callSharedElementStartEnd$names$1":I
    invoke-interface {v5, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 135
    .end local v9    # "item$iv$iv":Ljava/util/Map$Entry;
    :cond_2
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$mapTo":I
    check-cast v5, Ljava/util/List;

    .line 132
    nop

    .line 96
    .end local v2    # "$this$map$iv":Ljava/util/Map;
    .end local v3    # "$i$f$map":I
    nop

    .line 97
    .local v5, "names":Ljava/util/List;
    const/4 v2, 0x0

    if-eqz p4, :cond_3

    .line 98
    invoke-virtual {v1, v5, v4, v2}, Landroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 100
    :cond_3
    invoke-virtual {v1, v5, v4, v2}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 103
    .end local v4    # "views":Ljava/util/List;
    .end local v5    # "names":Ljava/util/List;
    :cond_4
    :goto_3
    return-void
.end method

.method public static final findKeyForValue(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "$this$findKeyForValue"    # Landroidx/collection/ArrayMap;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .local v0, "$this$filter$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 117
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .local v2, "destination$iv$iv":Ljava/util/Map;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 118
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 119
    .local v6, "element$iv$iv":Ljava/util/Map$Entry;
    move-object v7, v6

    .local v7, "entry":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 47
    .local v8, "$i$a$-filter-FragmentTransition$findKeyForValue$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 119
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "$i$a$-filter-FragmentTransition$findKeyForValue$1":I
    if-eqz v7, :cond_0

    .line 120
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    .end local v6    # "element$iv$iv":Ljava/util/Map$Entry;
    :cond_1
    nop

    .line 117
    .end local v2    # "destination$iv$iv":Ljava/util/Map;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/util/Map;
    .end local v4    # "$i$f$filterTo":I
    nop

    .line 49
    .end local v0    # "$this$filter$iv":Ljava/util/Map;
    .end local v1    # "$i$f$filter":I
    nop

    .local v2, "$this$map$iv":Ljava/util/Map;
    const/4 v0, 0x0

    .line 124
    .local v0, "$i$f$map":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v2

    .local v3, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 125
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 126
    .local v6, "item$iv$iv":Ljava/util/Map$Entry;
    move-object v7, v6

    .restart local v7    # "entry":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 51
    .local v8, "$i$a$-map-FragmentTransition$findKeyForValue$2":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 126
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "$i$a$-map-FragmentTransition$findKeyForValue$2":I
    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    .end local v6    # "item$iv$iv":Ljava/util/Map$Entry;
    :cond_2
    nop

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v4    # "$i$f$mapTo":I
    check-cast v1, Ljava/util/List;

    .line 124
    nop

    .line 53
    .end local v0    # "$i$f$map":I
    .end local v2    # "$this$map$iv":Ljava/util/Map;
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final resolveSupportImpl()Landroid/support/v4/app/FragmentTransitionImpl;
    .locals 3

    .line 32
    nop

    .line 34
    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<androidx.fragment.app.FragmentTransitionImpl>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    nop

    .line 36
    .local v0, "impl":Ljava/lang/Class;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "impl":Ljava/lang/Class;
    check-cast v1, Landroid/support/v4/app/FragmentTransitionImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 40
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public static final retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 3
    .param p0, "$this$retainValues"    # Landroidx/collection/ArrayMap;
    .param p1, "namedViews"    # Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "namedViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_1

    .line 62
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 61
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static final setViewVisibility(Ljava/util/List;I)V
    .locals 6
    .param p0, "views"    # Ljava/util/List;
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "views"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 136
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    .local v4, "view":Landroid/view/View;
    const/4 v5, 0x0

    .line 108
    .local v5, "$i$a$-forEach-FragmentTransition$setViewVisibility$1":I
    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "$i$a$-forEach-FragmentTransition$setViewVisibility$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 137
    :cond_0
    nop

    .line 109
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public static final supportsTransition()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 113
    sget-object v0, Landroid/support/v4/app/FragmentTransition;->PLATFORM_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    if-nez v0, :cond_1

    sget-object v0, Landroid/support/v4/app/FragmentTransition;->SUPPORT_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

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
