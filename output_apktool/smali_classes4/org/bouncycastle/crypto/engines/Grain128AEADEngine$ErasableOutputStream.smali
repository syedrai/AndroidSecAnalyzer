.class final Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "Grain128AEADEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErasableOutputStream"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 504
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 505
    return-void
.end method


# virtual methods
.method public getBuf()[B
    .locals 1

    .line 509
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->buf:[B

    return-object v0
.end method
