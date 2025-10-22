.class final Lcom/afwsamples/testdpc/util/flags/Flags$Params;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Params"
.end annotation


# instance fields
.field private final namedParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final ordinalParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mnamedParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->namedParams()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mordinalParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->ordinalParams()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;
    .locals 0

    invoke-static {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->create(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ordinalParams",
            "namedParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;>;)V"
        }
    .end annotation

    .line 253
    .local p1, "ordinalParams":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;>;"
    .local p2, "namedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->ordinalParams:Ljava/util/List;

    .line 255
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->namedParams:Ljava/util/Map;

    .line 256
    return-void
.end method

.method private static create(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Params;"
        }
    .end annotation

    .line 259
    .local p0, "params":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, "ordinalParams":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 262
    .local v1, "namedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 263
    .local v3, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    invoke-interface {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->isOrdinal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 266
    :cond_0
    invoke-interface {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .end local v3    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    :goto_1
    goto :goto_0

    .line 270
    :cond_1
    new-instance v2, Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    invoke-direct {v2, v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object v2
.end method

.method private namedParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;>;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->namedParams:Ljava/util/Map;

    return-object v0
.end method

.method private ordinalParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;>;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->ordinalParams:Ljava/util/List;

    return-object v0
.end method
