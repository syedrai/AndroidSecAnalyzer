.class final Landroid/support/v4/app/BackStackRecordState;
.super Ljava/lang/Object;
.source "BackStackRecordState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/app/BackStackRecordState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mCurrentMaxLifecycleStates:[I

.field final mFragmentWhos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOldMaxLifecycleStates:[I

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 210
    new-instance v0, Landroid/support/v4/app/BackStackRecordState$1;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecordState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackRecordState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mOldMaxLifecycleStates:[I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mCurrentMaxLifecycleStates:[I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecordState;->mTransition:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecordState;->mIndex:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbTitleRes:I

    .line 96
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbShortTitleRes:I

    .line 98
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecordState;->mReorderingAllowed:Z

    .line 102
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/BackStackRecord;)V
    .locals 7
    .param p1, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p1, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 53
    .local v0, "numOps":I
    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    .line 55
    iget-boolean v1, p1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v1, :cond_2

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    .line 60
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mOldMaxLifecycleStates:[I

    .line 61
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mCurrentMaxLifecycleStates:[I

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 64
    iget-object v3, p1, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentTransaction$Op;

    .line 65
    .local v3, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "pos":I
    .local v5, "pos":I
    iget v6, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    aput v6, v4, v1

    .line 66
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    iget-object v4, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .local v4, "pos":I
    iget-boolean v6, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    aput v6, v1, v5

    .line 68
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v6, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    aput v6, v1, v4

    .line 69
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v6, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    aput v6, v1, v5

    .line 70
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v6, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    aput v6, v1, v4

    .line 71
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v6, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    aput v6, v1, v5

    .line 72
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mOldMaxLifecycleStates:[I

    iget-object v5, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v5

    aput v5, v1, v2

    .line 73
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecordState;->mCurrentMaxLifecycleStates:[I

    iget-object v5, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v5

    aput v5, v1, v2

    .line 63
    .end local v3    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    .line 75
    .end local v2    # "opNum":I
    .end local v4    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    iget v2, p1, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iput v2, p0, Landroid/support/v4/app/BackStackRecordState;->mTransition:I

    .line 76
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mName:Ljava/lang/String;

    .line 77
    iget v2, p1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    iput v2, p0, Landroid/support/v4/app/BackStackRecordState;->mIndex:I

    .line 78
    iget v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v2, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbTitleRes:I

    .line 79
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 80
    iget v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v2, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbShortTitleRes:I

    .line 81
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 82
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 83
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 84
    iget-boolean v2, p1, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    iput-boolean v2, p0, Landroid/support/v4/app/BackStackRecordState;->mReorderingAllowed:Z

    .line 85
    return-void

    .line 56
    .end local v1    # "pos":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not on back stack"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fillInBackStackRecord(Landroid/support/v4/app/BackStackRecord;)V
    .locals 6
    .param p1, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 154
    .local v1, "num":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    .line 155
    new-instance v2, Landroid/support/v4/app/FragmentTransaction$Op;

    invoke-direct {v2}, Landroid/support/v4/app/FragmentTransaction$Op;-><init>()V

    .line 156
    .local v2, "op":Landroid/support/v4/app/FragmentTransaction$Op;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "pos":I
    .local v5, "pos":I
    aget v0, v4, v0

    iput v0, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mCmd:I

    .line 157
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiate "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " op #"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " base fragment #"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "FragmentManager"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v4/app/BackStackRecordState;->mOldMaxLifecycleStates:[I

    aget v4, v4, v1

    aget-object v0, v0, v4

    iput-object v0, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 162
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v4/app/BackStackRecordState;->mCurrentMaxLifecycleStates:[I

    aget v4, v4, v1

    aget-object v0, v0, v4

    iput-object v0, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 163
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .local v4, "pos":I
    aget v0, v0, v5

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mFromExpandedOp:Z

    .line 164
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .local v3, "pos":I
    aget v0, v0, v4

    iput v0, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 165
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    aget v0, v0, v3

    iput v0, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    .line 166
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget v0, v0, v4

    iput v0, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 167
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    aget v0, v0, v3

    iput v0, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 168
    iget v0, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    .line 169
    iget v0, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mExitAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    .line 170
    iget v0, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    .line 171
    iget v0, v2, Landroid/support/v4/app/FragmentTransaction$Op;->mPopExitAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    .line 172
    invoke-virtual {p1, v2}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/FragmentTransaction$Op;)V

    .line 173
    nop

    .end local v2    # "op":Landroid/support/v4/app/FragmentTransaction$Op;
    add-int/lit8 v1, v1, 0x1

    .line 174
    move v0, v4

    goto/16 :goto_0

    .line 175
    .end local v4    # "pos":I
    .restart local v0    # "pos":I
    :cond_2
    iget v2, p0, Landroid/support/v4/app/BackStackRecordState;->mTransition:I

    iput v2, p1, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 176
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mName:Ljava/lang/String;

    iput-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 177
    iput-boolean v3, p1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 178
    iget v2, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbTitleRes:I

    iput v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 179
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 180
    iget v2, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbShortTitleRes:I

    iput v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 181
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 182
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 183
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v2, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 184
    iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecordState;->mReorderingAllowed:Z

    iput-boolean v2, p1, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 185
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/BackStackRecord;
    .locals 5
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .line 111
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 112
    .local v0, "bse":Landroid/support/v4/app/BackStackRecord;
    invoke-direct {p0, v0}, Landroid/support/v4/app/BackStackRecordState;->fillInBackStackRecord(Landroid/support/v4/app/BackStackRecord;)V

    .line 113
    iget v1, p0, Landroid/support/v4/app/BackStackRecordState;->mIndex:I

    iput v1, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 114
    const/4 v1, 0x0

    .local v1, "num":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 115
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "fWho":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 117
    iget-object v3, v0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentTransaction$Op;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findActiveFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    .line 114
    .end local v2    # "fWho":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "num":I
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 121
    return-object v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentManager;Ljava/util/Map;)Landroid/support/v4/app/BackStackRecord;
    .locals 7
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/support/v4/app/BackStackRecord;"
        }
    .end annotation

    .line 132
    .local p2, "fragments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/support/v4/app/Fragment;>;"
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 133
    .local v0, "bse":Landroid/support/v4/app/BackStackRecord;
    invoke-direct {p0, v0}, Landroid/support/v4/app/BackStackRecordState;->fillInBackStackRecord(Landroid/support/v4/app/BackStackRecord;)V

    .line 135
    const/4 v1, 0x0

    .local v1, "num":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 136
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    .local v2, "fWho":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 138
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 139
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_0

    .line 140
    iget-object v4, v0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentTransaction$Op;

    iput-object v3, v4, Landroid/support/v4/app/FragmentTransaction$Op;->mFragment:Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 142
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring FragmentTransaction "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/app/BackStackRecordState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed due to missing saved state for Fragment ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    .end local v2    # "fWho":Ljava/lang/String;
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "num":I
    :cond_2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 194
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mOps:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 195
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 196
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mOldMaxLifecycleStates:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 197
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mCurrentMaxLifecycleStates:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 198
    iget v0, p0, Landroid/support/v4/app/BackStackRecordState;->mTransition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget v0, p0, Landroid/support/v4/app/BackStackRecordState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 203
    iget v0, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 205
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 206
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecordState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 207
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecordState;->mReorderingAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    return-void
.end method
