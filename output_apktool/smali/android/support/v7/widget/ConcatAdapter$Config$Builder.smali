.class public final Landroid/support/v7/widget/ConcatAdapter$Config$Builder;
.super Ljava/lang/Object;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ConcatAdapter$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIsolateViewTypes:Z

.field private mStableIdMode:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    sget-object v0, Landroid/support/v7/widget/ConcatAdapter$Config;->DEFAULT:Landroid/support/v7/widget/ConcatAdapter$Config;

    iget-boolean v0, v0, Landroid/support/v7/widget/ConcatAdapter$Config;->isolateViewTypes:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    .line 431
    sget-object v0, Landroid/support/v7/widget/ConcatAdapter$Config;->DEFAULT:Landroid/support/v7/widget/ConcatAdapter$Config;

    iget-object v0, v0, Landroid/support/v7/widget/ConcatAdapter$Config;->stableIdMode:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    iput-object v0, p0, Landroid/support/v7/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v7/widget/ConcatAdapter$Config;
    .locals 3

    .line 470
    new-instance v0, Landroid/support/v7/widget/ConcatAdapter$Config;

    iget-boolean v1, p0, Landroid/support/v7/widget/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    iget-object v2, p0, Landroid/support/v7/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/ConcatAdapter$Config;-><init>(ZLandroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;)V

    return-object v0
.end method

.method public setIsolateViewTypes(Z)Landroid/support/v7/widget/ConcatAdapter$Config$Builder;
    .locals 0
    .param p1, "isolateViewTypes"    # Z

    .line 446
    iput-boolean p1, p0, Landroid/support/v7/widget/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    .line 447
    return-object p0
.end method

.method public setStableIdMode(Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;)Landroid/support/v7/widget/ConcatAdapter$Config$Builder;
    .locals 0
    .param p1, "stableIdMode"    # Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    .line 462
    iput-object p1, p0, Landroid/support/v7/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    .line 463
    return-object p0
.end method
