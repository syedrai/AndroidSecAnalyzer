.class Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$3;
.super Ljava/lang/Object;
.source "IEEE1609dot2.java"

# interfaces
.implements Lorg/bouncycastle/oer/ElementSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private built:Lorg/bouncycastle/oer/Element;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/oer/Element;
    .locals 2

    .line 600
    monitor-enter p0

    .line 602
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$3;->built:Lorg/bouncycastle/oer/Element;

    if-nez v0, :cond_0

    .line 604
    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->SignedData:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string/jumbo v1, "signedData"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$3;->built:Lorg/bouncycastle/oer/Element;

    .line 606
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2$3;->built:Lorg/bouncycastle/oer/Element;

    monitor-exit p0

    return-object v0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
