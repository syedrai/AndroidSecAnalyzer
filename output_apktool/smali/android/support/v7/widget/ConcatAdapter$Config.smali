.class public final Landroid/support/v7/widget/ConcatAdapter$Config;
.super Ljava/lang/Object;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ConcatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;,
        Landroid/support/v7/widget/ConcatAdapter$Config$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Landroid/support/v7/widget/ConcatAdapter$Config;


# instance fields
.field public final isolateViewTypes:Z

.field public final stableIdMode:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 381
    new-instance v0, Landroid/support/v7/widget/ConcatAdapter$Config;

    const/4 v1, 0x1

    sget-object v2, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/ConcatAdapter$Config;-><init>(ZLandroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;)V

    sput-object v0, Landroid/support/v7/widget/ConcatAdapter$Config;->DEFAULT:Landroid/support/v7/widget/ConcatAdapter$Config;

    return-void
.end method

.method constructor <init>(ZLandroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;)V
    .locals 0
    .param p1, "isolateViewTypes"    # Z
    .param p2, "stableIdMode"    # Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-boolean p1, p0, Landroid/support/v7/widget/ConcatAdapter$Config;->isolateViewTypes:Z

    .line 385
    iput-object p2, p0, Landroid/support/v7/widget/ConcatAdapter$Config;->stableIdMode:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    .line 386
    return-void
.end method
