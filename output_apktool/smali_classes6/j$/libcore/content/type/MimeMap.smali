.class public final Lj$/libcore/content/type/MimeMap;
.super Ljava/lang/Object;
.source "MimeMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/libcore/content/type/MimeMap$Builder;,
        Lj$/libcore/content/type/MimeMap$MemoizingSupplier;
    }
.end annotation


# static fields
.field private static volatile instanceSupplier:Lj$/libcore/content/type/MimeMap$MemoizingSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/libcore/content/type/MimeMap$MemoizingSupplier<",
            "Lj$/libcore/content/type/MimeMap;",
            ">;"
        }
    .end annotation
.end field


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

.field private volatile hashCode:I

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
.method static bridge synthetic -$$Nest$smtoLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lj$/libcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 82
    new-instance v0, Lj$/libcore/content/type/MimeMap$MemoizingSupplier;

    new-instance v1, Lj$/libcore/content/type/MimeMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lj$/libcore/content/type/MimeMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lj$/libcore/content/type/MimeMap$MemoizingSupplier;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lj$/libcore/content/type/MimeMap;->instanceSupplier:Lj$/libcore/content/type/MimeMap$MemoizingSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
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

    .line 93
    .local p1, "mimeToExt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "extToMime":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lj$/libcore/content/type/MimeMap;->hashCode:I

    .line 94
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    .line 95
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    .line 96
    iget-object v0, p0, Lj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lj$/libcore/content/type/MimeMap;->checkValidMimeType(Ljava/lang/String;)V

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lj$/libcore/content/type/MimeMap;->checkValidExtension(Ljava/lang/String;)V

    .line 99
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lj$/libcore/content/type/MimeMap;->checkValidExtension(Ljava/lang/String;)V

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lj$/libcore/content/type/MimeMap;->checkValidMimeType(Ljava/lang/String;)V

    .line 103
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 104
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lj$/libcore/content/type/MimeMap-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/libcore/content/type/MimeMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static builder()Lj$/libcore/content/type/MimeMap$Builder;
    .locals 1

    .line 54
    new-instance v0, Lj$/libcore/content/type/MimeMap$Builder;

    invoke-direct {v0}, Lj$/libcore/content/type/MimeMap$Builder;-><init>()V

    return-object v0
.end method

.method static checkValidExtension(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 452
    invoke-static {p0}, Lj$/libcore/content/type/MimeMap;->isValidMimeTypeOrExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 455
    return-void

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkValidMimeType(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 446
    invoke-static {p0}, Lj$/libcore/content/type/MimeMap;->isValidMimeTypeOrExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 449
    return-void

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MIME type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefault()Lj$/libcore/content/type/MimeMap;
    .locals 1

    .line 115
    sget-object v0, Lj$/libcore/content/type/MimeMap;->instanceSupplier:Lj$/libcore/content/type/MimeMap$MemoizingSupplier;

    invoke-virtual {v0}, Lj$/libcore/content/type/MimeMap$MemoizingSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/libcore/content/type/MimeMap;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/libcore/content/type/MimeMap;

    return-object v0
.end method

.method private static isValidMimeTypeOrExtension(Ljava/lang/String;)Z
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

    .line 437
    if-eqz p0, :cond_0

    .line 438
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 440
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 441
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 442
    invoke-static {p0}, Lj$/libcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 437
    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0()Lj$/libcore/content/type/MimeMap;
    .locals 6

    .line 84
    invoke-static {}, Lj$/libcore/content/type/MimeMap;->builder()Lj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 85
    const-string v1, "application/pdf"

    const-string v2, "pdf"

    invoke-virtual {v0, v1, v2}, Lj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Lj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 86
    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Lj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Lj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 87
    const-string v1, "image/x-ms-bmp"

    const-string v2, "bmp"

    invoke-virtual {v0, v1, v2}, Lj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Lj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "htm"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "html"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 88
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "text/html"

    invoke-virtual {v0, v3, v2}, Lj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/util/List;)Lj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "text"

    aput-object v2, v1, v4

    const-string v2, "txt"

    aput-object v2, v1, v5

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v0, v2, v1}, Lj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/util/List;)Lj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 90
    const-string v1, "text/x-java"

    const-string v2, "java"

    invoke-virtual {v0, v1, v2}, Lj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Lj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lj$/libcore/content/type/MimeMap$Builder;->build()Lj$/libcore/content/type/MimeMap;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method public static setDefaultSupplier(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeMapSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lj$/libcore/content/type/MimeMap;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p0, "mimeMapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Llibcore/content/type/MimeMap;>;"
    new-instance v0, Lj$/libcore/content/type/MimeMap$MemoizingSupplier;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;

    invoke-direct {v0, v1}, Lj$/libcore/content/type/MimeMap$MemoizingSupplier;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lj$/libcore/content/type/MimeMap;->instanceSupplier:Lj$/libcore/content/type/MimeMap$MemoizingSupplier;

    .line 134
    return-void
.end method

.method private static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
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

    .line 235
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lj$/libcore/content/type/MimeMap$Builder;
    .locals 3

    .line 69
    new-instance v0, Lj$/libcore/content/type/MimeMap$Builder;

    iget-object v1, p0, Lj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    iget-object v2, p0, Lj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lj$/libcore/content/type/MimeMap$Builder;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 258
    instance-of v0, p1, Lj$/libcore/content/type/MimeMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 259
    return v1

    .line 261
    :cond_0
    move-object v0, p1

    check-cast v0, Lj$/libcore/content/type/MimeMap;

    .line 262
    .local v0, "that":Lj$/libcore/content/type/MimeMap;
    invoke-virtual {p0}, Lj$/libcore/content/type/MimeMap;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Lj$/libcore/content/type/MimeMap;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 263
    return v1

    .line 265
    :cond_1
    iget-object v2, p0, Lj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    iget-object v3, v0, Lj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    iget-object v3, v0, Lj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public extensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    .line 195
    if-nez p1, :cond_0

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_0
    invoke-static {p1}, Lj$/libcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .line 162
    if-nez p1, :cond_0

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    invoke-static {p1}, Lj$/libcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final hasExtension(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Lj$/libcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Lj$/libcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 246
    iget v0, p0, Lj$/libcore/content/type/MimeMap;->hashCode:I

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iput v0, p0, Lj$/libcore/content/type/MimeMap;->hashCode:I

    .line 249
    :cond_0
    iget v0, p0, Lj$/libcore/content/type/MimeMap;->hashCode:I

    return v0
.end method

.method public mimeTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 274
    iget-object v0, p0, Lj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MimeMap["

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
