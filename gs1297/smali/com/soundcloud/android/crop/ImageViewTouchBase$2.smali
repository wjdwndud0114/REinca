.class Lcom/soundcloud/android/crop/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soundcloud/android/crop/ImageViewTouchBase;

.field final synthetic val$centerX:F

.field final synthetic val$centerY:F

.field final synthetic val$durationMs:F

.field final synthetic val$incrementPerMs:F

.field final synthetic val$oldScale:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;FJFFFF)V
    .locals 1
    .param p1, "this$0"    # Lcom/soundcloud/android/crop/ImageViewTouchBase;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->this$0:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iput p2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$durationMs:F

    iput-wide p3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$startTime:J

    iput p5, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$oldScale:F

    iput p6, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$incrementPerMs:F

    iput p7, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$centerX:F

    iput p8, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$centerY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 331
    .local v2, "now":J
    iget v4, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$durationMs:F

    iget-wide v6, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$startTime:J

    sub-long v6, v2, v6

    long-to-float v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 332
    .local v0, "currentMs":F
    iget v4, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$oldScale:F

    iget v5, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$incrementPerMs:F

    mul-float/2addr v5, v0

    add-float v1, v4, v5

    .line 333
    .local v1, "target":F
    iget-object v4, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->this$0:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iget v5, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$centerX:F

    iget v6, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$centerY:F

    invoke-virtual {v4, v1, v5, v6}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(FFF)V

    .line 335
    iget v4, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->val$durationMs:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 336
    iget-object v4, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;->this$0:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iget-object v4, v4, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    :cond_0
    return-void
.end method
