.class public final Lcom/afwsamples/testdpc/util/flags/Flags$Validator;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Validator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 352
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$Validator;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalid()Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<",
            "TT;>;"
        }
    .end annotation

    .line 405
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$Validator;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    return-object v0
.end method

.method public invalid(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<",
            "TT;>;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$Validator;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;-><init>(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    return-object v0
.end method

.method public valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<",
            "TT;>;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$Validator;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;-><init>(Ljava/lang/Object;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    return-object v0
.end method
