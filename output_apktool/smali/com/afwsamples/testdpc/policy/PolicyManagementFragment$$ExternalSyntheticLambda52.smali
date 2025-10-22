.class public final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda52;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$ExternalSyntheticLambda52;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->$r8$lambda$RZrHp3L8gm6F7F_zGLS_v0C9GLQ(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
