.class public Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;
.super Ljava/lang/Object;
.source "ZlibExpanderProvider.java"

# interfaces
.implements Lorg/bouncycastle/operator/InputExpanderProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;
    }
.end annotation


# instance fields
.field private final limit:J


# direct methods
.method static bridge synthetic -$$Nest$fgetlimit(Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->limit:J

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->limit:J

    .line 24
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->limit:J

    .line 35
    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputExpander;
    .locals 1
    .param p1, "algorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "algorithm"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;-><init>(Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-object v0
.end method
