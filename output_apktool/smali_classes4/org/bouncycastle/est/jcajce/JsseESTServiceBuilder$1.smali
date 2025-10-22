.class Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder$1;
.super Ljava/lang/Object;
.source "JsseESTServiceBuilder.java"

# interfaces
.implements Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->build()Lorg/bouncycastle/est/ESTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canAccessChannelBinding(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sock"
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public getChannelBinding(Ljava/net/Socket;Ljava/lang/String;)[B
    .locals 1
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "binding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sock",
            "binding"
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    return-object v0
.end method
