.class public Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;
.super Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;
.source "AvailableComponentsInfoArrayAdapter.java"


# instance fields
.field private mPermittedPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resolveInfoList",
            "permittedPackageNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, "permittedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v0, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    invoke-direct {p0, p1, v0, p2}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPermittedPackageNames:Ljava/util/List;

    .line 42
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPermittedPackageNames:Ljava/util/List;

    .line 43
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->createIsComponentEnabledList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->setIsComponentEnabledList(Ljava/util/List;)V

    .line 44
    return-void
.end method

.method private createIsComponentEnabledList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "isComponentEnabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getCount()I

    move-result v1

    .line 103
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 104
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected canModifyComponent(I)Z
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationInfo"
        }
    .end annotation

    .line 93
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getDisplayName(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedComponents()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "selectedComponentsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getCount()I

    move-result v1

    .line 74
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 75
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolveInfo"
        }
    .end annotation

    .line 53
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPermittedPackageNames:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPermittedPackageNames:Ljava/util/List;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 57
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
