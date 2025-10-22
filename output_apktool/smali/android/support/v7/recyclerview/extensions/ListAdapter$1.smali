.class Landroid/support/v7/recyclerview/extensions/ListAdapter$1;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/extensions/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$ListListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/recyclerview/extensions/ListAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/recyclerview/extensions/ListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/recyclerview/extensions/ListAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 98
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter$1;, "Landroid/support/v7/recyclerview/extensions/ListAdapter$1;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter$1;->this$0:Landroid/support/v7/recyclerview/extensions/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/ListAdapter$1;, "Landroid/support/v7/recyclerview/extensions/ListAdapter$1;"
    .local p1, "previousList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "currentList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/ListAdapter$1;->this$0:Landroid/support/v7/recyclerview/extensions/ListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/recyclerview/extensions/ListAdapter;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    .line 103
    return-void
.end method
