.class Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/BackStackRecordState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Landroid/support/v4/app/BackStackState$1;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mFragments:Ljava/util/List;

    .line 44
    sget-object v0, Landroid/support/v4/app/BackStackRecordState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mTransactions:Ljava/util/List;

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/support/v4/app/BackStackRecordState;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "fragments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "transactions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/BackStackRecordState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/support/v4/app/BackStackState;->mFragments:Ljava/util/List;

    .line 39
    iput-object p2, p0, Landroid/support/v4/app/BackStackState;->mTransactions:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method instantiate(Landroid/support/v4/app/FragmentManager;Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation

    .line 52
    .local p2, "pendingSavedFragments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/support/v4/app/Fragment;>;"
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 53
    .local v0, "fragments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/v4/app/Fragment;>;"
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, "fWho":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 55
    .local v3, "existingFragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_0

    .line 58
    iget-object v4, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getFragmentStore()Landroid/support/v4/app/FragmentStore;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/support/v4/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 63
    .local v4, "stateBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 64
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getHost()Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 65
    .local v5, "classLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v6, "state"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/FragmentState;

    .line 67
    .local v6, "fs":Landroid/support/v4/app/FragmentState;
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getFragmentFactory()Landroid/support/v4/app/FragmentFactory;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentFactory;Ljava/lang/ClassLoader;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    .line 68
    .local v7, "fragment":Landroid/support/v4/app/Fragment;
    iput-object v4, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 73
    iget-object v8, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "savedInstanceState"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_1

    .line 75
    iget-object v8, v7, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    :cond_1
    const-string v8, "arguments"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 82
    .local v8, "arguments":Landroid/os/Bundle;
    if-eqz v8, :cond_2

    .line 83
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 85
    :cond_2
    invoke-virtual {v7, v8}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    iget-object v9, v7, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v2    # "fWho":Ljava/lang/String;
    .end local v3    # "existingFragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "stateBundle":Landroid/os/Bundle;
    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    .end local v7    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v8    # "arguments":Landroid/os/Bundle;
    :cond_3
    goto :goto_0

    .line 92
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v1, "transactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->mTransactions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/BackStackRecordState;

    .line 94
    .local v3, "backStackRecordState":Landroid/support/v4/app/BackStackRecordState;
    invoke-virtual {v3, p1, v0}, Landroid/support/v4/app/BackStackRecordState;->instantiate(Landroid/support/v4/app/FragmentManager;Ljava/util/Map;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v3    # "backStackRecordState":Landroid/support/v4/app/BackStackRecordState;
    goto :goto_1

    .line 96
    :cond_5
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mFragments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 107
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mTransactions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 108
    return-void
.end method
