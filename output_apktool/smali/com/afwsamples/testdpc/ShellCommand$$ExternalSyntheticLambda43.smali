.class public final synthetic Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/ShellCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda43;->f$0:Lcom/afwsamples/testdpc/ShellCommand;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda43;->f$0:Lcom/afwsamples/testdpc/ShellCommand;

    check-cast p1, Ljava/lang/String;

    check-cast p2, [Lcom/afwsamples/testdpc/ShellCommand$KeyValue;

    invoke-static {v0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->$r8$lambda$aimXPgTWzaCLA3wBaRAtARAo1x8(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;[Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)V

    return-void
.end method
