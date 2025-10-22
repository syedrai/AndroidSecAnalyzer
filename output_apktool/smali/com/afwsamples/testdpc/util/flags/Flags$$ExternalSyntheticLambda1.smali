.class public final synthetic Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;


# instance fields
.field public synthetic f$0:Lcom/afwsamples/testdpc/util/flags/Flags$Function;


# direct methods
.method public synthetic constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$Function;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda1;->f$0:Lcom/afwsamples/testdpc/util/flags/Flags$Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda1;->f$0:Lcom/afwsamples/testdpc/util/flags/Flags$Function;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    invoke-static {v0, p1, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->lambda$numericParser$0(Lcom/afwsamples/testdpc/util/flags/Flags$Function;Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object p1

    return-object p1
.end method
