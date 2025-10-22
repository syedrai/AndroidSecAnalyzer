.class public final Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api26Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;",
        "",
        "<init>",
        "()V",
        "reverse",
        "",
        "animatorSet",
        "Landroid/animation/AnimatorSet;",
        "setCurrentPlayTime",
        "time",
        "",
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
.field public static final INSTANCE:Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;

    invoke-direct {v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;-><init>()V

    sput-object v0, Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;->INSTANCE:Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reverse(Landroid/animation/AnimatorSet;)V
    .locals 1
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;

    const-string v0, "animatorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->reverse()V

    .line 1243
    return-void
.end method

.method public final setCurrentPlayTime(Landroid/animation/AnimatorSet;J)V
    .locals 1
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "time"    # J

    const-string v0, "animatorSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    .line 1247
    return-void
.end method
