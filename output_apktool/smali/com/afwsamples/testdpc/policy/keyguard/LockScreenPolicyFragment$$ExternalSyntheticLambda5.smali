.class public final synthetic Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda5;->f$0:Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$ExternalSyntheticLambda5;->f$0:Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->$r8$lambda$1imwr3MuIsnLzk9KEOoelBZtDX4(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
