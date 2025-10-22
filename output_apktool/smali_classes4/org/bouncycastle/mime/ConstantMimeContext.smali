.class public Lorg/bouncycastle/mime/ConstantMimeContext;
.super Ljava/lang/Object;
.source "ConstantMimeContext.java"

# interfaces
.implements Lorg/bouncycastle/mime/MimeContext;
.implements Lorg/bouncycastle/mime/MimeMultipartContext;


# static fields
.field public static final Instance:Lorg/bouncycastle/mime/ConstantMimeContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lorg/bouncycastle/mime/ConstantMimeContext;

    invoke-direct {v0}, Lorg/bouncycastle/mime/ConstantMimeContext;-><init>()V

    sput-object v0, Lorg/bouncycastle/mime/ConstantMimeContext;->Instance:Lorg/bouncycastle/mime/ConstantMimeContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyContext(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p1, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p2, "contentStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headers",
            "contentStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    return-object p2
.end method

.method public createContext(I)Lorg/bouncycastle/mime/MimeContext;
    .locals 0
    .param p1, "partNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    return-object p0
.end method
