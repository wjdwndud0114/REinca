.class public Lcom/igaworks/adbrix/model/PromotionDisplay;
.super Ljava/lang/Object;
.source "PromotionDisplay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private ClickUrl:Ljava/lang/String;

.field private Icon:Lcom/igaworks/adbrix/model/IconModel;

.field private IsMarketUrl:Z

.field private Slides:Lcom/igaworks/adbrix/model/SlideModel;

.field private StepReward:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/StepRewardModel;",
            ">;"
        }
    .end annotation
.end field

.field private Title:Ljava/lang/String;

.field private Type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/igaworks/adbrix/model/PromotionDisplay$1;

    invoke-direct {v0}, Lcom/igaworks/adbrix/model/PromotionDisplay$1;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/model/PromotionDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Title:Ljava/lang/String;

    .line 91
    const-class v0, Lcom/igaworks/adbrix/model/IconModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adbrix/model/IconModel;

    iput-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Icon:Lcom/igaworks/adbrix/model/IconModel;

    .line 92
    const-class v0, Lcom/igaworks/adbrix/model/SlideModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adbrix/model/SlideModel;

    iput-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Slides:Lcom/igaworks/adbrix/model/SlideModel;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Type:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->ClickUrl:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->IsMarketUrl:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->StepReward:Ljava/util/List;

    .line 97
    iget-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->StepReward:Ljava/util/List;

    sget-object v1, Lcom/igaworks/adbrix/model/StepRewardModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/igaworks/adbrix/model/IconModel;Lcom/igaworks/adbrix/model/SlideModel;ILjava/lang/String;ZLjava/util/List;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/igaworks/adbrix/model/IconModel;
    .param p3, "slide"    # Lcom/igaworks/adbrix/model/SlideModel;
    .param p4, "type"    # I
    .param p5, "clickUrl"    # Ljava/lang/String;
    .param p6, "IsMarketUrl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/igaworks/adbrix/model/IconModel;",
            "Lcom/igaworks/adbrix/model/SlideModel;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/StepRewardModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p7, "stepReward":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/StepRewardModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Title:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Icon:Lcom/igaworks/adbrix/model/IconModel;

    .line 26
    iput-object p3, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Slides:Lcom/igaworks/adbrix/model/SlideModel;

    .line 27
    iput p4, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Type:I

    .line 28
    iput-object p5, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->ClickUrl:Ljava/lang/String;

    .line 29
    iput-boolean p6, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->IsMarketUrl:Z

    .line 30
    iput-object p7, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->StepReward:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->ClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lcom/igaworks/adbrix/model/IconModel;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Icon:Lcom/igaworks/adbrix/model/IconModel;

    return-object v0
.end method

.method public getSlide()Lcom/igaworks/adbrix/model/SlideModel;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Slides:Lcom/igaworks/adbrix/model/SlideModel;

    return-object v0
.end method

.method public getStepReward()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/StepRewardModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->StepReward:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Type:I

    return v0
.end method

.method public isIsMarketUrl()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->IsMarketUrl:Z

    return v0
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickUrl"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->ClickUrl:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setIcon(Lcom/igaworks/adbrix/model/IconModel;)V
    .locals 0
    .param p1, "icon"    # Lcom/igaworks/adbrix/model/IconModel;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Icon:Lcom/igaworks/adbrix/model/IconModel;

    .line 47
    return-void
.end method

.method public setIsMarketUrl(Z)V
    .locals 0
    .param p1, "isMarketUrl"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->IsMarketUrl:Z

    .line 87
    return-void
.end method

.method public setSlide(Lcom/igaworks/adbrix/model/SlideModel;)V
    .locals 0
    .param p1, "slide"    # Lcom/igaworks/adbrix/model/SlideModel;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Slides:Lcom/igaworks/adbrix/model/SlideModel;

    .line 55
    return-void
.end method

.method public setStepReward(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/StepRewardModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "stepReward":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/StepRewardModel;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->StepReward:Ljava/util/List;

    .line 79
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Title:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Type:I

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Icon:Lcom/igaworks/adbrix/model/IconModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 109
    iget-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Slides:Lcom/igaworks/adbrix/model/SlideModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 110
    iget v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->Type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->ClickUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->IsMarketUrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/igaworks/adbrix/model/PromotionDisplay;->StepReward:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 114
    return-void
.end method
