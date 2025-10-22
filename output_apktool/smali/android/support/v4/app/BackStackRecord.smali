.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Landroid/support/v4/app/FragmentManager$OpGenerator;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mBeingSaved:Z

.field mCommitted:Z

.field mIndex:I

.field final mManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>(Landroid/support/v4/app/BackStackRecord;)V
    .locals 2
    .param p1, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .line 147
    iget-object v0, p1, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragmentFactory()Landroid/support/v4/app/FragmentFactory;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getHost()Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p1, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getHost()Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    .line 149
    :cond_0
    const/4 v1, 0x0

    .line 147
    :goto_0
    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;-><init>(Landroid/support/v4/app/FragmentFactory;Ljava/lang/ClassLoader;Landroid/support/v4/app/FragmentTransaction;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mBeingSaved:Z

    .line 150
    iget-object v0, p1, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    .line 151
    iget-boolean v0, p1, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 152
    iget v0, p1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 153
    iget-boolean v0, p1, Landroid/support/v4/app/BackStackRecord;->mBeingSaved:Z

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mBeingSaved:Z

    .line 154
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;

    .line 140
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getFragmentFactory()Landroid/support/v4/app/FragmentFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getHost()Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getHost()Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    .line 142
    :cond_0
    const/4 v1, 0x0

    .line 140
    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentTransaction;-><init>(Landroid/support/v4/app/FragmentFactory;Ljava/lang/ClassLoader;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mBeingSaved:Z

    .line 143
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    .line 144
    return-void
.end method


# virtual methods
.method bumpBackStackNesting(I)V
    .locals 7
    .param p1, "amt"    # I

    .line 269
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 276
    .local v1, "numOps":I
    const/4 v3, 0x0

    .local v3, "opNum":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 277
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 278
    .local v4, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v5, v4, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2

    .line 279
    iget-object v5, v4, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    iget v6, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v6, p1

    iput v6, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 280
    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bump nesting of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v4    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    .end local v3    # "opNum":I
    :cond_3
    return-void
.end method

.method collapseOps()V
    .locals 6

    .line 613
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "opNum":I
    :goto_0
    if-ltz v0, :cond_4

    .line 614
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 615
    .local v1, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-boolean v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    if-nez v2, :cond_0

    .line 616
    goto :goto_2

    .line 618
    :cond_0
    iget v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 621
    iput-boolean v4, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 623
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 624
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 629
    :cond_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 631
    .local v2, "containerId":I
    const/4 v3, 0x2

    iput v3, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    .line 632
    iput-boolean v4, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 634
    add-int/lit8 v3, v0, -0x1

    .local v3, "replaceOpNum":I
    :goto_1
    if-ltz v3, :cond_3

    .line 635
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 636
    .local v4, "potentialReplaceOp":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-boolean v5, v4, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v5, v2, :cond_2

    .line 638
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 639
    add-int/lit8 v0, v0, -0x1

    .line 634
    .end local v4    # "potentialReplaceOp":Landroid/support/v4/app/FragmentTransaction$Op;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 613
    .end local v1    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    .end local v2    # "containerId":I
    .end local v3    # "replaceOpNum":I
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 644
    .end local v0    # "opNum":I
    :cond_4
    return-void
.end method

.method public commit()I
    .locals 2

    .line 299
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/BackStackRecord;->commitInternal(ZZ)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(ZZ)I

    move-result v0

    return v0
.end method

.method commitInternal(ZZ)I
    .locals 3
    .param p1, "allowStateLoss"    # Z
    .param p2, "commitAction"    # Z

    .line 320
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    if-nez v0, :cond_3

    .line 321
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Landroid/support/v4/app/LogWriter;

    invoke-direct {v0, v1}, Landroid/support/v4/app/LogWriter;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "logw":Landroid/support/v4/app/LogWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 325
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "  "

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 326
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 328
    .end local v0    # "logw":Landroid/support/v4/app/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 329
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->allocBackStackIndex()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 334
    :goto_0
    if-eqz p2, :cond_2

    .line 335
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/FragmentManager;->enqueueAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V

    .line 337
    :cond_2
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v0

    .line 320
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public commitNow()V
    .locals 2

    .line 309
    invoke-virtual {p0}, Landroid/support/v4/app/BackStackRecord;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    .line 310
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/FragmentManager;->execSingleAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V

    .line 311
    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .locals 2

    .line 315
    invoke-virtual {p0}, Landroid/support/v4/app/BackStackRecord;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    .line 316
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/FragmentManager;->execSingleAction(Landroid/support/v4/app/FragmentManager$OpGenerator;Z)V

    .line 317
    return-void
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 230
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentTransaction;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 195
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 196
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 61
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .line 64
    if-eqz p3, :cond_8

    .line 65
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 67
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 68
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    if-eqz v0, :cond_2

    .line 73
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    :cond_2
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v0, :cond_4

    .line 79
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    :cond_4
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 85
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 90
    :cond_6
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 91
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 98
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 99
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 101
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_0
    if-ge v1, v0, :cond_d

    .line 102
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 104
    .local v2, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget v3, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v3, :pswitch_data_0

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 115
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_0
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 114
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string v3, "UNSET_PRIMARY_NAV"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 113
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string v3, "SET_PRIMARY_NAV"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 112
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string v3, "ATTACH"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 111
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string v3, "DETACH"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 110
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string v3, "SHOW"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 109
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string v3, "HIDE"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 108
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string v3, "REMOVE"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 107
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_8
    const-string v3, "REPLACE"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 106
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_9
    const-string v3, "ADD"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 105
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_a
    const-string v3, "NULL"

    .line 118
    .restart local v3    # "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 119
    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 121
    if-eqz p3, :cond_c

    .line 122
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    if-nez v4, :cond_9

    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    if-eqz v4, :cond_a

    .line 123
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "enterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    const-string v4, " exitAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    :cond_a
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    if-nez v4, :cond_b

    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    if-eqz v4, :cond_c

    .line 129
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "popEnterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    const-string v4, " popExitAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .end local v2    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    .end local v3    # "cmdStr":Ljava/lang/String;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 137
    .end local v0    # "numOps":I
    .end local v1    # "opNum":I
    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method executeOps()V
    .locals 9

    .line 368
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 369
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 370
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 371
    .local v2, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v3, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 372
    .local v3, "f":Landroid/support/v4/app/Fragment;
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 373
    iget-boolean v5, p0, Landroid/support/v4/app/BackStackRecord;->mBeingSaved:Z

    iput-boolean v5, v3, Landroid/support/v4/app/Fragment;->mBeingSaved:Z

    .line 374
    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setPopDirection(Z)V

    .line 375
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-virtual {v3, v5}, Landroid/support/v4/app/Fragment;->setNextTransition(I)V

    .line 376
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v6}, Landroid/support/v4/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 378
    :cond_0
    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v5, :pswitch_data_0

    .line 416
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 413
    :pswitch_1
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    iget-object v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/app/FragmentManager;->setMaxLifecycle(Landroid/support/v4/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 414
    goto/16 :goto_1

    .line 410
    :pswitch_2
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)V

    .line 411
    goto/16 :goto_1

    .line 407
    :pswitch_3
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)V

    .line 408
    goto/16 :goto_1

    .line 402
    :pswitch_4
    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v8, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 403
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/app/FragmentManager;->setExitAnimationOrder(Landroid/support/v4/app/Fragment;Z)V

    .line 404
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->attachFragment(Landroid/support/v4/app/Fragment;)V

    .line 405
    goto :goto_1

    .line 398
    :pswitch_5
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 399
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->detachFragment(Landroid/support/v4/app/Fragment;)V

    .line 400
    goto :goto_1

    .line 393
    :pswitch_6
    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v8, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 394
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/app/FragmentManager;->setExitAnimationOrder(Landroid/support/v4/app/Fragment;Z)V

    .line 395
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 396
    goto :goto_1

    .line 389
    :pswitch_7
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 390
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->hideFragment(Landroid/support/v4/app/Fragment;)V

    .line 391
    goto :goto_1

    .line 385
    :pswitch_8
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 386
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->removeFragment(Landroid/support/v4/app/Fragment;)V

    .line 387
    goto :goto_1

    .line 380
    :pswitch_9
    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v8, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 381
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/app/FragmentManager;->setExitAnimationOrder(Landroid/support/v4/app/Fragment;Z)V

    .line 382
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->addFragment(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentStateManager;

    .line 383
    nop

    .line 369
    .end local v2    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 419
    .end local v1    # "opNum":I
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method executePopOps()V
    .locals 8

    .line 425
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "opNum":I
    :goto_0
    if-ltz v0, :cond_1

    .line 426
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 427
    .local v2, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v3, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 428
    .local v3, "f":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_0

    .line 429
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mBeingSaved:Z

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mBeingSaved:Z

    .line 430
    invoke-virtual {v3, v1}, Landroid/support/v4/app/Fragment;->setPopDirection(Z)V

    .line 431
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->reverseTransit(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->setNextTransition(I)V

    .line 433
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 435
    :cond_0
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v4, :pswitch_data_0

    .line 473
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :pswitch_1
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    iget-object v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/app/FragmentManager;->setMaxLifecycle(Landroid/support/v4/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 471
    goto/16 :goto_1

    .line 467
    :pswitch_2
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)V

    .line 468
    goto/16 :goto_1

    .line 464
    :pswitch_3
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)V

    .line 465
    goto/16 :goto_1

    .line 459
    :pswitch_4
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 460
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3, v1}, Landroid/support/v4/app/FragmentManager;->setExitAnimationOrder(Landroid/support/v4/app/Fragment;Z)V

    .line 461
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->detachFragment(Landroid/support/v4/app/Fragment;)V

    .line 462
    goto :goto_1

    .line 455
    :pswitch_5
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 456
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->attachFragment(Landroid/support/v4/app/Fragment;)V

    .line 457
    goto :goto_1

    .line 450
    :pswitch_6
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 451
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3, v1}, Landroid/support/v4/app/FragmentManager;->setExitAnimationOrder(Landroid/support/v4/app/Fragment;Z)V

    .line 452
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->hideFragment(Landroid/support/v4/app/Fragment;)V

    .line 453
    goto :goto_1

    .line 446
    :pswitch_7
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 447
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 448
    goto :goto_1

    .line 442
    :pswitch_8
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 443
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->addFragment(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentStateManager;

    .line 444
    goto :goto_1

    .line 437
    :pswitch_9
    iget v4, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iget v5, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iget v6, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iget v7, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/Fragment;->setAnimations(IIII)V

    .line 438
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3, v1}, Landroid/support/v4/app/FragmentManager;->setExitAnimationOrder(Landroid/support/v4/app/Fragment;Z)V

    .line 439
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->removeFragment(Landroid/support/v4/app/Fragment;)V

    .line 440
    nop

    .line 425
    .end local v2    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    .end local v3    # "f":Landroid/support/v4/app/Fragment;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 476
    .end local v0    # "opNum":I
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method expandOps(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 11
    .param p2, "oldPrimaryNav"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 502
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v0, 0x0

    .local v0, "opNum":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 503
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 504
    .local v1, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    const/16 v3, 0x9

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 560
    :pswitch_1
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v5, Landroid/support/v4/app/FragmentTransaction$Op;

    invoke-direct {v5, v3, p2, v4}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;Z)V

    invoke-virtual {v2, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 561
    iput-boolean v4, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 562
    add-int/lit8 v0, v0, 0x1

    .line 564
    iget-object p2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    goto/16 :goto_4

    .line 511
    :pswitch_2
    iget-object v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 512
    iget-object v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    if-ne v2, p2, :cond_5

    .line 513
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v5, Landroid/support/v4/app/FragmentTransaction$Op;

    iget-object v6, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v5, v3, v6}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 514
    add-int/lit8 v0, v0, 0x1

    .line 515
    const/4 p2, 0x0

    goto :goto_4

    .line 520
    :pswitch_3
    iget-object v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 521
    .local v2, "f":Landroid/support/v4/app/Fragment;
    iget v5, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 522
    .local v5, "containerId":I
    const/4 v6, 0x0

    .line 523
    .local v6, "alreadyAdded":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_3

    .line 524
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 525
    .local v8, "old":Landroid/support/v4/app/Fragment;
    iget v9, v8, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v9, v5, :cond_2

    .line 526
    if-ne v8, v2, :cond_0

    .line 527
    const/4 v6, 0x1

    goto :goto_2

    .line 531
    :cond_0
    if-ne v8, p2, :cond_1

    .line 532
    iget-object v9, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v10, Landroid/support/v4/app/FragmentTransaction$Op;

    invoke-direct {v10, v3, v8, v4}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;Z)V

    invoke-virtual {v9, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 533
    add-int/lit8 v0, v0, 0x1

    .line 534
    const/4 p2, 0x0

    .line 536
    :cond_1
    new-instance v9, Landroid/support/v4/app/FragmentTransaction$Op;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v8, v4}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;Z)V

    .line 537
    .local v9, "removeOp":Landroid/support/v4/app/FragmentTransaction$Op;
    iget v10, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iput v10, v9, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 538
    iget v10, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iput v10, v9, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 539
    iget v10, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iput v10, v9, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    .line 540
    iget v10, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    iput v10, v9, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 541
    iget-object v10, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v10, v0, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 542
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 543
    add-int/2addr v0, v4

    .line 523
    .end local v8    # "old":Landroid/support/v4/app/Fragment;
    .end local v9    # "removeOp":Landroid/support/v4/app/FragmentTransaction$Op;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 547
    .end local v7    # "i":I
    :cond_3
    if-eqz v6, :cond_4

    .line 548
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 549
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 551
    :cond_4
    iput v4, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    .line 552
    iput-boolean v4, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 553
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v5    # "containerId":I
    .end local v6    # "alreadyAdded":Z
    :goto_3
    goto :goto_4

    .line 507
    :pswitch_4
    iget-object v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    nop

    .line 502
    .end local v1    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    :cond_5
    :goto_4
    add-int/2addr v0, v4

    goto/16 :goto_0

    .line 569
    .end local v0    # "opNum":I
    :cond_6
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
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

    .line 352
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V

    .line 361
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 186
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getHost()Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .line 171
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 177
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getHost()Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .line 165
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 159
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 210
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot hide Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 653
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 200
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public runOnCommitRunnables()V
    .locals 2

    .line 289
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 295
    :cond_1
    return-void
.end method

.method public setMaxLifecycle(Landroid/support/v4/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 252
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    if-ne v0, v1, :cond_3

    .line 256
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    const-string v1, "Cannot set maximum Lifecycle to "

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v2, -0x1

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after the Fragment has been created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    :goto_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p2, v0, :cond_2

    .line 265
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->setMaxLifecycle(Landroid/support/v4/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    .line 261
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 240
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 220
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot show Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    .line 48
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 52
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p2, "oldPrimaryNav"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 583
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "opNum":I
    :goto_0
    if-ltz v0, :cond_0

    .line 584
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 585
    .local v1, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 601
    :pswitch_1
    iget-object v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    iput-object v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_1

    .line 595
    :pswitch_2
    iget-object p2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 596
    goto :goto_1

    .line 598
    :pswitch_3
    const/4 p2, 0x0

    .line 599
    goto :goto_1

    .line 592
    :pswitch_4
    iget-object v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    goto :goto_1

    .line 588
    :pswitch_5
    iget-object v2, v1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 589
    nop

    .line 583
    .end local v1    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 605
    .end local v0    # "opNum":I
    :cond_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
