.class Lcom/soundcloud/android/crop/CropImageActivity$6;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soundcloud/android/crop/CropImageActivity;->saveOutput(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soundcloud/android/crop/CropImageActivity;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/soundcloud/android/crop/CropImageActivity;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity$6;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    iput-object p2, p0, Lcom/soundcloud/android/crop/CropImageActivity$6;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$6;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # getter for: Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;
    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->clear()V

    .line 405
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$6;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 406
    return-void
.end method
