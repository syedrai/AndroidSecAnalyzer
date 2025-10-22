.class public final synthetic Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda221;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    invoke-static {p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$run$2(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object p1

    return-object p1
.end method
