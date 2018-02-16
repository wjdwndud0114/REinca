.class Lcom/soundcloud/android/crop/CropImageActivity$1;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soundcloud/android/crop/CropImageActivity;->setupViews()V
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
    .line 97
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity$1;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 102
    return-void
.end method
