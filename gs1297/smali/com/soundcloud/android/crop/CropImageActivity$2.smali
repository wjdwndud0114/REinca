.class Lcom/soundcloud/android/crop/CropImageActivity$2;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 105
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity$2;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$2;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(I)V

    .line 108
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$2;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    .line 109
    return-void
.end method
