.class final Lkotlinx/serialization/internal/ParametrizedCacheEntry;
.super Ljava/lang/Object;
.source "Caching.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ParametrizedCacheEntry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n1549#2:207\n1620#2,3:208\n72#3,2:211\n1#4:213\n1#4:214\n*S KotlinDebug\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ParametrizedCacheEntry\n*L\n199#1:207\n199#1:208,3\n200#1:211,2\n200#1:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004JK\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t0\u000b2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0014\u0010\n\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t0\u0008H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR4\u0010\u0011\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u0005\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t0\u000b0\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u0012\n\u0005\u0008\u009920\u0001\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/serialization/internal/ParametrizedCacheEntry;",
        "T",
        "",
        "<init>",
        "()V",
        "",
        "Lkotlin/reflect/KType;",
        "types",
        "Lkotlin/Function0;",
        "Lkotlinx/serialization/KSerializer;",
        "producer",
        "Lkotlin/Result;",
        "computeIfAbsent-gIAlu-s",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "computeIfAbsent",
        "j$/util/concurrent/ConcurrentHashMap",
        "Lkotlinx/serialization/internal/KTypeWrapper;",
        "serializers",
        "Lj$/util/concurrent/ConcurrentHashMap;",
        "kotlinx-serialization-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final serializers:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/List<",
            "Lkotlinx/serialization/internal/KTypeWrapper;",
            ">;",
            "Lkotlin/Result<",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/ParametrizedCacheEntry;->serializers:Lj$/util/concurrent/ConcurrentHashMap;

    .line 196
    return-void
.end method

.method public static final synthetic access$getSerializers$p(Lkotlinx/serialization/internal/ParametrizedCacheEntry;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "$this"    # Lkotlinx/serialization/internal/ParametrizedCacheEntry;

    .line 196
    iget-object v0, p0, Lkotlinx/serialization/internal/ParametrizedCacheEntry;->serializers:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public final computeIfAbsent-gIAlu-s(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 11
    .param p1, "types"    # Ljava/util/List;
    .param p2, "producer"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string/jumbo v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 199
    .local v0, "$i$f$computeIfAbsent-gIAlu-s":I
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 207
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 208
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 209
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/reflect/KType;

    .local v8, "it":Lkotlin/reflect/KType;
    const/4 v9, 0x0

    .line 199
    .local v9, "$i$a$-map-ParametrizedCacheEntry$computeIfAbsent$wrappedTypes$1":I
    new-instance v10, Lkotlinx/serialization/internal/KTypeWrapper;

    invoke-direct {v10, v8}, Lkotlinx/serialization/internal/KTypeWrapper;-><init>(Lkotlin/reflect/KType;)V

    .line 209
    .end local v8    # "it":Lkotlin/reflect/KType;
    .end local v9    # "$i$a$-map-ParametrizedCacheEntry$computeIfAbsent$wrappedTypes$1":I
    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 207
    nop

    .line 199
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    nop

    .line 200
    .local v3, "wrappedTypes":Ljava/util/List;
    invoke-static {p0}, Lkotlinx/serialization/internal/ParametrizedCacheEntry;->access$getSerializers$p(Lkotlinx/serialization/internal/ParametrizedCacheEntry;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    .local v1, "$this$getOrPut$iv":Ljava/util/concurrent/ConcurrentMap;
    const/4 v2, 0x0

    .line 211
    .local v2, "$i$f$getOrPut":I
    invoke-interface {v1, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 212
    const/4 v4, 0x0

    .line 201
    .local v4, "$i$a$-getOrPut-ParametrizedCacheEntry$computeIfAbsent$1":I
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 213
    const/4 v5, 0x0

    .line 201
    .local v5, "$i$a$-runCatching-ParametrizedCacheEntry$computeIfAbsent$1$1":I
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/KSerializer;

    .end local v5    # "$i$a$-runCatching-ParametrizedCacheEntry$computeIfAbsent$1$1":I
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    invoke-static {v5}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v5

    .line 212
    .end local v4    # "$i$a$-getOrPut-ParametrizedCacheEntry$computeIfAbsent$1":I
    nop

    .line 214
    .local v5, "default$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 212
    .local v4, "$i$a$-let-MapsKt__MapsJVMKt$getOrPut$1$iv":I
    invoke-interface {v1, v3, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v4, v5

    goto :goto_2

    :cond_1
    move-object v4, v6

    .line 211
    .end local v4    # "$i$a$-let-MapsKt__MapsJVMKt$getOrPut$1$iv":I
    .end local v5    # "default$iv":Ljava/lang/Object;
    :cond_2
    :goto_2
    nop

    .line 200
    .end local v1    # "$this$getOrPut$iv":Ljava/util/concurrent/ConcurrentMap;
    .end local v2    # "$i$f$getOrPut":I
    const-string v1, "getOrPut(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lkotlin/Result;

    invoke-virtual {v4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
