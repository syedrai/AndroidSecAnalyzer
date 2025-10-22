.class public Lorg/bouncycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;
.source "ECKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lorg/bouncycastle/jce/spec/ECParameterSpec;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 0
    .param p1, "spec"    # Lorg/bouncycastle/jce/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spec"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECKeySpec;->spec:Lorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 17
    return-void
.end method


# virtual methods
.method public getParams()Lorg/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECKeySpec;->spec:Lorg/bouncycastle/jce/spec/ECParameterSpec;

    return-object v0
.end method
