.class public final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;

.field public synthetic f$1:I

.field public synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda1;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;

    iput p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda1;->f$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;

    iget v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, v1, v2, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;->$r8$lambda$H9hhSJQhXt_8HEG5yjHuqMvUdlc(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$30;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
