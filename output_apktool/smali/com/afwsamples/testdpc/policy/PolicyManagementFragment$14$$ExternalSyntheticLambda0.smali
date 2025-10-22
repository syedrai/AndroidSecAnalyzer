.class public final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14$$ExternalSyntheticLambda0;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14$$ExternalSyntheticLambda0;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->$r8$lambda$0859SUBJ0hIyb9NFEdRijNYWzO4(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;Landroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
