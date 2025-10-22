.class public Lorg/bouncycastle/jcajce/provider/digest/Keccak$Digest256;
.super Lorg/bouncycastle/jcajce/provider/digest/Keccak$DigestKeccak;
.source "Keccak.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/Keccak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/Keccak$DigestKeccak;-><init>(I)V

    .line 51
    return-void
.end method
