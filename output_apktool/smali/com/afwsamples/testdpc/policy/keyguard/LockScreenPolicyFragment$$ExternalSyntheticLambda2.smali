.class public final synthetic Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afwsamples/testdpc/common/preference/CustomConstraint;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;

.field public synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda2;->f$0:Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final validateConstraint()I
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda2;->f$0:Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->$r8$lambda$ZMKMZmUKtVd-j4n7Kih6Acyd5qE(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
