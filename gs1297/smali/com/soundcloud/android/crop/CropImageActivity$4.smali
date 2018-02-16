.class Lcom/soundcloud/android/crop/CropImageActivity$4;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soundcloud/android/crop/CropImageActivity;->startCrop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soundcloud/android/crop/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/soundcloud/android/crop/CropImageActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity$4;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 197
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 198
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity$4;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/soundcloud/android/crop/CropImageActivity;->access$200(Lcom/soundcloud/android/crop/CropImageActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/soundcloud/android/crop/CropImageActivity$4$1;

    invoke-direct {v3, p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity$4$1;-><init>(Lcom/soundcloud/android/crop/CropImageActivity$4;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    new-instance v2, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity$4;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/CropImageActivity$1;)V

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->crop()V

    .line 212
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
