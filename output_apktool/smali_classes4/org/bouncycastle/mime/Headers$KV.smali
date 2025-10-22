.class Lorg/bouncycastle/mime/Headers$KV;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/mime/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KV"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lorg/bouncycastle/mime/Headers$KV;->key:Ljava/lang/String;

    .line 295
    iput-object p2, p0, Lorg/bouncycastle/mime/Headers$KV;->value:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/mime/Headers$KV;)V
    .locals 1
    .param p1, "kv"    # Lorg/bouncycastle/mime/Headers$KV;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kv"
        }
    .end annotation

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iget-object v0, p1, Lorg/bouncycastle/mime/Headers$KV;->key:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/mime/Headers$KV;->key:Ljava/lang/String;

    .line 301
    iget-object v0, p1, Lorg/bouncycastle/mime/Headers$KV;->value:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/mime/Headers$KV;->value:Ljava/lang/String;

    .line 302
    return-void
.end method
