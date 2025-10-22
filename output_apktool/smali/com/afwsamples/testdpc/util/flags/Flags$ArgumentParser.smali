.class final Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArgumentParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final parserFunc:Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<",
            "TT;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final validator:Lcom/afwsamples/testdpc/util/flags/Flags$Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mparserFunc(Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;)Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->parserFunc()Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mvalidator(Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->validator()Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreate(Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;
    .locals 0

    invoke-static {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->create(Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parserFunc",
            "validator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<",
            "TT;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<",
            "TT;>;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<",
            "TT;>;)V"
        }
    .end annotation

    .line 637
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<TT;>;"
    .local p1, "parserFunc":Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;, "Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction<Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator<TT;>;Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<TT;>;>;"
    .local p2, "validator":Lcom/afwsamples/testdpc/util/flags/Flags$Validator;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->parserFunc:Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;

    .line 639
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->validator:Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    .line 640
    return-void
.end method

.method private static create(Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parserFunc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<",
            "TT;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<",
            "TT;>;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<",
            "TT;>;"
        }
    .end annotation

    .line 644
    .local p0, "parserFunc":Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;, "Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction<Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator<TT;>;Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<TT;>;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)V

    return-object v0
.end method

.method private parserFunc()Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<",
            "TT;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<",
            "TT;>;>;"
        }
    .end annotation

    .line 648
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->parserFunc:Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;

    return-object v0
.end method

.method private validator()Lcom/afwsamples/testdpc/util/flags/Flags$Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<",
            "TT;>;"
        }
    .end annotation

    .line 652
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->validator:Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    return-object v0
.end method
