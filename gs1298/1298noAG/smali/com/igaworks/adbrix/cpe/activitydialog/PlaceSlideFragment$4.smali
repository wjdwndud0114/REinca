.class Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$4;
.super Ljava/lang/Object;
.source "PlaceSlideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$4;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    :try_start_0
    sget-object v1, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->slider:Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;

    if-eqz v1, :cond_0

    .line 144
    sget-object v1, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->slider:Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
