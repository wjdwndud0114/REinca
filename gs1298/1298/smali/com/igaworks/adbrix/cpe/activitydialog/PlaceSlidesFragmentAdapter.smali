.class public Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "PlaceSlidesFragmentAdapter.java"

# interfaces
.implements Lcom/igaworks/adbrix/cpe/common/IconPagerAdapter;


# instance fields
.field private campaignKey:I

.field private imgUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFullScreen:Z

.field private mCount:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;IZ)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "campaignKey"    # I
    .param p4, "isFullScreen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "imgUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;->isFullScreen:Z

    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;->mCount:I

    .line 21
    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;->imgUrls:Ljava/util/List;

    .line 22
    iput p3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;->campaignKey:I

    .line 23
    iput-boolean p4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;->isFullScreen:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;->imgUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;->campaignKey:I

    iget-boolean v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;->isFullScreen:Z

    invoke-static {v0, v1, p1, v2}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;->newInstance(Ljava/lang/String;IIZ)Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlideFragment;

    move-result-object v0

    return-object v0
.end method

.method public setCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 38
    if-lez p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 39
    iput p1, p0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;->mCount:I

    .line 40
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceSlidesFragmentAdapter;->notifyDataSetChanged()V

    .line 43
    :cond_0
    return-void
.end method
