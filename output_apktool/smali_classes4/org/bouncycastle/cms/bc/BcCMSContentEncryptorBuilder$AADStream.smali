.class Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;
.super Ljava/io/OutputStream;
.source "BcCMSContentEncryptorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AADStream"
.end annotation


# instance fields
.field private cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 0
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 174
    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 175
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processAADByte(B)V

    .line 187
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;->cipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processAADBytes([BII)V

    .line 181
    return-void
.end method
