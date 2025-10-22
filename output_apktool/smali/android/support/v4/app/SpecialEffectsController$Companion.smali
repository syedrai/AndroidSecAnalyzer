.class public final Landroid/support/v4/app/SpecialEffectsController$Companion;
.super Ljava/lang/Object;
.source "SpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroid/support/v4/app/SpecialEffectsController$Companion;",
        "",
        "<init>",
        "()V",
        "getOrCreateController",
        "Landroid/support/v4/app/SpecialEffectsController;",
        "container",
        "Landroid/view/ViewGroup;",
        "fragmentManager",
        "Landroid/support/v4/app/FragmentManager;",
        "factory",
        "Landroid/support/v4/app/SpecialEffectsControllerFactory;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/SpecialEffectsController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/SpecialEffectsController;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroid/support/v4/app/SpecialEffectsControllerFactory;

    move-result-object v0

    const-string v1, "getSpecialEffectsControllerFactory(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    .local v0, "factory":Landroid/support/v4/app/SpecialEffectsControllerFactory;
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/SpecialEffectsController$Companion;->getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/SpecialEffectsControllerFactory;)Landroid/support/v4/app/SpecialEffectsController;

    move-result-object v1

    return-object v1
.end method

.method public final getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/SpecialEffectsControllerFactory;)Landroid/support/v4/app/SpecialEffectsController;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "factory"    # Landroid/support/v4/app/SpecialEffectsControllerFactory;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    sget v0, Landroid/support/fragment/R$id;->special_effects_controller_view_tag:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 858
    .local v0, "controller":Ljava/lang/Object;
    instance-of v1, v0, Landroid/support/v4/app/SpecialEffectsController;

    if-eqz v1, :cond_0

    .line 859
    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/SpecialEffectsController;

    return-object v1

    .line 862
    :cond_0
    invoke-interface {p2, p1}, Landroid/support/v4/app/SpecialEffectsControllerFactory;->createController(Landroid/view/ViewGroup;)Landroid/support/v4/app/SpecialEffectsController;

    move-result-object v1

    const-string v2, "createController(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    .local v1, "newController":Landroid/support/v4/app/SpecialEffectsController;
    sget v2, Landroid/support/fragment/R$id;->special_effects_controller_view_tag:I

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 864
    return-object v1
.end method
