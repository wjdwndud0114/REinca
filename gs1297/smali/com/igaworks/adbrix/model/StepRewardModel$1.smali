.class final Lcom/igaworks/adbrix/model/StepRewardModel$1;
.super Ljava/lang/Object;
.source "StepRewardModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adbrix/model/StepRewardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/igaworks/adbrix/model/StepRewardModel;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 79
    new-instance v0, Lcom/igaworks/adbrix/model/StepRewardModel;

    invoke-direct {v0, p1}, Lcom/igaworks/adbrix/model/StepRewardModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/model/StepRewardModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/igaworks/adbrix/model/StepRewardModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/igaworks/adbrix/model/StepRewardModel;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 83
    new-array v0, p1, [Lcom/igaworks/adbrix/model/StepRewardModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/model/StepRewardModel$1;->newArray(I)[Lcom/igaworks/adbrix/model/StepRewardModel;

    move-result-object v0

    return-object v0
.end method
