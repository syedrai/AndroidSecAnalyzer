.class public Lorg/bouncycastle/jcajce/provider/symmetric/SCRYPT$ScryptWithUTF8;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SCRYPT$BasePBKDF2;
.source "SCRYPT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/SCRYPT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScryptWithUTF8"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 83
    const-string v0, "SCRYPT"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/SCRYPT$BasePBKDF2;-><init>(Ljava/lang/String;I)V

    .line 84
    return-void
.end method
