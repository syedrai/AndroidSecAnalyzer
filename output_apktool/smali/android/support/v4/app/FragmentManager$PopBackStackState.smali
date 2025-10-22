.class Landroid/support/v4/app/FragmentManager$PopBackStackState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final mFlags:I

.field final mId:I

.field final mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;II)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3755
    iput-object p1, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3756
    iput-object p2, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->mName:Ljava/lang/String;

    .line 3757
    iput p3, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->mId:I

    .line 3758
    iput p4, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->mFlags:I

    .line 3759
    return-void
.end method


# virtual methods
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
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

    .line 3764
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManager;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->mId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3767
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManager;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManager;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3768
    .local v0, "childManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3771
    const/4 v1, 0x0

    return v1

    .line 3774
    .end local v0    # "childManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManager;

    iget-object v5, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->mName:Ljava/lang/String;

    iget v6, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->mId:I

    iget v7, p0, Landroid/support/v4/app/FragmentManager$PopBackStackState;->mFlags:I

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .end local p2    # "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local v4, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
