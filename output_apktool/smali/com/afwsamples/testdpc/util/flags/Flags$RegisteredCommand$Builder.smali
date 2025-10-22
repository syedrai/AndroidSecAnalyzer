.class public final Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private commandMethod:Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private params:Lcom/afwsamples/testdpc/util/flags/Flags$Params;


# direct methods
.method static bridge synthetic -$$Nest$fgetcommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->commandMethod:Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdescription(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetname(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/flags/Flags$Params;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->params:Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuild(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->build()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetName(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setName(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetParams(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private build()Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;
    .locals 2

    .line 346
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V

    return-object v0
.end method

.method private setCommandMethod(Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 0
    .param p1, "value"    # Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->commandMethod:Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;

    .line 337
    return-object p0
.end method

.method private setName(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->name:Ljava/lang/String;

    .line 327
    return-object p0
.end method

.method private setParams(Lcom/afwsamples/testdpc/util/flags/Flags$Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 0
    .param p1, "value"    # Lcom/afwsamples/testdpc/util/flags/Flags$Params;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 331
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->params:Lcom/afwsamples/testdpc/util/flags/Flags$Params;

    .line 332
    return-object p0
.end method


# virtual methods
.method public setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->description:Ljava/lang/String;

    .line 342
    return-object p0
.end method
