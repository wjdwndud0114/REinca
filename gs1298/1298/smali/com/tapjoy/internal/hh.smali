.class final Lcom/tapjoy/internal/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/hc$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 8
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)[B
    .locals 1

    .prologue
    .line 16
    new-array v0, p1, [B

    return-object v0
.end method

.method public final b(I)[I
    .locals 1

    .prologue
    .line 24
    new-array v0, p1, [I

    return-object v0
.end method
