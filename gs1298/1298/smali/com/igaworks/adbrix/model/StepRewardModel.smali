.class public Lcom/igaworks/adbrix/model/StepRewardModel;
.super Ljava/lang/Object;
.source "StepRewardModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private ConversionKey:I

.field private Name:Ljava/lang/String;

.field private Reward:I

.field private isComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/igaworks/adbrix/model/StepRewardModel$1;

    invoke-direct {v0}, Lcom/igaworks/adbrix/model/StepRewardModel$1;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/model/StepRewardModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->isComplete:Z

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "conversionKey"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "reward"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->isComplete:Z

    .line 17
    iput p1, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->ConversionKey:I

    .line 18
    iput-object p2, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->Name:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->Reward:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->isComplete:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->ConversionKey:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->Name:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->Reward:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->isComplete:Z

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getConversionKey()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->ConversionKey:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getReward()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->Reward:I

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->isComplete:Z

    return v0
.end method

.method public setComplete(Z)V
    .locals 0
    .param p1, "isComplete"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->isComplete:Z

    .line 52
    return-void
.end method

.method public setConversionKey(I)V
    .locals 0
    .param p1, "conversionKey"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->ConversionKey:I

    .line 28
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->Name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setReward(I)V
    .locals 0
    .param p1, "reward"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->Reward:I

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 70
    iget v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->ConversionKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->Reward:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/igaworks/adbrix/model/StepRewardModel;->isComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
