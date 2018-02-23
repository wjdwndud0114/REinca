.class public Lcom/tapjoy/internal/TapjoyNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tapjoy/internal/eu;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlacement(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/tapjoy/TJPlacementListener;
    .annotation build Lcom/tapjoy/internal/eu;
    .end annotation

    .prologue
    .line 12
    invoke-static {}, Lcom/tapjoy/internal/fb;->a()Lcom/tapjoy/internal/fb;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tapjoy/internal/fb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
