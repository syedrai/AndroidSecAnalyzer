.class public abstract Landroid/support/v4/app/FragmentTransaction;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTransaction$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SET_MAX_LIFECYCLE:I = 0xa

.field static final OP_SET_PRIMARY_NAV:I = 0x8

.field static final OP_SHOW:I = 0x5

.field static final OP_UNSET_PRIMARY_NAV:I = 0x9

.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_FRAGMENT_CLOSE:I = 0x2002

.field public static final TRANSIT_FRAGMENT_FADE:I = 0x1003

.field public static final TRANSIT_FRAGMENT_MATCH_ACTIVITY_CLOSE:I = 0x2005

.field public static final TRANSIT_FRAGMENT_MATCH_ACTIVITY_OPEN:I = 0x1004

.field public static final TRANSIT_FRAGMENT_OPEN:I = 0x1001

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_UNSET:I = -0x1


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field private final mClassLoader:Ljava/lang/ClassLoader;

.field mCommitRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mEnterAnim:I

.field mExitAnim:I

.field private final mFragmentFactory:Landroid/support/v4/app/FragmentFactory;

.field mName:Ljava/lang/String;

.field mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/FragmentTransaction$Op;",
            ">;"
        }
    .end annotation
.end field

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mReorderingAllowed:Z

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTransition:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mAllowAddToBackStack:Z

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mReorderingAllowed:Z

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mFragmentFactory:Landroid/support/v4/app/FragmentFactory;

    .line 148
    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mClassLoader:Ljava/lang/ClassLoader;

    .line 149
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentFactory;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "fragmentFactory"    # Landroid/support/v4/app/FragmentFactory;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mAllowAddToBackStack:Z

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mReorderingAllowed:Z

    .line 153
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransaction;->mFragmentFactory:Landroid/support/v4/app/FragmentFactory;

    .line 154
    iput-object p2, p0, Landroid/support/v4/app/FragmentTransaction;->mClassLoader:Ljava/lang/ClassLoader;

    .line 155
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentFactory;Ljava/lang/ClassLoader;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 4
    .param p1, "fragmentFactory"    # Landroid/support/v4/app/FragmentFactory;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;-><init>(Landroid/support/v4/app/FragmentFactory;Ljava/lang/ClassLoader;)V

    .line 160
    iget-object v0, p3, Landroid/support/v4/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 161
    .local v1, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v2, p0, Landroid/support/v4/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/v4/app/FragmentTransaction$Op;

    invoke-direct {v3, v1}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(Landroid/support/v4/app/FragmentTransaction$Op;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v1    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    goto :goto_0

    .line 163
    :cond_0
    iget v0, p3, Landroid/support/v4/app/FragmentTransaction;->mEnterAnim:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction;->mEnterAnim:I

    .line 164
    iget v0, p3, Landroid/support/v4/app/FragmentTransaction;->mExitAnim:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction;->mExitAnim:I

    .line 165
    iget v0, p3, Landroid/support/v4/app/FragmentTransaction;->mPopEnterAnim:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction;->mPopEnterAnim:I

    .line 166
    iget v0, p3, Landroid/support/v4/app/FragmentTransaction;->mPopExitAnim:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction;->mPopExitAnim:I

    .line 167
    iget v0, p3, Landroid/support/v4/app/FragmentTransaction;->mTransition:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction;->mTransition:I

    .line 168
    iget-boolean v0, p3, Landroid/support/v4/app/FragmentTransaction;->mAddToBackStack:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mAddToBackStack:Z

    .line 169
    iget-boolean v0, p3, Landroid/support/v4/app/FragmentTransaction;->mAllowAddToBackStack:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mAllowAddToBackStack:Z

    .line 170
    iget-object v0, p3, Landroid/support/v4/app/FragmentTransaction;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mName:Ljava/lang/String;

    .line 171
    iget v0, p3, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbShortTitleRes:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbShortTitleRes:I

    .line 172
    iget-object v0, p3, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 173
    iget v0, p3, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbTitleRes:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbTitleRes:I

    .line 174
    iget-object v0, p3, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 175
    iget-object v0, p3, Landroid/support/v4/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 177
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v1, p3, Landroid/support/v4/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    :cond_1
    iget-object v0, p3, Landroid/support/v4/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 181
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-object v1, p3, Landroid/support/v4/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    :cond_2
    iget-boolean v0, p3, Landroid/support/v4/app/FragmentTransaction;->mReorderingAllowed:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mReorderingAllowed:Z

    .line 184
    return-void
.end method

.method private createFragment(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .line 196
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mFragmentFactory:Landroid/support/v4/app/FragmentFactory;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mFragmentFactory:Landroid/support/v4/app/FragmentFactory;

    iget-object v1, p0, Landroid/support/v4/app/FragmentTransaction;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 205
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {v0, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 208
    :cond_0
    return-object v0

    .line 201
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The FragmentManager must be attached to itshost to create a Fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Creating a Fragment requires that this FragmentTransaction was built with FragmentManager.beginTransaction()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 240
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 241
    return-object p0
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentTransaction;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 284
    return-object p0
.end method

.method public final add(ILjava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/app/FragmentTransaction;"
        }
    .end annotation

    .line 232
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->createFragment(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final add(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/app/FragmentTransaction;"
        }
    .end annotation

    .line 263
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->createFragment(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 224
    return-object p0
.end method

.method public final add(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .line 304
    iput-object p1, p2, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/support/v4/app/Fragment;->mInDynamicContainer:Z

    .line 306
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final add(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/app/FragmentTransaction;"
        }
    .end annotation

    .line 216
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->createFragment(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method addOp(Landroid/support/v4/app/FragmentTransaction$Op;)V
    .locals 1
    .param p1, "op"    # Landroid/support/v4/app/FragmentTransaction$Op;

    .line 187
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget v0, p0, Landroid/support/v4/app/FragmentTransaction;->mEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 189
    iget v0, p0, Landroid/support/v4/app/FragmentTransaction;->mExitAnim:I

    iput v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    .line 190
    iget v0, p0, Landroid/support/v4/app/FragmentTransaction;->mPopEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 191
    iget v0, p0, Landroid/support/v4/app/FragmentTransaction;->mPopExitAnim:I

    iput v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 192
    return-void
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 5
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .line 668
    invoke-static {}, Landroid/support/v4/app/FragmentTransition;->supportsTransition()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 669
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "transitionName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 674
    iget-object v1, p0, Landroid/support/v4/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 675
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_0

    .line 677
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\' has already been added to the transaction."

    if-nez v1, :cond_2

    .line 680
    iget-object v1, p0, Landroid/support/v4/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 685
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentTransaction;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v1, p0, Landroid/support/v4/app/FragmentTransaction;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 681
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A shared element with the source name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A shared element with the target name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    .end local v0    # "transitionName":Ljava/lang/String;
    :cond_4
    :goto_1
    return-object p0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 724
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mAllowAddToBackStack:Z

    if-eqz v0, :cond_0

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mAddToBackStack:Z

    .line 729
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransaction;->mName:Ljava/lang/String;

    .line 730
    return-object p0

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 484
    new-instance v0, Landroid/support/v4/app/FragmentTransaction$Op;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->addOp(Landroid/support/v4/app/FragmentTransaction$Op;)V

    .line 486
    return-object p0
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract commitNow()V
.end method

.method public abstract commitNowAllowingStateLoss()V
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 468
    new-instance v0, Landroid/support/v4/app/FragmentTransaction$Op;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->addOp(Landroid/support/v4/app/FragmentTransaction$Op;)V

    .line 470
    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .locals 2

    .line 750
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mAddToBackStack:Z

    if-nez v0, :cond_0

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mAllowAddToBackStack:Z

    .line 755
    return-object p0

    .line 751
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 7
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .line 310
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mPreviousWho:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mPreviousWho:Ljava/lang/String;

    invoke-static {p2, v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onFragmentReuse(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 313
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 314
    .local v0, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 315
    .local v1, "modifiers":I
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 316
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 322
    :cond_1
    const-string v2, " now "

    const-string v3, ": was "

    if-eqz p3, :cond_4

    .line 323
    iget-object v4, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 324
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t change tag of fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    :cond_3
    :goto_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 331
    :cond_4
    if-eqz p1, :cond_8

    .line 332
    const/4 v4, -0x1

    if-eq p1, v4, :cond_7

    .line 336
    iget v4, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v4, :cond_6

    iget v4, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v4, p1, :cond_5

    goto :goto_1

    .line 337
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t change container ID of fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 341
    :cond_6
    :goto_1
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    goto :goto_2

    .line 333
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t add fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    :cond_8
    :goto_2
    new-instance v2, Landroid/support/v4/app/FragmentTransaction$Op;

    invoke-direct {v2, p4, p2}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentTransaction;->addOp(Landroid/support/v4/app/FragmentTransaction$Op;)V

    .line 345
    return-void

    .line 317
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 436
    new-instance v0, Landroid/support/v4/app/FragmentTransaction$Op;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->addOp(Landroid/support/v4/app/FragmentTransaction$Op;)V

    .line 438
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    .line 741
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 539
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 421
    new-instance v0, Landroid/support/v4/app/FragmentTransaction$Op;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->addOp(Landroid/support/v4/app/FragmentTransaction$Op;)V

    .line 423
    return-object p0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .line 405
    if-eqz p1, :cond_0

    .line 408
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentTransaction;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 409
    return-object p0

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final replace(ILjava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/app/FragmentTransaction;"
        }
    .end annotation

    .line 352
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/app/FragmentTransaction;"
        }
    .end annotation

    .line 384
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->createFragment(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public runOnCommit(Ljava/lang/Runnable;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 879
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->runOnCommitInternal(ZLjava/lang/Runnable;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method runOnCommitInternal(ZLjava/lang/Runnable;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "allowAddToBackStack"    # Z
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 886
    if-nez p1, :cond_0

    .line 887
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    .line 889
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    .line 892
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    return-object p0
.end method

.method public setAllowOptimization(Z)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "allowOptimization"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 854
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTransaction;->setReorderingAllowed(Z)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 797
    iput p1, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbShortTitleRes:I

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 799
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 811
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbShortTitleRes:I

    .line 812
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 813
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 768
    iput p1, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbTitleRes:I

    .line 769
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 770
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbTitleRes:I

    .line 783
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransaction;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 784
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .line 647
    iput p1, p0, Landroid/support/v4/app/FragmentTransaction;->mEnterAnim:I

    .line 648
    iput p2, p0, Landroid/support/v4/app/FragmentTransaction;->mExitAnim:I

    .line 649
    iput p3, p0, Landroid/support/v4/app/FragmentTransaction;->mPopEnterAnim:I

    .line 650
    iput p4, p0, Landroid/support/v4/app/FragmentTransaction;->mPopExitAnim:I

    .line 651
    return-object p0
.end method

.method public setMaxLifecycle(Landroid/support/v4/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 530
    new-instance v0, Landroid/support/v4/app/FragmentTransaction$Op;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->addOp(Landroid/support/v4/app/FragmentTransaction$Op;)V

    .line 531
    return-object p0
.end method

.method public setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 506
    new-instance v0, Landroid/support/v4/app/FragmentTransaction$Op;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->addOp(Landroid/support/v4/app/FragmentTransaction$Op;)V

    .line 508
    return-object p0
.end method

.method public setReorderingAllowed(Z)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "reorderingAllowed"    # Z

    .line 845
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentTransaction;->mReorderingAllowed:Z

    .line 846
    return-object p0
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    .line 697
    iput p1, p0, Landroid/support/v4/app/FragmentTransaction;->mTransition:I

    .line 698
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "styleRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    return-object p0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 451
    new-instance v0, Landroid/support/v4/app/FragmentTransaction$Op;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->addOp(Landroid/support/v4/app/FragmentTransaction$Op;)V

    .line 453
    return-object p0
.end method
