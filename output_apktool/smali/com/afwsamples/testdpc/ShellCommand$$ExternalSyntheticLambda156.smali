.class public final synthetic Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda156;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/ShellCommand;

.field public synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda156;->f$0:Lcom/afwsamples/testdpc/ShellCommand;

    iput-object p2, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda156;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda156;->f$0:Lcom/afwsamples/testdpc/ShellCommand;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda156;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/ShellCommand;->$r8$lambda$QkF4tBStrXTWq_RrpJOZ5-ily_k(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
