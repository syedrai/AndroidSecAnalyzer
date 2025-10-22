.class public final Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags$Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidationResult"
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
.field private final isValid:Z

.field private final message:Ljava/lang/String;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mhasMessage(Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;)Z
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->hasMessage()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misValid(Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;)Z
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->isValid()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmessage(Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->message()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mvalue(Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->value()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 365
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->isValid:Z

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->message:Ljava/lang/String;

    .line 368
    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->value:Ljava/lang/Object;

    .line 369
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
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
            "(TT;)V"
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->isValid:Z

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->message:Ljava/lang/String;

    .line 362
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->value:Ljava/lang/Object;

    .line 363
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
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

    .line 371
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->isValid:Z

    .line 373
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->message:Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->value:Ljava/lang/Object;

    .line 375
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private hasMessage()Z
    .locals 1

    .line 382
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValid()Z
    .locals 1

    .line 378
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<TT;>;"
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->isValid:Z

    return v0
.end method

.method private message()Ljava/lang/String;
    .locals 1

    .line 386
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method private value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 390
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;->value:Ljava/lang/Object;

    return-object v0
.end method
