.class public final Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents$Companion;
.super Ljava/lang/Object;
.source "ActivityResultContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1071:1\n1#2:1072\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents$Companion;",
        "",
        "<init>",
        "()V",
        "getClipDataUris",
        "",
        "Landroid/net/Uri;",
        "Landroid/content/Intent;",
        "getClipDataUris$activity_release",
        "activity_release"
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

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClipDataUris$activity_release(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .param p1, "$this$getClipDataUris"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 428
    .local v0, "resultSet":Ljava/util/LinkedHashSet;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1072
    .local v1, "data":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 428
    .local v2, "$i$a$-let-ActivityResultContracts$GetMultipleContents$Companion$getClipDataUris$1":I
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "$i$a$-let-ActivityResultContracts$GetMultipleContents$Companion$getClipDataUris$1":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 430
    .local v1, "clipData":Landroid/content/ClipData;
    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 432
    :cond_1
    if-eqz v1, :cond_3

    .line 433
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 434
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 435
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 436
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 433
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v2, Ljava/util/List;

    return-object v2
.end method
