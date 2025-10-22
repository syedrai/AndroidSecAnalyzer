.class Landroid/support/v4/app/FragmentStore;
.super Ljava/lang/Object;
.source "FragmentStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field private final mActive:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/FragmentStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

.field private final mSavedState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method addFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 93
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method burpActive()V
    .locals 2

    .line 178
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 181
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/v4/app/FragmentStateManager;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 182
    return-void
.end method

.method containsActiveFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dispatchStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .line 103
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentStateManager;

    .line 104
    .local v1, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 107
    .end local v1    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    const-string v1, "Active Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentStateManager;

    .line 406
    .local v2, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    if-eqz v2, :cond_0

    .line 408
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 409
    .local v3, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 410
    invoke-virtual {v3, v0, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 411
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 412
    :cond_0
    const-string v3, "null"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    .end local v2    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :goto_1
    goto :goto_0

    .line 417
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 418
    .local v1, "count":I
    if-lez v1, :cond_2

    .line 419
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 421
    iget-object v3, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 422
    .restart local v3    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 425
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 429
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentStateManager;

    .line 344
    .local v0, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1

    .line 347
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "id"    # I

    .line 280
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 281
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 282
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_0

    .line 283
    return-object v1

    .line 280
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 287
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentStateManager;

    .line 288
    .local v1, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v1, :cond_2

    .line 289
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 290
    .local v2, "f":Landroid/support/v4/app/Fragment;
    iget v3, v2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v3, p1, :cond_2

    .line 291
    return-object v2

    .line 294
    .end local v1    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    goto :goto_1

    .line 295
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 299
    if-eqz p1, :cond_1

    .line 301
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 302
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 303
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    return-object v1

    .line 301
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 308
    .end local v0    # "i":I
    :cond_1
    if-eqz p1, :cond_3

    .line 310
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentStateManager;

    .line 311
    .local v1, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 313
    .local v2, "f":Landroid/support/v4/app/Fragment;
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    return-object v2

    .line 317
    .end local v1    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    goto :goto_1

    .line 319
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "who"    # Ljava/lang/String;

    .line 331
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentStateManager;

    .line 332
    .local v1, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 334
    .local v2, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_0

    .line 335
    return-object v2

    .line 338
    .end local v1    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method findFragmentIndexInContainer(Landroid/support/v4/app/Fragment;)I
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 368
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 370
    .local v0, "container":Landroid/view/ViewGroup;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 371
    return v1

    .line 373
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 375
    .local v2, "fragmentIndex":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 376
    iget-object v4, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 377
    .local v4, "underFragment":Landroid/support/v4/app/Fragment;
    iget-object v5, v4, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v5, v0, :cond_1

    iget-object v5, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 379
    iget-object v1, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 381
    .local v1, "underIndex":I
    add-int/lit8 v5, v1, 0x1

    return v5

    .line 375
    .end local v1    # "underIndex":I
    .end local v4    # "underFragment":Landroid/support/v4/app/Fragment;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 385
    .end local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 386
    iget-object v4, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 387
    .local v4, "overFragment":Landroid/support/v4/app/Fragment;
    iget-object v5, v4, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v5, v0, :cond_3

    iget-object v5, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 390
    iget-object v1, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    return v1

    .line 385
    .end local v4    # "overFragment":Landroid/support/v4/app/Fragment;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 395
    .end local v3    # "i":I
    :cond_4
    return v1
.end method

.method getActiveFragmentCount()I
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method getActiveFragmentStateManagers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/FragmentStateManager;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "activeFragmentStateManagers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentStateManager;>;"
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentStateManager;

    .line 245
    .local v2, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v2    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_0
    goto :goto_0

    .line 249
    :cond_1
    return-object v0
.end method

.method getActiveFragments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "activeFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentStateManager;

    .line 265
    .local v2, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 268
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v2    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :goto_1
    goto :goto_0

    .line 271
    :cond_1
    return-object v0
.end method

.method getAllSavedState()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    return-object v0
.end method

.method getFragmentStateManager(Ljava/lang/String;)Landroid/support/v4/app/FragmentStateManager;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentStateManager;

    return-object v0
.end method

.method getFragments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 258
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNonConfig()Landroid/support/v4/app/FragmentManagerViewModel;
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    return-object v0
.end method

.method getSavedState(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method makeActive(Landroid/support/v4/app/FragmentStateManager;)V
    .locals 3
    .param p1, "newlyActive"    # Landroid/support/v4/app/FragmentStateManager;

    .line 74
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 75
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentStore;->containsActiveFragment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    if-eqz v1, :cond_2

    .line 80
    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManagerViewModel;->addRetainedFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManagerViewModel;->removeRetainedFragment(Landroid/support/v4/app/Fragment;)V

    .line 85
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 87
    :cond_2
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added fragment to active set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3
    return-void
.end method

.method makeInactive(Landroid/support/v4/app/FragmentStateManager;)V
    .locals 4
    .param p1, "newlyInactive"    # Landroid/support/v4/app/FragmentStateManager;

    .line 149
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 151
    .local v0, "f":Landroid/support/v4/app/Fragment;
    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManagerViewModel;->removeRetainedFragment(Landroid/support/v4/app/Fragment;)V

    .line 155
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 156
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentStateManager;

    .line 162
    .local v1, "removedStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-nez v1, :cond_2

    .line 164
    return-void

    .line 167
    :cond_2
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed fragment from active set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_3
    return-void
.end method

.method moveToExpectedState()V
    .locals 6

    .line 112
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 113
    .local v1, "f":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentStateManager;

    .line 114
    .local v2, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 117
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    .end local v2    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    :cond_0
    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentStateManager;

    .line 122
    .local v1, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v1, :cond_4

    .line 123
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 125
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 126
    .local v2, "f":Landroid/support/v4/app/Fragment;
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 127
    .local v3, "beingRemoved":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 128
    iget-boolean v4, v2, Landroid/support/v4/app/Fragment;->mBeingSaved:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v4/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 133
    iget-object v4, v2, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentStateManager;->saveState()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 135
    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentStore;->makeInactive(Landroid/support/v4/app/FragmentStateManager;)V

    .line 138
    .end local v1    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "beingRemoved":Z
    :cond_4
    goto :goto_1

    .line 139
    :cond_5
    return-void
.end method

.method removeFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 142
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method resetActiveFragments()V
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 55
    return-void
.end method

.method restoreAddedFragments(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "added":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    if-eqz p1, :cond_2

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, "who":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 62
    .local v2, "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    .line 65
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreSaveState: added ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentStore;->addFragment(Landroid/support/v4/app/Fragment;)V

    .line 69
    .end local v1    # "who":Ljava/lang/String;
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 63
    .restart local v1    # "who":Ljava/lang/String;
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No instantiated fragment for ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    .end local v1    # "who":Ljava/lang/String;
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    return-void
.end method

.method restoreSaveState(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "allSavedStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 201
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 202
    return-void
.end method

.method saveActiveFragments()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentStateManager;

    .line 211
    .local v2, "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 214
    .local v3, "f":Landroid/support/v4/app/Fragment;
    iget-object v4, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentStateManager;->saveState()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 215
    iget-object v4, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved state of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v2    # "fragmentStateManager":Landroid/support/v4/app/FragmentStateManager;
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    goto :goto_0

    .line 222
    :cond_1
    return-object v0
.end method

.method saveAddedFragments()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 230
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/support/v4/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 232
    .local v3, "f":Landroid/support/v4/app/Fragment;
    iget-object v4, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding fragment ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    goto :goto_0

    .line 238
    :cond_2
    monitor-exit v0

    return-object v1

    .line 239
    .end local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setNonConfig(Landroid/support/v4/app/FragmentManagerViewModel;)V
    .locals 0
    .param p1, "nonConfig"    # Landroid/support/v4/app/FragmentManagerViewModel;

    .line 46
    iput-object p1, p0, Landroid/support/v4/app/FragmentStore;->mNonConfig:Landroid/support/v4/app/FragmentManagerViewModel;

    .line 47
    return-void
.end method

.method setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 192
    if-eqz p2, :cond_0

    .line 193
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentStore;->mSavedState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method
