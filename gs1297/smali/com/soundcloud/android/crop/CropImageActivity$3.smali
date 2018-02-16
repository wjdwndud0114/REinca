.class Lcom/soundcloud/android/crop/CropImageActivity$3;
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
    .line 112
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity$3;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$3;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    # invokes: Lcom/soundcloud/android/crop/CropImageActivity;->onSaveClicked()V
    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$000(Lcom/soundcloud/android/crop/CropImageActivity;)V

    .line 115
    return-void
.end method
