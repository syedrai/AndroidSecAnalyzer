.class final Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeParser"
.end annotation


# instance fields
.field private final parsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mparse(Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;->parse(Lcom/afwsamples/testdpc/util/flags/Flags$Param;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parsers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<",
            "*>;>;)V"
        }
    .end annotation

    .line 422
    .local p1, "parsers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;->parsers:Ljava/util/Map;

    .line 424
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private parse(Lcom/afwsamples/testdpc/util/flags/Flags$Param;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 429
    .local p1, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;->parsers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    .line 430
    .local v0, "parser":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<TT;>;"
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->-$$Nest$mparserFunc(Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;)Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;

    move-result-object v1

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->-$$Nest$mvalidator(Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    .line 432
    .local v1, "result":Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<TT;>;"
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->-$$Nest$misValid(Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 433
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->-$$Nest$mhasMessage(Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_0

    .line 434
    nop

    .line 436
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->-$$Nest$mmessage(Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v4

    aput-object v6, v8, v3

    aput-object v7, v8, v5

    .line 434
    const-string v2, "Parameter \'%s\' could not be parsed as \'%s\'.\n%s"

    invoke-static {v2, v8}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$smcommandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 439
    :cond_0
    nop

    .line 441
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    aput-object v6, v5, v3

    .line 439
    const-string v2, "Parameter \'%s\' could not be parsed as \'%s\'."

    invoke-static {v2, v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$smcommandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 444
    :cond_1
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->-$$Nest$mvalue(Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
