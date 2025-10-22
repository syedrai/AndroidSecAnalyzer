.class public Lorg/bouncycastle/est/ESTServiceBuilder;
.super Ljava/lang/Object;
.source "ESTServiceBuilder.java"


# instance fields
.field protected clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

.field protected label:Ljava/lang/String;

.field protected final server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/est/ESTServiceBuilder;->server:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/est/ESTService;
    .locals 4

    .line 54
    new-instance v0, Lorg/bouncycastle/est/ESTService;

    iget-object v1, p0, Lorg/bouncycastle/est/ESTServiceBuilder;->server:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTServiceBuilder;->label:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/est/ESTServiceBuilder;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/est/ESTService;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/est/ESTClientProvider;)V

    return-object v0
.end method

.method public withClientProvider(Lorg/bouncycastle/est/ESTClientProvider;)Lorg/bouncycastle/est/ESTServiceBuilder;
    .locals 0
    .param p1, "clientProvider"    # Lorg/bouncycastle/est/ESTClientProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientProvider"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lorg/bouncycastle/est/ESTServiceBuilder;->clientProvider:Lorg/bouncycastle/est/ESTClientProvider;

    .line 44
    return-object p0
.end method

.method public withLabel(Ljava/lang/String;)Lorg/bouncycastle/est/ESTServiceBuilder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lorg/bouncycastle/est/ESTServiceBuilder;->label:Ljava/lang/String;

    .line 32
    return-object p0
.end method
