.class Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;
.super Ljava/lang/Object;
.source "StableIdStorage.java"

# interfaces
.implements Landroid/support/v7/widget/StableIdStorage$StableIdLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrapperStableIdLookup"
.end annotation


# instance fields
.field private final mLocalToGlobalLookup:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->this$0:Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->mLocalToGlobalLookup:Landroidx/collection/LongSparseArray;

    return-void
.end method


# virtual methods
.method public localToGlobal(J)J
    .locals 3
    .param p1, "localId"    # J

    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->mLocalToGlobalLookup:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 95
    .local v0, "globalId":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 96
    iget-object v1, p0, Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->this$0:Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage;

    invoke-virtual {v1}, Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage;->obtainId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 97
    iget-object v1, p0, Landroid/support/v7/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;->mLocalToGlobalLookup:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method
