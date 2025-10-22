.class final Landroid/support/v4/app/FragmentTransaction$Op;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field mCmd:I

.field mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

.field mEnterAnim:I

.field mExitAnim:I

.field mFragment:Landroid/support/v4/app/Fragment;

.field mFromExpandedOp:Z

.field mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

.field mPopEnterAnim:I

.field mPopExitAnim:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method constructor <init>(ILandroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    .line 82
    iput-object p2, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 84
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 85
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 86
    return-void
.end method

.method constructor <init>(ILandroid/support/v4/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    .line 98
    iput-object p2, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 100
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 101
    iput-object p3, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 102
    return-void
.end method

.method constructor <init>(ILandroid/support/v4/app/Fragment;Z)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "fromExpandedOp"    # Z

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    .line 90
    iput-object p2, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 91
    iput-boolean p3, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 92
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 93
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentTransaction$Op;)V
    .locals 1
    .param p1, "op"    # Landroid/support/v4/app/FragmentTransaction$Op;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iget v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    .line 106
    iget-object v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 107
    iget-boolean v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 108
    iget v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 109
    iget v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    .line 110
    iget v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 111
    iget v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    iput v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 112
    iget-object v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 113
    iget-object v0, p1, Landroid/support/v4/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroid/support/v4/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 114
    return-void
.end method
