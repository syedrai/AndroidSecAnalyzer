.class public Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters$Builder;
.super Ljava/lang/Object;
.source "Kangaroo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private thePersonal:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;
    .locals 2

    .line 138
    new-instance v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;-><init>()V

    .line 141
    .local v0, "myParams":Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters$Builder;->thePersonal:[B

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters$Builder;->thePersonal:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;->-$$Nest$fputthePersonal(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;[B)V

    .line 147
    :cond_0
    return-object v0
.end method

.method public setPersonalisation([B)Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters$Builder;
    .locals 1
    .param p1, "pPersonal"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pPersonal"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters$Builder;->thePersonal:[B

    .line 127
    return-object p0
.end method
