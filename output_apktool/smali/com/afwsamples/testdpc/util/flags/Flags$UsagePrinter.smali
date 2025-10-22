.class final Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsagePrinter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;
    }
.end annotation


# static fields
.field private static final COMMAND_PADDING:Ljava/lang/String; = "  "

.field private static final COMMAND_WRAP_PADDING:Ljava/lang/String; = "        "

.field private static final COMMAND_WRAP_SEPARATOR:Ljava/lang/String; = " \\"

.field private static final DESCRIPTION_PADDING:Ljava/lang/String; = "    "


# instance fields
.field private final commands:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final lineBuilder:Ljava/lang/StringBuilder;

.field private final printWriter:Ljava/io/PrintWriter;


# direct methods
.method static bridge synthetic -$$Nest$mshowUsage(Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->showUsage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUsage(Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->showUsage(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/PrintWriter;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "printWriter"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "printWriter",
            "commands"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Iterable<",
            "Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;",
            ">;)V"
        }
    .end annotation

    .line 819
    .local p2, "commands":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    .line 820
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    .line 821
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->commands:Ljava/lang/Iterable;

    .line 822
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/Iterable;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;-><init>(Ljava/io/PrintWriter;Ljava/lang/Iterable;)V

    return-void
.end method

.method private varargs appendFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    return-void
.end method

.method private clearLine()V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 885
    return-void
.end method

.method private printCommandLine()V
    .locals 4

    .line 872
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;

    const-string v1, " \\"

    const/4 v2, 0x0

    const-string v3, "        "

    invoke-direct {v0, v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    .line 873
    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;->-$$Nest$mprintText(Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V

    .line 874
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->clearLine()V

    .line 875
    return-void
.end method

.method private printDescriptionLine()V
    .locals 4

    .line 878
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "    "

    invoke-direct {v0, v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    .line 879
    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;->-$$Nest$mprintText(Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter$LineLengthFormatter;Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V

    .line 880
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->clearLine()V

    .line 881
    return-void
.end method

.method private showUsage()V
    .locals 9

    .line 831
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    const-string v1, "Usage:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->commands:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;

    .line 833
    .local v1, "command":Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mname(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mparams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mordinalParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "..."

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 836
    .local v3, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    invoke-interface {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->name()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v5

    const-string v5, " <%s>"

    invoke-direct {p0, v5, v6}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->appendFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    invoke-interface {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->acceptsMultipleValues()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 838
    iget-object v5, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .end local v3    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    :cond_0
    goto :goto_1

    .line 841
    :cond_1
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mparams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags$Params;->-$$Nest$mnamedParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 842
    .restart local v3    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    iget-object v7, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-interface {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->isOptional()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 844
    iget-object v7, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_2
    invoke-interface {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->name()Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v7, v8, v5

    const-string v7, "--%s <value>"

    invoke-direct {p0, v7, v8}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->appendFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    invoke-interface {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->acceptsMultipleValues()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 848
    iget-object v7, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    :cond_3
    invoke-interface {v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->isOptional()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 851
    iget-object v7, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .end local v3    # "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    :cond_4
    goto :goto_2

    .line 854
    :cond_5
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->printCommandLine()V

    .line 856
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mdescription(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 857
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->-$$Nest$mdescription(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->printDescriptionLine()V

    .line 862
    :cond_6
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 863
    .end local v1    # "command":Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;
    goto/16 :goto_0

    .line 864
    :cond_7
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 865
    return-void
.end method

.method private showUsage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 827
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$UsagePrinter;->showUsage()V

    .line 828
    return-void
.end method
