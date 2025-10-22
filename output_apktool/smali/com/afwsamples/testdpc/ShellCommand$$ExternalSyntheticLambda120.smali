.class public final synthetic Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda120;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/ShellCommand;

.field public synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda120;->f$0:Lcom/afwsamples/testdpc/ShellCommand;

    iput p2, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda120;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda120;->f$0:Lcom/afwsamples/testdpc/ShellCommand;

    iget v1, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda120;->f$1:I

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/ShellCommand;->$r8$lambda$h17CxotOhk5tUBnEppq-7UsMrPU(Lcom/afwsamples/testdpc/ShellCommand;ILjava/lang/Void;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
