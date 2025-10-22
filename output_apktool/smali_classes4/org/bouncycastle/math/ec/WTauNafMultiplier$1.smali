.class Lorg/bouncycastle/math/ec/WTauNafMultiplier$1;
.super Ljava/lang/Object;
.source "WTauNafMultiplier.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:B

.field final synthetic val$p:Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$p",
            "val$a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lorg/bouncycastle/math/ec/WTauNafMultiplier$1;->val$p:Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    iput-byte p2, p0, Lorg/bouncycastle/math/ec/WTauNafMultiplier$1;->val$a:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 3
    .param p1, "existing"    # Lorg/bouncycastle/math/ec/PreCompInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "existing"
        }
    .end annotation

    .line 79
    instance-of v0, p1, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    if-eqz v0, :cond_0

    .line 81
    return-object p1

    .line 84
    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>()V

    .line 85
    .local v0, "result":Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/WTauNafMultiplier$1;->val$p:Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    iget-byte v2, p0, Lorg/bouncycastle/math/ec/WTauNafMultiplier$1;->val$a:B

    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/Tnaf;->getPreComp(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;)V

    .line 86
    return-object v0
.end method
