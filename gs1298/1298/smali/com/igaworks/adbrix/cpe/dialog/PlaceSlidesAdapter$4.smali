.class Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$4;
.super Ljava/lang/Object;
.source "PlaceSlidesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$4;->this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    new-instance v0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$4;->this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    # getter for: Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->access$100(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$4;->this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    # getter for: Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->access$100(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$4;->this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    # getter for: Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->campaignKey:I
    invoke-static {v3}, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;->access$200(Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;-><init>(Landroid/content/Context;Landroid/app/Activity;II)V

    .line 122
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 124
    return-void
.end method
