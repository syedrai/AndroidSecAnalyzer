.class final Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Lcom/afwsamples/testdpc/util/flags/Flags$Param;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NamedParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final dataType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataType",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<TT;>;"
    .local p1, "dataType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;->dataType:Ljava/lang/Class;

    .line 121
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;->name:Ljava/lang/String;

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acceptsMultipleValues()Z
    .locals 1

    .line 136
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;->dataType:Ljava/lang/Class;

    return-object v0
.end method

.method public isOptional()Z
    .locals 1

    .line 131
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isOrdinal()Z
    .locals 1

    .line 126
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 146
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;->name:Ljava/lang/String;

    return-object v0
.end method
