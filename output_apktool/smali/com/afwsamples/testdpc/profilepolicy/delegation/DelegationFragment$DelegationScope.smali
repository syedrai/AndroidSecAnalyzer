.class Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
.super Ljava/lang/Object;
.source "DelegationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelegationScope"
.end annotation


# instance fields
.field granted:Z

.field final scope:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scope"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->scope:Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->granted:Z

    .line 200
    return-void
.end method

.method static defaultDelegationScopes(Z)Ljava/util/List;
    .locals 4
    .param p0, "showDoOnlyDelegations"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showDoOnlyDelegations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "defaultDelegations":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;>;"
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v2, "delegation-cert-install"

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v2, "delegation-app-restrictions"

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v2, "delegation-block-uninstall"

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v2, "delegation-permission-grant"

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v2, "delegation-package-access"

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v2, "delegation-enable-system-app"

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v2, "delegation-cert-selection"

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :try_start_0
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    const-string v3, "DELEGATION_SECURITY_LOGGING"

    .line 215
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/common/ReflectionUtil;->stringConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException;
    invoke-static {}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to read DevicePolicyManager.DELEGATION_SECURITY_LOGGING"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    .end local v1    # "e":Lcom/afwsamples/testdpc/common/ReflectionUtil$ReflectionIsTemporaryException;
    :goto_0
    if-eqz p0, :cond_0

    .line 221
    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    const-string v2, "delegation-network-logging"

    invoke-direct {v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    return-object v0
.end method
