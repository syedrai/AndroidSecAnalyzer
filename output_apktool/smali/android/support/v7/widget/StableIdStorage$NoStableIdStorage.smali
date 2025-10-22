.class public Landroid/support/v7/widget/StableIdStorage$NoStableIdStorage;
.super Ljava/lang/Object;
.source "StableIdStorage.java"

# interfaces
.implements Landroid/support/v7/widget/StableIdStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoStableIdStorage"
.end annotation


# instance fields
.field private final mNoIdLookup:Landroid/support/v7/widget/StableIdStorage$StableIdLookup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/support/v7/widget/StableIdStorage$NoStableIdStorage$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/StableIdStorage$NoStableIdStorage$1;-><init>(Landroid/support/v7/widget/StableIdStorage$NoStableIdStorage;)V

    iput-object v0, p0, Landroid/support/v7/widget/StableIdStorage$NoStableIdStorage;->mNoIdLookup:Landroid/support/v7/widget/StableIdStorage$StableIdLookup;

    return-void
.end method


# virtual methods
.method public createStableIdLookup()Landroid/support/v7/widget/StableIdStorage$StableIdLookup;
    .locals 1

    .line 51
    iget-object v0, p0, Landroid/support/v7/widget/StableIdStorage$NoStableIdStorage;->mNoIdLookup:Landroid/support/v7/widget/StableIdStorage$StableIdLookup;

    return-object v0
.end method
