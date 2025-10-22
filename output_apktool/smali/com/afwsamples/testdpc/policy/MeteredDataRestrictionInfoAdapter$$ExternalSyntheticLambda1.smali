.class public final synthetic Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;

.field public synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->$r8$lambda$Ek2li2b4-IoK4ZLPMawgm28aZnQ(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
