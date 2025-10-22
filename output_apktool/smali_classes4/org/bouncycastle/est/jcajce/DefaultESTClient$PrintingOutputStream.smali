.class Lorg/bouncycastle/est/jcajce/DefaultESTClient$PrintingOutputStream;
.super Ljava/io/OutputStream;
.source "DefaultESTClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/est/jcajce/DefaultESTClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintingOutputStream"
.end annotation


# instance fields
.field private final tgt:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "tgt"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tgt"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 213
    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClient$PrintingOutputStream;->tgt:Ljava/io/OutputStream;

    .line 214
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

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/DefaultESTClient$PrintingOutputStream;->tgt:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 222
    return-void
.end method
