.class final Lkotlinx/serialization/internal/ConcurrentHashMapCache;
.super Ljava/lang/Object;
.source "Caching.kt"

# interfaces
.implements Lkotlinx/serialization/internal/SerializerCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/SerializerCache<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ConcurrentHashMapCache\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n72#2,2:207\n1#3:209\n*S KotlinDebug\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ConcurrentHashMapCache\n*L\n133#1:207,2\n133#1:209\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\'\u0012\u001e\u0010\u0006\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00050\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J%\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR,\u0010\u0006\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00050\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\rR*\u0010\u0011\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00100\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/serialization/internal/ConcurrentHashMapCache;",
        "T",
        "Lkotlinx/serialization/internal/SerializerCache;",
        "Lkotlin/Function1;",
        "Lkotlin/reflect/KClass;",
        "Lkotlinx/serialization/KSerializer;",
        "compute",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "",
        "key",
        "get",
        "(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;",
        "Lkotlin/jvm/functions/Function1;",
        "j$/util/concurrent/ConcurrentHashMap",
        "Ljava/lang/Class;",
        "Lkotlinx/serialization/internal/CacheEntry;",
        "cache",
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
.field private final cache:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlinx/serialization/internal/CacheEntry<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final compute:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "compute"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/KClass<",
            "*>;+",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "compute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ConcurrentHashMapCache;->compute:Lkotlin/jvm/functions/Function1;

    .line 130
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/ConcurrentHashMapCache;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    .line 129
    return-void
.end method


# virtual methods
.method public get(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 6
    .param p1, "key"    # Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    nop

    .line 133
    iget-object v0, p0, Lkotlinx/serialization/internal/ConcurrentHashMapCache;->cache:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .local v0, "$this$getOrPut$iv":Ljava/util/concurrent/ConcurrentMap;
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "key$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 207
    .local v2, "$i$f$getOrPut":I
    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 208
    const/4 v3, 0x0

    .line 134
    .local v3, "$i$a$-getOrPut-ConcurrentHashMapCache$get$1":I
    new-instance v4, Lkotlinx/serialization/internal/CacheEntry;

    iget-object v5, p0, Lkotlinx/serialization/internal/ConcurrentHashMapCache;->compute:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-direct {v4, v5}, Lkotlinx/serialization/internal/CacheEntry;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 208
    .end local v3    # "$i$a$-getOrPut-ConcurrentHashMapCache$get$1":I
    nop

    .line 209
    .local v4, "default$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 208
    .local v3, "$i$a$-let-MapsKt__MapsJVMKt$getOrPut$1$iv":I
    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object v3, v5

    .line 207
    .end local v3    # "$i$a$-let-MapsKt__MapsJVMKt$getOrPut$1$iv":I
    .end local v4    # "default$iv":Ljava/lang/Object;
    :cond_1
    :goto_0
    nop

    .end local v0    # "$this$getOrPut$iv":Ljava/util/concurrent/ConcurrentMap;
    .end local v1    # "key$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$getOrPut":I
    check-cast v3, Lkotlinx/serialization/internal/CacheEntry;

    iget-object v0, v3, Lkotlinx/serialization/internal/CacheEntry;->serializer:Lkotlinx/serialization/KSerializer;

    .line 133
    return-object v0
.end method
