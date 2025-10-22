.class public abstract Lcom/afwsamples/testdpc/common/ManageAppFragment;
.super Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;
.source "ManageAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALLOWLISTED_APPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/common/ManageAppFragment;->ALLOWLISTED_APPS:Ljava/util/Set;

    .line 34
    sget-object v0, Lcom/afwsamples/testdpc/common/ManageAppFragment;->ALLOWLISTED_APPS:Ljava/util/Set;

    const-string v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;-><init>()V

    return-void
.end method

.method private getInstalledOrLaunchableApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ManageAppFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v1, "filteredAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 58
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/afwsamples/testdpc/common/ManageAppFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    sget-object v4, Lcom/afwsamples/testdpc/common/ManageAppFragment;->ALLOWLISTED_APPS:Ljava/util/Set;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 60
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 66
    :cond_2
    return-object v1
.end method


# virtual methods
.method protected createSpinnerAdapter()Landroid/widget/SpinnerAdapter;
    .locals 5

    .line 39
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->getInstalledOrLaunchableApps()Ljava/util/List;

    move-result-object v0

    .line 40
    .local v0, "managedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/ManageAppFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    new-instance v1, Lcom/afwsamples/testdpc/common/AppInfoSpinnerAdapter;

    .line 42
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$layout;->app_row:I

    sget v4, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/afwsamples/testdpc/common/AppInfoSpinnerAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 41
    return-object v1
.end method

.method protected filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 50
    const/4 v0, 0x1

    return v0
.end method
