.class public final Lcom/google/common/collect/EnumHashBiMap;
.super Lcom/google/common/collect/AbstractBiMap;
.source "EnumHashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractBiMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TK;>;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 82
    iput-object p1, p0, Lcom/google/common/collect/EnumHashBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    .line 83
    return-void
.end method

.method public static create(Ljava/lang/Class;)Lcom/google/common/collect/EnumHashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)",
            "Lcom/google/common/collect/EnumHashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 59
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v0, Lcom/google/common/collect/EnumHashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EnumHashBiMap;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/EnumHashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Lcom/google/common/collect/EnumHashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 74
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/EnumBiMap;->inferKeyTypeOrObjectUnderJ2cl(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/EnumHashBiMap;->create(Ljava/lang/Class;)Lcom/google/common/collect/EnumHashBiMap;

    move-result-object v0

    .line 75
    .local v0, "bimap":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/EnumHashBiMap;->putAll(Ljava/util/Map;)V

    .line 76
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 129
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    .line 135
    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/google/common/collect/EnumHashBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/EnumHashBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    .line 136
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMap(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 137
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 121
    iget-object v0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 122
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 123
    return-void
.end method


# virtual methods
.method checkKey(Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method bridge synthetic checkKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumHashBiMap;->checkKey(Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 46
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 46
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public forcePut(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumHashBiMap;->forcePut(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 46
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 46
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    return-object v0
.end method

.method public put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumHashBiMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "map"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Ljava/util/Set;
    .locals 1

    .line 46
    .local p0, "this":Lcom/google/common/collect/EnumHashBiMap;, "Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
