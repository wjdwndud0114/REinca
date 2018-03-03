.class public Lcom/igaworks/adbrix/model/ReEngagement;
.super Ljava/lang/Object;
.source "ReEngagement.java"


# instance fields
.field private DailyPlay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/DailyPlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/DailyPlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "dailyPlay":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/DailyPlay;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ReEngagement;->DailyPlay:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public getDailyPlay()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/DailyPlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lcom/igaworks/adbrix/model/ReEngagement;->DailyPlay:Ljava/util/List;

    return-object v0
.end method

.method public setDailyPlay(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/DailyPlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "dailyPlay":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/DailyPlay;>;"
    iput-object p1, p0, Lcom/igaworks/adbrix/model/ReEngagement;->DailyPlay:Ljava/util/List;

    .line 12
    return-void
.end method
