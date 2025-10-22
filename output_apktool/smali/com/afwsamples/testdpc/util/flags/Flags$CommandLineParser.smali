.class final Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommandLineParser"
.end annotation


# instance fields
.field private final args:[Ljava/lang/String;

.field private currentIndex:I

.field private final parsedOrdinalParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final parsedParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final typeParser:Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;


# direct methods
.method static bridge synthetic -$$Nest$mparse(Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parse(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;[Ljava/lang/String;)V
    .locals 1
    .param p1, "typeParser"    # Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeParser",
            "args"
        }
    .end annotation

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    .line 451
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    .line 457
    const/4 v0, 0x1

    iput v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->currentIndex:I

    .line 460
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->typeParser:Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;

    .line 461
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->args:[Ljava/lang/String;

    .line 462
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;[Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;[Ljava/lang/String;)V

    return-void
.end method

.method private advance()V
    .locals 1

    .line 538
    iget v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->currentIndex:I

    .line 539
    return-void
.end method

.method private static asArray(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 584
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 586
    .local v0, "array":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 587
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    .end local v1    # "index":I
    :cond_0
    return-object v0
.end method

.method private getCurrentOrdinalParam(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$Param;
    .locals 2
    .param p1, "params"    # Lcom/afwsamples/testdpc/util/flags/Flags$Params;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Params;",
            ")",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;"
        }
    .end annotation

    .line 558
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mordinalParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    return-object v0
.end method

.method private getNextValue()Ljava/lang/String;
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->args:[Ljava/lang/String;

    iget v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->currentIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private hasNextValue()Z
    .locals 2

    .line 542
    iget v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->currentIndex:I

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->args:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasOrdinalParamForCurrentArg(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Z
    .locals 2
    .param p1, "params"    # Lcom/afwsamples/testdpc/util/flags/Flags$Params;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mordinalParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNamedArg(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 576
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static namedArgValueToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .line 580
    const-string v0, "--"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parse(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;
    .locals 6
    .param p1, "params"    # Lcom/afwsamples/testdpc/util/flags/Flags$Params;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 465
    nop

    :goto_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->hasNextValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 466
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->peekNextValue()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "currentArg":Ljava/lang/String;
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->isNamedArg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 469
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->advance()V

    .line 471
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->namedArgValueToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "argName":Ljava/lang/String;
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mnamedParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 477
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mnamedParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 479
    .local v4, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    iget-object v5, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 483
    invoke-interface {v4}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->acceptsMultipleValues()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 484
    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parseMultipleValues(Lcom/afwsamples/testdpc/util/flags/Flags$Param;)V

    goto :goto_1

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->hasNextValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 491
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->getNextValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parseSingleValue(Lcom/afwsamples/testdpc/util/flags/Flags$Param;Ljava/lang/String;)V

    .line 493
    .end local v3    # "argName":Ljava/lang/String;
    .end local v4    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    :goto_1
    goto :goto_3

    .line 487
    .restart local v3    # "argName":Ljava/lang/String;
    .restart local v4    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "Expected value for parameter \'%s\' but it was not provided."

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$smcommandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 480
    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "Named argument \'%s\' was called repeatedly."

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$smcommandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 474
    .end local v4    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    :cond_3
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "Named argument \'%s\' does not exist."

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$smcommandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 494
    .end local v3    # "argName":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->hasOrdinalParamForCurrentArg(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 499
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->getCurrentOrdinalParam(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    move-result-object v1

    .line 501
    .local v1, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    invoke-interface {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->acceptsMultipleValues()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 502
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parseMultipleValues(Lcom/afwsamples/testdpc/util/flags/Flags$Param;)V

    goto :goto_2

    .line 504
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parseSingleValue(Lcom/afwsamples/testdpc/util/flags/Flags$Param;Ljava/lang/String;)V

    .line 507
    :goto_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->advance()V

    .line 511
    .end local v0    # "currentArg":Ljava/lang/String;
    .end local v1    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    :goto_3
    goto/16 :goto_0

    .line 495
    .restart local v0    # "currentArg":Ljava/lang/String;
    :cond_6
    const-string v1, "More ordinal parameters were provided than the command accepts."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$smcommandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 513
    .end local v0    # "currentArg":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mordinalParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 514
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mordinalParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 515
    .local v3, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->acceptsMultipleValues()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 516
    :cond_8
    nop

    .line 517
    invoke-interface {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->name()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 516
    const-string v0, "Ordinal parameter \'%s\' was not provided."

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$smcommandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 519
    .end local v3    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    :cond_9
    :goto_5
    goto :goto_4

    .line 522
    :cond_a
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v3, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v0, v3

    .line 523
    .local v0, "parsedNamedParamsCount":I
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mnamedParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 524
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mnamedParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 525
    .restart local v4    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    iget-object v5, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 526
    invoke-interface {v4}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->isOptional()Z

    move-result v5

    if-nez v5, :cond_c

    .line 527
    invoke-interface {v4}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->acceptsMultipleValues()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    .line 528
    :cond_b
    nop

    .line 529
    invoke-interface {v4}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->name()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 528
    const-string v2, "Named parameter \'%s\' was not provided."

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$smcommandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 531
    .end local v4    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    :cond_c
    :goto_7
    goto :goto_6

    .line 534
    :cond_d
    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;

    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;-><init>(Ljava/util/Map;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    return-object v1
.end method

.method private parseMultipleValues(Lcom/afwsamples/testdpc/util/flags/Flags$Param;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;)V"
        }
    .end annotation

    .line 566
    .local p1, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->hasNextValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->peekNextValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->isNamedArg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->typeParser:Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->getNextValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;->-$$Nest$mparse(Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->asArray(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    return-void
.end method

.method private parseSingleValue(Lcom/afwsamples/testdpc/util/flags/Flags$Param;Ljava/lang/String;)V
    .locals 2
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
            "(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 562
    .local p1, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->typeParser:Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;

    invoke-static {v1, p1, p2}, Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;->-$$Nest$mparse(Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    return-void
.end method

.method private peekNextValue()Ljava/lang/String;
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->args:[Ljava/lang/String;

    iget v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->currentIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method
