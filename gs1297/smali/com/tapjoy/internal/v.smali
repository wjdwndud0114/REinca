.class public final Lcom/tapjoy/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bi;


# static fields
.field public static final a:Lcom/tapjoy/internal/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/tapjoy/internal/v;

    invoke-direct {v0}, Lcom/tapjoy/internal/v;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/v;->a:Lcom/tapjoy/internal/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/v$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/v$1;-><init>(Lcom/tapjoy/internal/v;Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/tapjoy/internal/ad;->a(Lcom/tapjoy/internal/bg;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 15
    check-cast p2, Landroid/graphics/Bitmap;

    .line 1049
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 15
    :cond_0
    return-void
.end method

.method public final synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/v;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
