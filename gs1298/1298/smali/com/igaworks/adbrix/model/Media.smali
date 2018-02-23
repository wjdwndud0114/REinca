.class public Lcom/igaworks/adbrix/model/Media;
.super Ljava/lang/Object;
.source "Media.java"


# instance fields
.field private Language:Lcom/igaworks/adbrix/model/Language;

.field private RewardIcon:Ljava/lang/String;

.field private RewardName:Ljava/lang/String;

.field private Theme:Lcom/igaworks/adbrix/model/Theme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/igaworks/adbrix/model/Theme;Lcom/igaworks/adbrix/model/Language;)V
    .locals 0
    .param p1, "rewardName"    # Ljava/lang/String;
    .param p2, "rewardIcon"    # Ljava/lang/String;
    .param p3, "theme"    # Lcom/igaworks/adbrix/model/Theme;
    .param p4, "language"    # Lcom/igaworks/adbrix/model/Language;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Media;->RewardName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/igaworks/adbrix/model/Media;->RewardIcon:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/igaworks/adbrix/model/Media;->Theme:Lcom/igaworks/adbrix/model/Theme;

    .line 19
    iput-object p4, p0, Lcom/igaworks/adbrix/model/Media;->Language:Lcom/igaworks/adbrix/model/Language;

    .line 20
    return-void
.end method


# virtual methods
.method public getLanguage()Lcom/igaworks/adbrix/model/Language;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Media;->Language:Lcom/igaworks/adbrix/model/Language;

    return-object v0
.end method

.method public getRewardIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Media;->RewardIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Media;->RewardName:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()Lcom/igaworks/adbrix/model/Theme;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/igaworks/adbrix/model/Media;->Theme:Lcom/igaworks/adbrix/model/Theme;

    return-object v0
.end method

.method public setLanguage(Lcom/igaworks/adbrix/model/Language;)V
    .locals 0
    .param p1, "language"    # Lcom/igaworks/adbrix/model/Language;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Media;->Language:Lcom/igaworks/adbrix/model/Language;

    .line 52
    return-void
.end method

.method public setRewardIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardIcon"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Media;->RewardIcon:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setRewardName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Media;->RewardName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTheme(Lcom/igaworks/adbrix/model/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/igaworks/adbrix/model/Theme;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/igaworks/adbrix/model/Media;->Theme:Lcom/igaworks/adbrix/model/Theme;

    .line 44
    return-void
.end method
