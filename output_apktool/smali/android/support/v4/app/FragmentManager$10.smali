.class Landroid/support/v4/app/FragmentManager$10;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentManager;->attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
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

    .line 3049
    iput-object p1, p0, Landroid/support/v4/app/FragmentManager$10;->this$0:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3049
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManager$10;->onActivityResult(Ljava/util/Map;)V

    return-void
.end method

.method public onActivityResult(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3052
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3053
    .local v0, "permissions":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3054
    .local v2, "resultValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 3055
    .local v3, "grantResults":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 3056
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3057
    const/4 v5, 0x0

    goto :goto_1

    .line 3058
    :cond_0
    const/4 v5, -0x1

    :goto_1
    aput v5, v3, v4

    .line 3055
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3060
    .end local v4    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager$10;->this$0:Landroid/support/v4/app/FragmentManager;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManager;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;

    .line 3061
    .local v1, "requestInfo":Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;
    const-string v4, "FragmentManager"

    if-nez v1, :cond_2

    .line 3062
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No permissions were requested for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    return-void

    .line 3065
    :cond_2
    iget-object v5, v1, Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;->mWho:Ljava/lang/String;

    .line 3066
    .local v5, "fragmentWho":Ljava/lang/String;
    iget v6, v1, Landroid/support/v4/app/FragmentManager$LaunchedFragmentInfo;->mRequestCode:I

    .line 3067
    .local v6, "requestCode":I
    iget-object v7, p0, Landroid/support/v4/app/FragmentManager$10;->this$0:Landroid/support/v4/app/FragmentManager;

    invoke-static {v7}, Landroid/support/v4/app/FragmentManager;->access$300(Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/FragmentStore;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/support/v4/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    .line 3071
    .local v7, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v7, :cond_3

    .line 3072
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission request result delivered for unknown Fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    return-void

    .line 3076
    :cond_3
    invoke-virtual {v7, v6, v0, v3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 3078
    return-void
.end method
