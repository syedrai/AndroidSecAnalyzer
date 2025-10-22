.class public final Lj$/libcore/content/type/MimeMap$Builder;
.super Ljava/lang/Object;
.source "MimeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/libcore/content/type/MimeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/libcore/content/type/MimeMap$Builder$Element;
    }
.end annotation


# instance fields
.field private final extToMime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mimeToExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj$/libcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    .line 295
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mimeToExt",
            "extToMime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "mimeToExt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "extToMime":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lj$/libcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    .line 305
    return-void
.end method

.method private static maybePut(Ljava/util/Map;Lj$/libcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyElement"    # Lj$/libcore/content/type/MimeMap$Builder$Element;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "map",
            "keyElement",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lj$/libcore/content/type/MimeMap$Builder$Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 340
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p1, Lj$/libcore/content/type/MimeMap$Builder$Element;->keepExisting:Z

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p1, Lj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 343
    :cond_0
    iget-object v0, p1, Lj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Lj$/libcore/content/type/MimeMap$Builder;
    .locals 1
    .param p1, "mimeSpec"    # Ljava/lang/String;
    .param p2, "extensionSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mimeSpec",
            "extensionSpec"
        }
    .end annotation

    .line 411
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/util/List;)Lj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addMimeMapping(Ljava/lang/String;Ljava/util/List;)Lj$/libcore/content/type/MimeMap$Builder;
    .locals 7
    .param p1, "mimeSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mimeSpec",
            "extensionSpecs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lj$/libcore/content/type/MimeMap$Builder;"
        }
    .end annotation

    .line 391
    .local p2, "extensionSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lj$/libcore/content/type/MimeMap$Builder$Element;->ofMimeSpec(Ljava/lang/String;)Lj$/libcore/content/type/MimeMap$Builder$Element;

    move-result-object v0

    .line 392
    .local v0, "mimeElement":Lj$/libcore/content/type/MimeMap$Builder$Element;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    return-object p0

    .line 395
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lj$/libcore/content/type/MimeMap$Builder$Element;->ofExtensionSpec(Ljava/lang/String;)Lj$/libcore/content/type/MimeMap$Builder$Element;

    move-result-object v1

    .line 396
    .local v1, "firstExtensionElement":Lj$/libcore/content/type/MimeMap$Builder$Element;
    iget-object v2, p0, Lj$/libcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    iget-object v3, v1, Lj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lj$/libcore/content/type/MimeMap$Builder;->maybePut(Ljava/util/Map;Lj$/libcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;

    .line 397
    iget-object v2, p0, Lj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    iget-object v3, v0, Lj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lj$/libcore/content/type/MimeMap$Builder;->maybePut(Ljava/util/Map;Lj$/libcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 399
    .local v3, "spec":Ljava/lang/String;
    invoke-static {v3}, Lj$/libcore/content/type/MimeMap$Builder$Element;->ofExtensionSpec(Ljava/lang/String;)Lj$/libcore/content/type/MimeMap$Builder$Element;

    move-result-object v4

    .line 400
    .local v4, "element":Lj$/libcore/content/type/MimeMap$Builder$Element;
    iget-object v5, p0, Lj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    iget-object v6, v0, Lj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lj$/libcore/content/type/MimeMap$Builder;->maybePut(Ljava/util/Map;Lj$/libcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .end local v3    # "spec":Ljava/lang/String;
    .end local v4    # "element":Lj$/libcore/content/type/MimeMap$Builder$Element;
    goto :goto_0

    .line 402
    :cond_1
    return-object p0
.end method

.method public build()Lj$/libcore/content/type/MimeMap;
    .locals 4

    .line 423
    new-instance v0, Lj$/libcore/content/type/MimeMap;

    iget-object v1, p0, Lj$/libcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    iget-object v2, p0, Lj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj$/libcore/content/type/MimeMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lj$/libcore/content/type/MimeMap-IA;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 432
    iget-object v0, p0, Lj$/libcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MimeMap.Builder["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
