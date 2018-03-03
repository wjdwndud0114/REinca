.class Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$3;
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
    .line 100
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter$3;->this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceSlidesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    sget-object v0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->slider:Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->slider:Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->dismiss()V

    .line 107
    :cond_0
    return-void
.end method
