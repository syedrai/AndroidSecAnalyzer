.class Landroid/support/v4/app/FragmentManager$PrepareBackStackTransitionState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrepareBackStackTransitionState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3823
    iput-object p1, p0, Landroid/support/v4/app/FragmentManager$PrepareBackStackTransitionState;->this$0:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 3828
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager$PrepareBackStackTransitionState;->this$0:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->prepareBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 3830
    .local v0, "result":Z
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager$PrepareBackStackTransitionState;->this$0:Landroid/support/v4/app/FragmentManager;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3831
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 3832
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3833
    .local v1, "isPop":Z
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3835
    .local v2, "fragments":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/BackStackRecord;

    .line 3836
    .local v4, "record":Landroid/support/v4/app/BackStackRecord;
    iget-object v5, p0, Landroid/support/v4/app/FragmentManager$PrepareBackStackTransitionState;->this$0:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/FragmentManager;->fragmentsFromRecord(Landroid/support/v4/app/BackStackRecord;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3837
    .end local v4    # "record":Landroid/support/v4/app/BackStackRecord;
    goto :goto_0

    .line 3839
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManager$PrepareBackStackTransitionState;->this$0:Landroid/support/v4/app/FragmentManager;

    iget-object v3, v3, Landroid/support/v4/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 3841
    .local v4, "listener":Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 3842
    .local v6, "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v4, v6, v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChangeStarted(Landroid/support/v4/app/Fragment;Z)V

    .line 3843
    .end local v6    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_2

    .line 3844
    .end local v4    # "listener":Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    :cond_1
    goto :goto_1

    .line 3847
    .end local v1    # "isPop":Z
    .end local v2    # "fragments":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/v4/app/Fragment;>;"
    :cond_2
    return v0
.end method
