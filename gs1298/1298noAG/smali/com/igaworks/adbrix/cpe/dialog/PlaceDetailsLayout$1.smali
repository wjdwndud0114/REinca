.class Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout$1;
.super Ljava/lang/Object;
.source "PlaceDetailsLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout$1;->this$0:Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 103
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 99
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 94
    return-void
.end method
