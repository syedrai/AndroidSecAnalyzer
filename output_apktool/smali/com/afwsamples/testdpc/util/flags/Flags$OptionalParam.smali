.class final Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;
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
    name = "OptionalParam"
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
.field private final innerParam:Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;)V
    .locals 0
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
            "(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<",
            "TT;>;)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam<TT;>;"
    .local p1, "innerParam":Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;->innerParam:Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;)V

    return-void
.end method


# virtual methods
.method public acceptsMultipleValues()Z
    .locals 1

    .line 169
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam<TT;>;"
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

    .line 174
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;->innerParam:Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;->dataType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isOptional()Z
    .locals 1

    .line 164
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isOrdinal()Z
    .locals 1

    .line 159
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 179
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;, "Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;->innerParam:Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
