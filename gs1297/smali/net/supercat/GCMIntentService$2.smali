.class Lnet/supercat/GCMIntentService$2;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/GCMIntentService;->showNotification(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/GCMIntentService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$icon:I

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/supercat/GCMIntentService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/GCMIntentService;

    .prologue
    .line 128
    iput-object p1, p0, Lnet/supercat/GCMIntentService$2;->this$0:Lnet/supercat/GCMIntentService;

    iput-object p2, p0, Lnet/supercat/GCMIntentService$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnet/supercat/GCMIntentService$2;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lnet/supercat/GCMIntentService$2;->val$message:Ljava/lang/String;

    iput p5, p0, Lnet/supercat/GCMIntentService$2;->val$icon:I

    iput-object p6, p0, Lnet/supercat/GCMIntentService$2;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 133
    iget-object v0, p0, Lnet/supercat/GCMIntentService$2;->this$0:Lnet/supercat/GCMIntentService;

    iget-object v1, p0, Lnet/supercat/GCMIntentService$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lnet/supercat/GCMIntentService$2;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lnet/supercat/GCMIntentService$2;->val$message:Ljava/lang/String;

    iget v4, p0, Lnet/supercat/GCMIntentService$2;->val$icon:I

    iget-object v6, p0, Lnet/supercat/GCMIntentService$2;->val$pendingIntent:Landroid/app/PendingIntent;

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lnet/supercat/GCMIntentService;->notificationWithBigPicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/app/PendingIntent;)V

    .line 134
    return-void
.end method
