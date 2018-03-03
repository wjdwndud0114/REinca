.class Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CirclePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 542
    new-instance v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState$1;

    invoke-direct {v0}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState$1;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 531
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;->currentPage:I

    .line 533
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$1;

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 527
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 528
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 537
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 538
    iget v0, p0, Lcom/igaworks/adbrix/cpe/common/CirclePageIndicator$SavedState;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    return-void
.end method
