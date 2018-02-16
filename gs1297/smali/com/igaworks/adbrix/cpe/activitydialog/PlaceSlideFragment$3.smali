.class Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$3;
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
    .line 123
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "campaignKey"

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->campaignKey:I
    invoke-static {v3}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->access$100(Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v2, "position"

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    # getter for: Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->position:I
    invoke-static {v3}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->access$200(Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment$3;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    invoke-virtual {v2, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
