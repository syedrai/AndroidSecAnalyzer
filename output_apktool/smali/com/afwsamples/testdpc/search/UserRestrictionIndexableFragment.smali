.class public Lcom/afwsamples/testdpc/search/UserRestrictionIndexableFragment;
.super Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
.source "UserRestrictionIndexableFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    const-class v0, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method public index(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v0, "preferenceIndices":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    sget-object v1, Lcom/afwsamples/testdpc/policy/UserRestriction;->ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 18
    .local v4, "userRestriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    new-instance v5, Lcom/afwsamples/testdpc/search/PreferenceIndex;

    iget-object v6, v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    iget v7, v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->titleResId:I

    .line 20
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/afwsamples/testdpc/search/UserRestrictionIndexableFragment;->fragmentName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/afwsamples/testdpc/search/PreferenceIndex;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .end local v4    # "userRestriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method
