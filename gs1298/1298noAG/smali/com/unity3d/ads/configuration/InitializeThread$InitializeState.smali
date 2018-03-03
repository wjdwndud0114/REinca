.class abstract Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.super Ljava/lang/Object;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "InitializeState"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/configuration/InitializeThread$1;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.end method
