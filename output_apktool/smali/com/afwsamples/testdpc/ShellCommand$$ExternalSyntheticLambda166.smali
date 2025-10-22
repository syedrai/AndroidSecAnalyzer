.class public final synthetic Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda166;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/ShellCommand;

.field public synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda166;->f$0:Lcom/afwsamples/testdpc/ShellCommand;

    iput-boolean p2, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda166;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda166;->f$0:Lcom/afwsamples/testdpc/ShellCommand;

    iget-boolean v1, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda166;->f$1:Z

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/ShellCommand;->$r8$lambda$C-NYA8crva6h9lacNnBQPUyoDb4(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Exception;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
