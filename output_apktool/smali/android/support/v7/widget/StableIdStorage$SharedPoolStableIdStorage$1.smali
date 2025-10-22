.class Landroid/support/v7/widget/StableIdStorage$SharedPoolStableIdStorage$1;
.super Ljava/lang/Object;
.source "StableIdStorage.java"

# interfaces
.implements Landroid/support/v7/widget/StableIdStorage$StableIdLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StableIdStorage$SharedPoolStableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/StableIdStorage$SharedPoolStableIdStorage;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StableIdStorage$SharedPoolStableIdStorage;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/StableIdStorage$SharedPoolStableIdStorage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Landroid/support/v7/widget/StableIdStorage$SharedPoolStableIdStorage$1;->this$0:Landroid/support/v7/widget/StableIdStorage$SharedPoolStableIdStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localToGlobal(J)J
    .locals 0
    .param p1, "localId"    # J

    .line 62
    return-wide p1
.end method
