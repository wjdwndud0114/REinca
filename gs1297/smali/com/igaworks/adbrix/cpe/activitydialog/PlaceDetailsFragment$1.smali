.class Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment$1;
.super Ljava/lang/Object;
.source "PlaceDetailsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment$1;->this$0:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 118
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 114
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 109
    return-void
.end method
