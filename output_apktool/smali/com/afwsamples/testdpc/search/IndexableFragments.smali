.class public Lcom/afwsamples/testdpc/search/IndexableFragments;
.super Ljava/lang/Object;
.source "IndexableFragments.java"


# static fields
.field private static final sIndexableFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/search/BaseIndexableFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    .line 24
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    sget v3, Lcom/afwsamples/testdpc/R$xml;->device_policy_header:I

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    sget v3, Lcom/afwsamples/testdpc/R$xml;->profile_policy_header:I

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;

    sget v3, Lcom/afwsamples/testdpc/R$xml;->lock_screen_preferences:I

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;

    sget v3, Lcom/afwsamples/testdpc/R$xml;->password_constraint_preferences:I

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    sget v3, Lcom/afwsamples/testdpc/R$xml;->bind_device_admin_policies:I

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/UserRestrictionIndexableFragment;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/search/UserRestrictionIndexableFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;

    const-class v2, Lcom/afwsamples/testdpc/policy/OverrideApnFragment;

    sget v3, Lcom/afwsamples/testdpc/R$xml;->override_apn_preferences:I

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/search/XmlIndexableFragment;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static values()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/search/BaseIndexableFragment;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/afwsamples/testdpc/search/IndexableFragments;->sIndexableFragments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
