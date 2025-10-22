.class Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;
.super Ljava/lang/Object;
.source "BouncyCastleProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->-$$Nest$msetup(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method
