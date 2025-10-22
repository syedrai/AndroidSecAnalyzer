.class final Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RegisteredCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    }
.end annotation


# instance fields
.field private final commandMethod:Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;

.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final params:Lcom/afwsamples/testdpc/util/flags/Flags$Params;


# direct methods
.method static bridge synthetic -$$Nest$mcommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->commandMethod()Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdescription(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->description()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mname(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mparams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->params()Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smbuilder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 1

    invoke-static {}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->builder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$fgetname(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->name:Ljava/lang/String;

    .line 294
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$fgetdescription(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->description:Ljava/lang/String;

    .line 295
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$fgetparams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->params:Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    .line 296
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->-$$Nest$fgetcommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->commandMethod:Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;

    .line 297
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    return-void
.end method

.method private static builder()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 2

    .line 316
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private commandMethod()Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->commandMethod:Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;

    return-object v0
.end method

.method private description()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->description:Ljava/lang/String;

    return-object v0
.end method

.method private name()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->name:Ljava/lang/String;

    return-object v0
.end method

.method private params()Lcom/afwsamples/testdpc/util/flags/Flags$Params;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;->params:Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    return-object v0
.end method
