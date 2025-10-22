.class public final Lcom/afwsamples/testdpc/util/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/util/flags/Flags$InvalidCommandInvocationException;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;,
        Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;,
        Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;,
        Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;,
        Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;,
        Lcom/afwsamples/testdpc/util/flags/Flags$Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;,
        Lcom/afwsamples/testdpc/util/flags/Flags$Param;,
        Lcom/afwsamples/testdpc/util/flags/Flags$Function;,
        Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;,
        Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;,
        Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;,
        Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;,
        Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedNamedParam;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl0;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl1;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl4;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback4Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl5;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback5Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl7;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback7Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl8;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback8Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl9;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback9Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl10;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback10Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl11;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback11Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl12;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback12Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl13;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback13Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl14;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback14Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl15;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback15Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl16;,
        Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback16Params;,
        Lcom/afwsamples/testdpc/util/flags/Flags$Validator;
    }
.end annotation


# instance fields
.field private final commands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;",
            ">;"
        }
    .end annotation
.end field

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

.field private final printWriter:Ljava/io/PrintWriter;


# direct methods
.method public static synthetic $r8$lambda$cvNiBspwebGXqao8hDIffiPSS7g(Lcom/afwsamples/testdpc/util/flags/Flags;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->retrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcommandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 0

    invoke-static {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags;->commandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 664
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/util/flags/Flags;-><init>(Ljava/io/PrintWriter;)V

    .line 665
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "printWriter"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "printWriter"
        }
    .end annotation

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    .line 658
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->commands:Ljava/util/Map;

    .line 672
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->printWriter:Ljava/io/PrintWriter;

    .line 673
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags;->registerDefaultArgumentParsers()V

    .line 674
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags;)V

    .line 675
    const-string v1, "help"

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const-string v1, "Prints this help text."

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 674
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 676
    return-void
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "command"    # Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "command"
        }
    .end annotation

    .line 1080
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1081
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl0;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1083
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1080
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback10Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 14
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6",
            "param7",
            "param8",
            "param9",
            "param10"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback10Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT7;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT8;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT9;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT10;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1234
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback10Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback10Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT10;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1235
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    const/16 v2, 0x8

    aput-object p10, v1, v2

    const/16 v2, 0x9

    aput-object p11, v1, v2

    .line 1238
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1237
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v1

    .line 1236
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl10;

    const/4 v13, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v13}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl10;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback10Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1241
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1234
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback11Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 16
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6",
            "param7",
            "param8",
            "param9",
            "param10",
            "param11"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback11Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT7;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT8;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT9;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT10;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT11;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1261
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback11Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback11Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT11;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1262
    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v2, 0xb

    new-array v2, v2, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    aput-object p10, v2, v3

    const/16 v3, 0x9

    aput-object p11, v2, v3

    const/16 v3, 0xa

    aput-object p12, v2, v3

    .line 1265
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1264
    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v2

    .line 1263
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v2, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl11;

    const/4 v15, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v2 .. v15}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl11;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback11Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1268
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1261
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback12Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 17
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6",
            "param7",
            "param8",
            "param9",
            "param10",
            "param11",
            "param12"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            "T12:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback12Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT7;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT8;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT9;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT10;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT11;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT12;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1290
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback12Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback12Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT11;>;"
    .local p13, "param12":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT12;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1291
    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v2, 0xc

    new-array v2, v2, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    aput-object p10, v2, v3

    const/16 v3, 0x9

    aput-object p11, v2, v3

    const/16 v3, 0xa

    aput-object p12, v2, v3

    const/16 v3, 0xb

    aput-object p13, v2, v3

    .line 1294
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1293
    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v2

    .line 1292
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v2, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl12;

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v2 .. v16}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl12;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback12Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1297
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1290
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback13Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 18
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6",
            "param7",
            "param8",
            "param9",
            "param10",
            "param11",
            "param12",
            "param13"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            "T12:",
            "Ljava/lang/Object;",
            "T13:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback13Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT7;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT8;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT9;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT10;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT11;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT12;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT13;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1320
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback13Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback13Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT11;>;"
    .local p13, "param12":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT12;>;"
    .local p14, "param13":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT13;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1321
    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    aput-object p10, v2, v3

    const/16 v3, 0x9

    aput-object p11, v2, v3

    const/16 v3, 0xa

    aput-object p12, v2, v3

    const/16 v3, 0xb

    aput-object p13, v2, v3

    const/16 v3, 0xc

    aput-object p14, v2, v3

    .line 1324
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1323
    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v2

    .line 1322
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v2, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl13;

    const/16 v17, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v2 .. v17}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl13;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback13Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1327
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1320
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback14Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 19
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6",
            "param7",
            "param8",
            "param9",
            "param10",
            "param11",
            "param12",
            "param13",
            "param14"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            "T12:",
            "Ljava/lang/Object;",
            "T13:",
            "Ljava/lang/Object;",
            "T14:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback14Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT7;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT8;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT9;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT10;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT11;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT12;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT13;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT14;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1352
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback14Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback14Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT11;>;"
    .local p13, "param12":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT12;>;"
    .local p14, "param13":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT13;>;"
    .local p15, "param14":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT14;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1353
    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v2, 0xe

    new-array v2, v2, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    aput-object p10, v2, v3

    const/16 v3, 0x9

    aput-object p11, v2, v3

    const/16 v3, 0xa

    aput-object p12, v2, v3

    const/16 v3, 0xb

    aput-object p13, v2, v3

    const/16 v3, 0xc

    aput-object p14, v2, v3

    const/16 v3, 0xd

    aput-object p15, v2, v3

    .line 1356
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1355
    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v2

    .line 1354
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v2, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl14;

    const/16 v18, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    invoke-direct/range {v2 .. v18}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl14;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback14Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1359
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1352
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback15Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 20
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6",
            "param7",
            "param8",
            "param9",
            "param10",
            "param11",
            "param12",
            "param13",
            "param14",
            "param15"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            "T12:",
            "Ljava/lang/Object;",
            "T13:",
            "Ljava/lang/Object;",
            "T14:",
            "Ljava/lang/Object;",
            "T15:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback15Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT7;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT8;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT9;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT10;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT11;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT12;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT13;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT14;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT15;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1385
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback15Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback15Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT11;>;"
    .local p13, "param12":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT12;>;"
    .local p14, "param13":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT13;>;"
    .local p15, "param14":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT14;>;"
    .local p16, "param15":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT15;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1386
    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    aput-object p10, v2, v3

    const/16 v3, 0x9

    aput-object p11, v2, v3

    const/16 v3, 0xa

    aput-object p12, v2, v3

    const/16 v3, 0xb

    aput-object p13, v2, v3

    const/16 v3, 0xc

    aput-object p14, v2, v3

    const/16 v3, 0xd

    aput-object p15, v2, v3

    const/16 v3, 0xe

    aput-object p16, v2, v3

    .line 1389
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1388
    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v2

    .line 1387
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v2, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl15;

    const/16 v19, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    invoke-direct/range {v2 .. v19}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl15;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback15Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1392
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1385
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback16Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 21
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6",
            "param7",
            "param8",
            "param9",
            "param10",
            "param11",
            "param12",
            "param13",
            "param14",
            "param15",
            "param16"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            "T12:",
            "Ljava/lang/Object;",
            "T13:",
            "Ljava/lang/Object;",
            "T14:",
            "Ljava/lang/Object;",
            "T15:",
            "Ljava/lang/Object;",
            "T16:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback16Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT7;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT8;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT9;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT10;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT11;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT12;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT13;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT14;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT15;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT16;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1420
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback16Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback16Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT11;>;"
    .local p13, "param12":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT12;>;"
    .local p14, "param13":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT13;>;"
    .local p15, "param14":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT14;>;"
    .local p16, "param15":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT15;>;"
    .local p17, "param16":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT16;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1421
    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v2, 0x10

    new-array v2, v2, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    aput-object p10, v2, v3

    const/16 v3, 0x9

    aput-object p11, v2, v3

    const/16 v3, 0xa

    aput-object p12, v2, v3

    const/16 v3, 0xb

    aput-object p13, v2, v3

    const/16 v3, 0xc

    aput-object p14, v2, v3

    const/16 v3, 0xd

    aput-object p15, v2, v3

    const/16 v3, 0xe

    aput-object p16, v2, v3

    const/16 v3, 0xf

    aput-object p17, v2, v3

    .line 1424
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1423
    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v2

    .line 1422
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v2, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl16;

    const/16 v20, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-direct/range {v2 .. v20}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl16;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback16Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1427
    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1420
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1088
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params<TT1;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1089
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 1090
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl1;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1091
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1088
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params<",
            "TT1;TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1096
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params<TT1;TT2;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1097
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 1098
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1099
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1096
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params<",
            "TT1;TT2;TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1108
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params<TT1;TT2;TT3;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1109
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    .line 1110
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params<TT1;TT2;TT3;>;"
    .end local p2    # "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .end local p3    # "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .end local p4    # "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local v2, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params<TT1;TT2;TT3;>;"
    .local v3, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local v4, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local v5, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    invoke-direct/range {v1 .. v6}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1111
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object p1

    .line 1108
    return-object p1
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback4Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback4Params<",
            "TT1;TT2;TT3;TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1121
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback4Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback4Params<TT1;TT2;TT3;TT4;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1122
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    .line 1123
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl4;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback4Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback4Params<TT1;TT2;TT3;TT4;>;"
    .end local p2    # "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .end local p3    # "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .end local p4    # "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .end local p5    # "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local v2, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback4Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback4Params<TT1;TT2;TT3;TT4;>;"
    .local v3, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local v4, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local v5, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local v6, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    invoke-direct/range {v1 .. v7}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl4;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback4Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1124
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object p1

    .line 1121
    return-object p1
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback5Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback5Params<",
            "TT1;TT2;TT3;TT4;TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1135
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback5Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback5Params<TT1;TT2;TT3;TT4;TT5;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1136
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    .line 1137
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl5;

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback5Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback5Params<TT1;TT2;TT3;TT4;TT5;>;"
    .end local p2    # "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .end local p3    # "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .end local p4    # "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .end local p5    # "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .end local p6    # "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local v2, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback5Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback5Params<TT1;TT2;TT3;TT4;TT5;>;"
    .local v3, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local v4, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local v5, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local v6, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local v7, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    invoke-direct/range {v1 .. v8}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl5;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback5Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1138
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object p1

    .line 1135
    return-object p1
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1151
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1152
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    .line 1153
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1154
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1151
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback7Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6",
            "param7"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback7Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT7;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1168
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback7Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback7Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT7;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1169
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    .line 1171
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v1

    .line 1170
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl7;

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl7;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback7Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1172
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1168
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback8Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6",
            "param7",
            "param8"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback8Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT7;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT8;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1188
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback8Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback8Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT8;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1189
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    .line 1192
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1191
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v1

    .line 1190
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl8;

    const/4 v11, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl8;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback8Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1193
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1188
    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback9Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6",
            "param7",
            "param8",
            "param9"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback9Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT7;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT8;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT9;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .line 1210
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback9Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback9Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT9;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1211
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    const/16 v2, 0x8

    aput-object p10, v1, v2

    .line 1214
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1213
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$smcreate(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v1

    .line 1212
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl9;

    const/4 v12, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl9;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback9Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 1216
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1210
    return-object v0
.end method

.method private static varargs commandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "args"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$InvalidCommandInvocationException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$InvalidCommandInvocationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private execute([Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 711
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 713
    .local v1, "commandName":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->commands:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->commands:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;

    .line 718
    .local v0, "command":Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;
    nop

    .line 719
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mcommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;

    new-instance v4, Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;

    iget-object v5, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;-><init>(Ljava/util/Map;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    invoke-direct {v3, v4, p1, v6}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$TypeParser;[Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    .line 721
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mparams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;->-$$Nest$mparse(Lcom/afwsamples/testdpc/util/flags/Flags$CommandLineParser;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;

    move-result-object v3

    .line 720
    invoke-interface {v2, p0, v3}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;->execute(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)V

    .line 722
    return-void

    .line 714
    .end local v0    # "command":Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "Command \'%s\' was not found."

    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->commandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 675
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags;->usagePrinter()Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->-$$Nest$mshowUsage(Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;)V

    return-void
.end method

.method static synthetic lambda$numericParser$0(Lcom/afwsamples/testdpc/util/flags/Flags$Function;Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 2
    .param p0, "parsingFunc"    # Lcom/afwsamples/testdpc/util/flags/Flags$Function;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validator"    # Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    .line 954
    :try_start_0
    invoke-interface {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    .local v0, "value":Ljava/lang/Object;, "TT;"
    nop

    .line 959
    invoke-virtual {p2, v0}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v1

    return-object v1

    .line 955
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p2}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->invalid()Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$registerDefaultArgumentParsers$0(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "validator"    # Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    .line 892
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "lowercaseString":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v1

    return-object v1

    .line 898
    :cond_0
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 899
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v1

    return-object v1

    .line 902
    :cond_1
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->invalid()Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$registerDefaultArgumentParsers$1(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "validator"    # Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    .line 910
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 911
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v0

    return-object v0

    .line 914
    :cond_0
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->invalid()Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$registerDefaultArgumentParsers$2(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "validator"    # Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    .line 944
    invoke-virtual {p1, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method public static namedParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<",
            "TT;>;"
        }
    .end annotation

    .line 978
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    return-object v0
.end method

.method private static numericParser(Lcom/afwsamples/testdpc/util/flags/Flags$Function;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parsingFunc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Function<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<",
            "TT;>;"
        }
    .end annotation

    .line 949
    .local p0, "parsingFunc":Lcom/afwsamples/testdpc/util/flags/Flags$Function;, "Lcom/afwsamples/testdpc/util/flags/Flags$Function<Ljava/lang/String;TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$Function;)V

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->-$$Nest$smcreate(Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object v0

    return-object v0
.end method

.method public static optional(Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;)Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "namedParam"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<",
            "TT;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam<",
            "TT;>;"
        }
    .end annotation

    .line 989
    .local p0, "namedParam":Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    return-object v0
.end method

.method public static ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam<",
            "TT;>;"
        }
    .end annotation

    .line 968
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    return-object v0
.end method

.method private registerDefaultArgumentParsers()V
    .locals 11

    .line 889
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda2;-><init>()V

    .line 890
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->-$$Nest$smcreate(Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object v0

    .line 904
    .local v0, "booleanParser":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<*>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    new-instance v1, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda3;-><init>()V

    .line 908
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->-$$Nest$smcreate(Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object v1

    .line 916
    .local v1, "charParser":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<*>;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    const-class v3, Ljava/lang/Character;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    new-instance v2, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->numericParser(Lcom/afwsamples/testdpc/util/flags/Flags$Function;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object v2

    .line 920
    .local v2, "floatParser":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<*>;"
    iget-object v3, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object v3, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    const-class v4, Ljava/lang/Float;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    new-instance v3, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->numericParser(Lcom/afwsamples/testdpc/util/flags/Flags$Function;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object v3

    .line 924
    .local v3, "doubleParser":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<*>;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    const-class v5, Ljava/lang/Double;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    new-instance v4, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->numericParser(Lcom/afwsamples/testdpc/util/flags/Flags$Function;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object v4

    .line 928
    .local v4, "byteParser":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<*>;"
    iget-object v5, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    iget-object v5, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    const-class v6, Ljava/lang/Byte;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    new-instance v5, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->numericParser(Lcom/afwsamples/testdpc/util/flags/Flags$Function;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object v5

    .line 932
    .local v5, "shortParser":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<*>;"
    iget-object v6, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v6, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    const-class v7, Ljava/lang/Short;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    new-instance v6, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->numericParser(Lcom/afwsamples/testdpc/util/flags/Flags$Function;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object v6

    .line 936
    .local v6, "integerParser":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<*>;"
    iget-object v7, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    iget-object v7, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    const-class v8, Ljava/lang/Integer;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    new-instance v7, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda9;

    invoke-direct {v7}, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->numericParser(Lcom/afwsamples/testdpc/util/flags/Flags$Function;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object v7

    .line 940
    .local v7, "longParser":Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser<*>;"
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    const-class v9, Ljava/lang/Long;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    const-class v9, Ljava/lang/String;

    new-instance v10, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda10;

    invoke-direct {v10}, Lcom/afwsamples/testdpc/util/flags/Flags$$ExternalSyntheticLambda10;-><init>()V

    .line 944
    invoke-static {v10}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->-$$Nest$smcreate(Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object v10

    .line 943
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    return-void
.end method

.method public static repeated(Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedNamedParam;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "innerParam"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<",
            "TT;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedNamedParam<",
            "[TT;>;"
        }
    .end annotation

    .line 1015
    .local p0, "innerParam":Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedNamedParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedNamedParam;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    return-object v0
.end method

.method public static repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "innerParam"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam<",
            "TT;>;)",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam<",
            "[TT;>;"
        }
    .end annotation

    .line 1001
    .local p0, "innerParam":Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    return-object v0
.end method

.method private retrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;
    .locals 1
    .param p2, "args"    # Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;",
            ")TT;"
        }
    .end annotation

    .line 728
    .local p1, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT;>;"
    invoke-static {p2, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->-$$Nest$mget(Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static varargs usageException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "args"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private usagePrinter()Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;
    .locals 4

    .line 707
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->printWriter:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->commands:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;-><init>(Ljava/io/PrintWriter;Ljava/lang/Iterable;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    return-object v0
.end method

.method private validateCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)V
    .locals 7
    .param p1, "command"    # Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->commands:Ljava/util/Map;

    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mname(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 1044
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mparams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mordinalParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/List;

    move-result-object v0

    .line 1045
    .local v0, "ordinalParams":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;>;"
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mparams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mnamedParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/Map;

    move-result-object v3

    .line 1047
    .local v3, "namedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;>;"
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_1

    .line 1048
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1050
    .local v5, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    invoke-interface {v5}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->acceptsMultipleValues()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1047
    .end local v5    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1051
    .restart local v5    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    :cond_0
    const-string v2, "Repeated ordinal parameters must be at the end of the ordinal parameter list."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->usageException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1056
    .end local v4    # "index":I
    .end local v5    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1057
    .local v1, "paramNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1058
    .local v4, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    invoke-direct {p0, v4, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->validateParam(Lcom/afwsamples/testdpc/util/flags/Flags$Param;Ljava/util/Set;)V

    .line 1059
    .end local v4    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    goto :goto_1

    .line 1060
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1061
    .restart local v4    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    invoke-direct {p0, v4, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->validateParam(Lcom/afwsamples/testdpc/util/flags/Flags$Param;Ljava/util/Set;)V

    .line 1062
    .end local v4    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    goto :goto_2

    .line 1063
    :cond_3
    return-void

    .line 1041
    .end local v0    # "ordinalParams":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;>;"
    .end local v1    # "paramNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "namedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;>;"
    :cond_4
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mname(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Duplicate command name \'%s\'."

    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->usageException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private validateParam(Lcom/afwsamples/testdpc/util/flags/Flags$Param;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param",
            "paramNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1066
    .local p1, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    .local p2, "paramNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1077
    return-void

    .line 1071
    :cond_0
    nop

    .line 1073
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object v3, v4, v2

    .line 1071
    const-string v0, "No custom parser registered for data type \'%s\' of param \'%s\'."

    invoke-static {v0, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->usageException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1067
    :cond_1
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->name()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Duplicate parameter name \'%s\'."

    invoke-static {v0, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->usageException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V
    .locals 3
    .param p1, "commandBuilder"    # Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandBuilder"
        }
    .end annotation

    .line 1034
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$mbuild(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;

    move-result-object v0

    .line 1035
    .local v0, "command":Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/util/flags/Flags;->validateCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)V

    .line 1036
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->commands:Ljava/util/Map;

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mname(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    return-void
.end method

.method public registerCustomParser(Ljava/lang/Class;Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "parserFunc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator<",
            "TT;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 687
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parserFunc":Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;, "Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction<Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator<TT;>;Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<TT;>;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags;->parsers:Ljava/util/Map;

    invoke-static {p2}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;->-$$Nest$smcreate(Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/flags/Flags$ArgumentParser;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    return-void
.end method

.method public run([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 694
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 700
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags;->execute([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/afwsamples/testdpc/util/flags/Flags$InvalidCommandInvocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Lcom/afwsamples/testdpc/util/flags/Flags$InvalidCommandInvocationException;
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags;->usagePrinter()Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$InvalidCommandInvocationException;->message()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->-$$Nest$mshowUsage(Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;Ljava/lang/String;)V

    .line 704
    .end local v0    # "e":Lcom/afwsamples/testdpc/util/flags/Flags$InvalidCommandInvocationException;
    :goto_0
    return-void

    .line 695
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags;->usagePrinter()Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->-$$Nest$mshowUsage(Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;)V

    .line 696
    return-void
.end method
