.class public Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;
.super Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;
.source "MeteredDataRestrictionInfoAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRestrictedPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Ek2li2b4-IoK4ZLPMawgm28aZnQ(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->lambda$setMeteredDataRestrictedPkgs$1(Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jWxQmHIuA7QrAfIcSF9HfEfsLac(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->lambda$setMeteredDataRestrictedPkgs$0(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

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
            "resolveInfos",
            "restrictedPkgs"
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

    .line 43
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, "restrictedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v0, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    invoke-direct {p0, p1, v0, p2}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 44
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mRestrictedPkgs:Ljava/util/List;

    .line 46
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->createIsComponentEnabledList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->setIsComponentEnabledList(Ljava/util/List;)V

    .line 47
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

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "isComponentEnabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->getCount()I

    move-result v1

    .line 68
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 69
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private synthetic lambda$setMeteredDataRestrictedPkgs$0(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "pkgNames"    # Ljava/util/List;
    .param p2, "v"    # Ljava/util/List;

    .line 102
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (except "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "succeeded":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "setMeteredDataRestrictedPkgs(%s) succeeded%s"

    invoke-static {v1, v3, v2}, Lcom/afwsamples/testdpc/common/Util;->onSuccessShowToast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method private synthetic lambda$setMeteredDataRestrictedPkgs$1(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "pkgNames"    # Ljava/util/List;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 105
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setMeteredDataRestrictedPkgs(%s) failed"

    invoke-static {v0, p2, v2, v1}, Lcom/afwsamples/testdpc/common/Util;->onErrorShowToast(Landroid/content/Context;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setMeteredDataRestrictedPkgs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;Ljava/util/List;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;Ljava/util/List;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setMeteredDataDisabledPackages(Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 106
    return-void
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

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getApplicationInfo: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

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

    .line 81
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

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

    .line 51
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mRestrictedPkgs:Ljava/util/List;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 86
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mIsComponentCheckedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 89
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 90
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mIsComponentCheckedList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->setMeteredDataRestrictedPkgs(Ljava/util/List;)V

    .line 96
    .end local v0    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "size":I
    :cond_2
    return-void
.end method
