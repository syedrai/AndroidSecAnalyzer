.class public abstract Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
.super Ljava/lang/Object;
.source "BaseIndexableFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseIndexableFragment"


# instance fields
.field protected fragmentName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;",
            ">;)V"
        }
    .end annotation

    .line 13
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->fragmentName:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract index(Landroid/content/Context;)Ljava/util/List;
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
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->fragmentName:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;

    .line 24
    .local v1, "fragment":Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
    invoke-virtual {v1, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->isAvailable(Landroid/content/Context;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 25
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;>;"
    .end local v1    # "fragment":Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "BaseIndexableFragment"

    const-string v2, "isAvailable error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method
