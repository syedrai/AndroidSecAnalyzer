.class public final synthetic Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda106;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/ShellCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda106;->f$0:Lcom/afwsamples/testdpc/ShellCommand;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda106;->f$0:Lcom/afwsamples/testdpc/ShellCommand;

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->$r8$lambda$nuyHl0u40Gw1tE4j2h7htG6vU8Y(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
